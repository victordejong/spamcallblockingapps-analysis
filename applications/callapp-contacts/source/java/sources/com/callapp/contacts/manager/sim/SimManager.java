package com.callapp.contacts.manager.sim;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.provider.CallLog;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.ReflectionUtils;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.explorestack.iab.vast.VastError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager.class */
public class SimManager implements ManagedLifecycle {

    /* renamed from: d */
    private static final String[] f26679d = {"SLOT_ID", "SubscriberId", "Subscription", "com.android.phone.DialingMode", "com.android.phone.extra.slot", "linkID", Constants.EXTRA_PHONE_NUMBER, "phone_type", "simId", "simNum", "simSlot", "sim_subscription", "simnum", "slot", "slotId", "subId", "sub_id", "subscriber_id", "subscription", "subscription_id", "SubscriptionId"};

    /* renamed from: e */
    private DualSimSubscription f26683e;

    /* renamed from: i */
    private SubscriptionManager f26687i;

    /* renamed from: j */
    private SubscriptionManager.OnSubscriptionsChangedListener f26688j;

    /* renamed from: k */
    private HandlerThread f26689k;

    /* renamed from: l */
    private Handler f26690l;

    /* renamed from: m */
    private GetSimStateCommand f26691m;

    /* renamed from: n */
    private Task f26692n;

    /* renamed from: p */
    private List<PhoneAccount> f26694p;

    /* renamed from: a */
    private DualSim f26680a = null;

    /* renamed from: b */
    private Boolean f26681b = null;

    /* renamed from: c */
    private boolean f26682c = false;

    /* renamed from: f */
    private final Map<Phone, SimId> f26684f = new HashMap();

    /* renamed from: g */
    private final Map<String, SimId> f26685g = new HashMap();

    /* renamed from: h */
    private final Map<String, Integer> f26686h = new HashMap();

    /* renamed from: o */
    private final Object f26693o = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.manager.sim.SimManager$4 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$4.class */
    public static /* synthetic */ class C75424 {

        /* renamed from: a */
        static final /* synthetic */ int[] f26700a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SimId.values().length];
            f26700a = iArr;
            try {
                iArr[SimId.SIM_1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f26700a[SimId.SIM_2.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f26700a[SimId.ASK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$DualSim.class */
    public static class DualSim {

        /* renamed from: a */
        private final String f26701a;

        /* renamed from: b */
        private final String f26702b;

        /* renamed from: c */
        private final int f26703c;

        /* renamed from: d */
        private final String f26704d;

        /* renamed from: e */
        private final PhoneAccount f26705e;

        /* renamed from: f */
        private final PhoneAccount f26706f;

        public DualSim(PhoneAccount phoneAccount, PhoneAccount phoneAccount2) {
            this.f26705e = phoneAccount;
            this.f26706f = phoneAccount2;
            this.f26703c = 0;
            this.f26704d = null;
            this.f26701a = null;
            this.f26702b = null;
        }

        public DualSim(String str, String str2, int i) {
            this.f26701a = str;
            this.f26702b = str2;
            this.f26703c = i;
            this.f26704d = getSimColumnName();
            this.f26705e = null;
            this.f26706f = null;
        }

        /* renamed from: a */
        private static String m28134a() {
            Cursor cursor;
            Throwable th;
            String str;
            Cursor cursor2;
            Exception e;
            Cursor cursor3;
            PermissionManager.get();
            if (!PermissionManager.m28253a("android.permission.READ_CALL_LOG")) {
                return null;
            }
            try {
                cursor3 = CallAppApplication.get().getApplicationContext().getContentResolver().query(CallLog.Calls.CONTENT_URI, null, null, null, "_id DESC  LIMIT 1");
                cursor2 = cursor3;
                str = null;
                if (cursor3 != null) {
                    cursor = cursor3;
                    try {
                        try {
                            List asList = Arrays.asList(cursor3.getColumnNames());
                            int i = 0;
                            while (true) {
                                cursor2 = cursor3;
                                str = null;
                                if (i >= 7) {
                                    break;
                                }
                                String str2 = new String[]{Constants.EXTRA_SIM_ID, "simid", "sub_id", "subscription_id", "sim_slot", "sim_sn", "subscription"}[i];
                                if (asList.contains(str2)) {
                                    str = str2;
                                    cursor2 = cursor3;
                                    break;
                                }
                                i++;
                            }
                        } catch (Exception e2) {
                            e = e2;
                            cursor = cursor3;
                            CLog.m27609a(SimManager.class, e);
                            str = null;
                            cursor2 = cursor3;
                            IoUtils.m27517a(cursor2);
                            return str;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        IoUtils.m27517a(cursor);
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                cursor3 = null;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
                IoUtils.m27517a(cursor);
                throw th;
            }
            IoUtils.m27517a(cursor2);
            return str;
        }

        private String getSimColumnName() {
            String str = Prefs.f26295bS.get();
            String str2 = str;
            if (StringUtils.m26059a((CharSequence) str)) {
                str2 = m28134a();
                Prefs.f26295bS.set(str2);
            }
            return str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            DualSim dualSim = (DualSim) obj;
            if (this.f26703c != dualSim.f26703c || !Objects.equals(this.f26701a, dualSim.f26701a) || !Objects.equals(this.f26702b, dualSim.f26702b) || !Objects.equals(this.f26704d, dualSim.f26704d) || !Objects.equals(this.f26705e, dualSim.f26705e)) {
                return false;
            }
            return Objects.equals(this.f26706f, dualSim.f26706f);
        }

        public String getOperator1() {
            PhoneAccount phoneAccount;
            return (Build.VERSION.SDK_INT < 23 || (phoneAccount = this.f26705e) == null) ? this.f26701a : phoneAccount.getLabel().toString();
        }

        public String getOperator2() {
            PhoneAccount phoneAccount;
            return (Build.VERSION.SDK_INT < 23 || (phoneAccount = this.f26706f) == null) ? this.f26702b : phoneAccount.getLabel().toString();
        }

        public int hashCode() {
            String str = this.f26701a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f26702b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f26703c;
            String str3 = this.f26704d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            PhoneAccount phoneAccount = this.f26705e;
            int hashCode4 = phoneAccount != null ? phoneAccount.hashCode() : 0;
            PhoneAccount phoneAccount2 = this.f26706f;
            if (phoneAccount2 != null) {
                i = phoneAccount2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            return "DualSim{operator1='" + this.f26701a + "', operator2='" + this.f26702b + "', minDefaultSlotId=" + this.f26703c + ", simManagerColumnName='" + this.f26704d + "', account1=" + this.f26705e + ", account2=" + this.f26706f + '}';
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$DualSimSubscription.class */
    public class DualSimSubscription {

        /* renamed from: b */
        private final List<SubscriptionInfo> f26708b;

        /* renamed from: c */
        private final boolean f26709c;

        /* renamed from: d */
        private final long f26710d;

        /* renamed from: e */
        private final long f26711e;

        /* renamed from: f */
        private final int f26712f;

        /* renamed from: g */
        private final int f26713g;

        public DualSimSubscription(List<SubscriptionInfo> list, boolean z, long j, long j2, int i, int i2) {
            SimManager.this = r5;
            this.f26708b = list;
            this.f26709c = z;
            this.f26710d = j;
            this.f26711e = j2;
            this.f26712f = i;
            this.f26713g = i2;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder.class */
    public class DualSimSubscriptionBuilder {

        /* renamed from: a */
        List<SubscriptionInfo> f26714a;

        /* renamed from: b */
        boolean f26715b;

        /* renamed from: c */
        long f26716c;

        /* renamed from: d */
        long f26717d;

        /* renamed from: e */
        int f26718e;

        /* renamed from: f */
        int f26719f;

        private DualSimSubscriptionBuilder() {
            SimManager.this = r4;
        }

        /* renamed from: a */
        public final DualSimSubscription m28121a() {
            return new DualSimSubscription(this.f26714a, this.f26715b, this.f26716c, this.f26717d, this.f26718e, this.f26719f);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$GeminiMethodNotFoundException.class */
    public static class GeminiMethodNotFoundException extends Exception {
        public GeminiMethodNotFoundException(String str) {
            super(str);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$SimId.class */
    public enum SimId {
        ASK(-1),
        SIM_1(0),
        SIM_2(1);
        
        public final int simId;

        SimId(int i) {
            this.simId = i;
        }

        public static SimId getSimId(Integer num) {
            int intValue = num.intValue();
            return intValue != 0 ? intValue != 1 ? ASK : SIM_2 : SIM_1;
        }

        public final int getSimId() {
            return this.simId;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ int m28153a(SubscriptionInfo subscriptionInfo, SubscriptionInfo subscriptionInfo2) {
        return subscriptionInfo.getSimSlotIndex() - subscriptionInfo2.getSimSlotIndex();
    }

    /* renamed from: a */
    private DualSim m28152a(DualSim dualSim) {
        if (dualSim != null) {
            this.f26682c = m28142b(dualSim);
        }
        if (this.f26682c) {
            return dualSim;
        }
        return null;
    }

    /* renamed from: a */
    private static DualSim m28144a(String str, String str2, String str3, String[] strArr) {
        DualSim dualSim;
        if (!StringUtils.m26045b((CharSequence) str) || !StringUtils.m26045b((CharSequence) str2) || !StringUtils.m26059a((CharSequence) str3)) {
            if (!StringUtils.m26045b((CharSequence) str) || !StringUtils.m26045b((CharSequence) str2) || !StringUtils.m26045b((CharSequence) str3)) {
                dualSim = null;
            } else {
                String str4 = Prefs.f26296bT.get();
                for (int i = 0; i < 6; i++) {
                    String str5 = strArr[i];
                    try {
                        String m28146a = m28146a(str4, str5, 1, Integer.TYPE);
                        String m28146a2 = m28146a(str4, str5, 2, Integer.TYPE);
                        if (StringUtils.m26045b((CharSequence) m28146a) && StringUtils.m26045b((CharSequence) m28146a2) && !StringUtils.m26042b(m28146a, m28146a2)) {
                            return new DualSim(str2, str3, 1);
                        }
                    } catch (GeminiMethodNotFoundException e) {
                    }
                    try {
                        String m28146a3 = m28146a(str4, str5, 1, Long.TYPE);
                        String m28146a4 = m28146a(str4, str5, 2, Long.TYPE);
                        if (StringUtils.m26045b((CharSequence) m28146a3) && StringUtils.m26045b((CharSequence) m28146a4) && !StringUtils.m26042b(m28146a3, m28146a4)) {
                            return new DualSim(str2, str3, 1);
                        }
                    } catch (GeminiMethodNotFoundException e2) {
                    }
                }
                dualSim = new DualSim(str, str2, 0);
            }
            return dualSim;
        }
        return new DualSim(str, str2, 0);
    }

    /* renamed from: a */
    public static SimId m28161a(int i) {
        if (i != 0) {
            if (i == 1) {
                return SimId.SIM_1;
            }
            if (i == 2) {
                return SimId.SIM_2;
            }
            return null;
        }
        return SimId.ASK;
    }

    /* renamed from: a */
    private static String m28146a(String str, String str2, int i, Class<?> cls) throws GeminiMethodNotFoundException {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cls);
            Object m27417a = ReflectionUtils.m27417a(str, str2, (List<Class<?>>) arrayList, (List<Object>) Arrays.asList(Integer.valueOf(i)));
            return m27417a != null ? m27417a.toString() : null;
        } catch (Exception e) {
            throw new GeminiMethodNotFoundException(str2);
        }
    }

    /* renamed from: a */
    public static void m28159a(Context context, String str, SimId simId, AdapterText.AdapterEvents adapterEvents) {
        if (!get().isDualSimAvailable()) {
            adapterEvents.onRowClicked(SimId.ASK.getSimId());
        } else if (simId != null && simId != SimId.ASK) {
            adapterEvents.onRowClicked(simId.getSimId());
        } else if (Prefs.f26294bR.get() != SimId.ASK) {
            adapterEvents.onRowClicked(((SimId) Prefs.f26294bR.get()).getSimId());
        } else {
            m28158a(context, str, adapterEvents);
        }
    }

    /* renamed from: a */
    public static void m28158a(Context context, String str, final AdapterText.AdapterEvents adapterEvents) {
        DualSim dualSimOperators = Singletons.get().getSimManager().getDualSimOperators();
        if (dualSimOperators == null) {
            adapterEvents.onRowClicked(SimId.ASK.getSimId());
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231888, dualSimOperators.getOperator1(), SimId.SIM_1.getSimId()));
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231890, dualSimOperators.getOperator2(), SimId.SIM_2.getSimId()));
        final DialogList dialogList = new DialogList(Activities.m27697a(2131886759, StringUtils.m26020j(str)));
        dialogList.setDialogType(Popup.DialogType.withInset);
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(context, 2131558570, arrayList);
        adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.sim.SimManager.2
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public final void onRowClicked(int i) {
                adapterEvents.onRowClicked(i);
                dialogList.dismiss();
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().m28209a(context, dialogList);
    }

    /* renamed from: a */
    private static void m28157a(Intent intent, int i) {
        for (String str : f26679d) {
            intent.putExtra(str, i);
        }
    }

    /* renamed from: a */
    private boolean m28160a(int i, SubscriptionInfo subscriptionInfo) {
        if (i != 5) {
            return false;
        }
        boolean z = true;
        if (Payload.SOURCE_HUAWEI.equalsIgnoreCase(Build.MANUFACTURER)) {
            if (this.f26681b == null) {
                this.f26681b = Boolean.valueOf(ReflectionUtils.m27420a((Object) subscriptionInfo, "getStatus", new Class[0]));
            }
            z = true;
            if (this.f26681b.booleanValue()) {
                try {
                    z = false;
                    if (((Integer) ReflectionUtils.m27415b(subscriptionInfo, "getStatus")).intValue() == 1) {
                        z = true;
                    }
                } catch (Exception e) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m28154a(SubscriptionInfo subscriptionInfo, PhoneAccountHandle phoneAccountHandle, Intent intent) {
        int subscriptionId = subscriptionInfo.getSubscriptionId();
        String valueOf = String.valueOf(subscriptionInfo.getIccId());
        String id = phoneAccountHandle.getId();
        if (!StringUtils.m26045b((CharSequence) id) || !m28145a(String.valueOf(subscriptionId), valueOf, id)) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
        return true;
    }

    /* renamed from: a */
    private static boolean m28147a(Number number, PhoneAccountHandle phoneAccountHandle, Intent intent) {
        Object m27423a = ReflectionUtils.m27423a(phoneAccountHandle, "mId");
        if (m27423a instanceof String) {
            String str = (String) m27423a;
            if (!StringUtils.m26045b((CharSequence) str)) {
                return false;
            }
            if (number.intValue() != Integer.parseInt(str)) {
                return false;
            }
            intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    private static boolean m28145a(String str, String str2, String str3) {
        if (!StringUtils.m26044b((Object) str3, (Object) str)) {
            if (StringUtils.m26028f(str3) == StringUtils.m26028f(str2) && StringUtils.m26044b((Object) str3, (Object) str2)) {
                return true;
            }
            if (StringUtils.m26028f(str3) <= 3) {
                return false;
            }
            return StringUtils.m26037c(str3, str2) || StringUtils.m26037c(str2, str3);
        }
        return true;
    }

    /* renamed from: b */
    public static int m28141b(SimId simId) {
        if (simId == SimId.SIM_1) {
            return 2131231889;
        }
        return simId == SimId.SIM_2 ? 2131231891 : 2131231892;
    }

    /* renamed from: b */
    public static SimId m28143b() {
        int i = C75424.f26700a[((SimId) Prefs.f26294bR.get()).ordinal()];
        if (i == 1) {
            Prefs.f26294bR.set(SimId.SIM_2);
            return SimId.SIM_2;
        } else if (i != 2) {
            Prefs.f26294bR.set(SimId.SIM_1);
            return SimId.SIM_1;
        } else {
            Prefs.f26294bR.set(SimId.ASK);
            return SimId.ASK;
        }
    }

    /* renamed from: b */
    private boolean m28142b(DualSim dualSim) {
        boolean z;
        boolean z2;
        if (dualSim.f26705e == null || dualSim.f26706f == null) {
            if (!StringUtils.m26045b((CharSequence) dualSim.f26701a) || !StringUtils.m26045b((CharSequence) dualSim.f26702b)) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 22) {
                return this.f26683e.f26709c;
            }
            String str = Prefs.f26296bT.get();
            int i = 0;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                z = z3;
                z2 = z4;
                if (i >= 3) {
                    break;
                }
                String str2 = new String[]{"getSimState", "getSimStateGemini", "getIccState"}[i];
                try {
                    z = m28140b(str, str2, 0, Integer.TYPE);
                    z2 = m28140b(str, str2, 1, Integer.TYPE);
                    z3 = z;
                    z4 = z2;
                    if (z) {
                        z3 = z;
                        z4 = z2;
                        if (z2) {
                            break;
                        }
                    }
                } catch (GeminiMethodNotFoundException e) {
                }
                try {
                    z = m28140b(str, str2, 0, Long.TYPE);
                    z2 = m28140b(str, str2, 1, Long.TYPE);
                    z3 = z;
                    z4 = z2;
                    if (z) {
                        z3 = z;
                        z4 = z2;
                        if (z2) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } catch (GeminiMethodNotFoundException e2) {
                }
                i++;
            }
            return z && z2;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (java.lang.Integer.parseInt(r0.toString()) == 5) goto L10;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean m28140b(java.lang.String r8, java.lang.String r9, int r10, java.lang.Class<?> r11) throws com.callapp.contacts.manager.sim.SimManager.GeminiMethodNotFoundException {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Exception -> L44
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: java.lang.Exception -> L44
            r0 = r12
            r1 = r11
            boolean r0 = r0.add(r1)     // Catch: java.lang.Exception -> L44
            r0 = 1
            r13 = r0
            r0 = r8
            r1 = r9
            r2 = r12
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Exception -> L44
            r4 = r3
            r5 = 0
            r6 = r10
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Exception -> L44
            r4[r5] = r6     // Catch: java.lang.Exception -> L44
            java.util.List r3 = java.util.Arrays.asList(r3)     // Catch: java.lang.Exception -> L44
            java.lang.Object r0 = com.callapp.contacts.util.ReflectionUtils.m27417a(r0, r1, r2, r3)     // Catch: java.lang.Exception -> L44
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L3e
            r0 = r8
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L44
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Exception -> L44
            r10 = r0
            r0 = r10
            r1 = 5
            if (r0 != r1) goto L3e
            goto L41
        L3e:
            r0 = 0
            r13 = r0
        L41:
            r0 = r13
            return r0
        L44:
            r8 = move-exception
            com.callapp.contacts.manager.sim.SimManager$GeminiMethodNotFoundException r0 = new com.callapp.contacts.manager.sim.SimManager$GeminiMethodNotFoundException
            r1 = r0
            r2 = r9
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.sim.SimManager.m28140b(java.lang.String, java.lang.String, int, java.lang.Class):boolean");
    }

    /* renamed from: c */
    public static int m28138c(SimId simId) {
        if (simId == SimId.SIM_1) {
            return 2131231888;
        }
        return simId == SimId.SIM_2 ? 2131231890 : 2131231892;
    }

    /* renamed from: c */
    private DualSim m28139c() {
        return m28152a(getSimNamesIfDualSim());
    }

    /* renamed from: d */
    private DualSim m28137d() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String[] strArr = {"getSimSerialNumber", "getSimSerialNumberGemini", "getDeviceId", "getDeviceIdDs", "getDeviceIdGemini", "getDeviceIdExt"};
        ArrayList arrayList = new ArrayList(Arrays.asList("getSimOperatorName", "getNetworkOperatorName", "getSimOperatorNameGemini", "getSimOperatorNameForSubscription"));
        arrayList.addAll(Arrays.asList(strArr));
        String str7 = Prefs.f26296bT.get();
        Iterator it2 = arrayList.iterator();
        String str8 = null;
        String str9 = null;
        String str10 = null;
        while (true) {
            str = str8;
            str2 = str9;
            str3 = str10;
            if (!it2.hasNext()) {
                break;
            }
            String str11 = (String) it2.next();
            String str12 = str9;
            String str13 = str10;
            try {
                String m28146a = m28146a(str7, str11, 0, Long.TYPE);
                str2 = m28146a(str7, str11, 1, Long.TYPE);
                str3 = m28146a(str7, str11, 2, Long.TYPE);
                str4 = m28146a;
                str5 = str2;
                str6 = str3;
                if (StringUtils.m26045b((CharSequence) m28146a)) {
                    str4 = m28146a;
                    str5 = str2;
                    str6 = str3;
                    if (StringUtils.m26045b((CharSequence) str2)) {
                        str = m28146a;
                        break;
                    }
                }
            } catch (GeminiMethodNotFoundException e) {
                str4 = str8;
                str5 = str12;
                str6 = str13;
            }
            String str14 = str4;
            String str15 = str5;
            String str16 = str6;
            try {
                String m28146a2 = m28146a(str7, str11, 0, Integer.TYPE);
                String m28146a3 = m28146a(str7, str11, 1, Integer.TYPE);
                String m28146a4 = m28146a(str7, str11, 2, Integer.TYPE);
                str8 = m28146a2;
                str9 = m28146a3;
                str10 = m28146a4;
                if (StringUtils.m26045b((CharSequence) m28146a2)) {
                    str8 = m28146a2;
                    str9 = m28146a3;
                    str10 = m28146a4;
                    if (StringUtils.m26045b((CharSequence) m28146a3)) {
                        str = m28146a2;
                        str2 = m28146a3;
                        str3 = m28146a4;
                        break;
                    }
                } else {
                    continue;
                }
            } catch (GeminiMethodNotFoundException e2) {
                str8 = str14;
                str9 = str15;
                str10 = str16;
            }
        }
        return m28144a(str, str2, str3, strArr);
    }

    /* renamed from: e */
    private void m28136e() {
        DualSimSubscriptionBuilder dualSimSubscriptionBuilder = new DualSimSubscriptionBuilder();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 22) {
            if (this.f26691m == null) {
                new GetSimStateCommandFactory();
                this.f26691m = GetSimStateCommandFactory.m28163a(this.f26687i);
            }
            try {
                List<SubscriptionInfo> activeSubscriptionInfoList = this.f26687i.getActiveSubscriptionInfoList();
                if (CollectionUtils.m26068b(activeSubscriptionInfoList)) {
                    Collections.sort(activeSubscriptionInfoList, _$$Lambda$SimManager$rBzC1EbUSi1U_ze1p_ZdDOimezw.INSTANCE);
                    for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                        if (subscriptionInfo != null && m28160a(this.f26691m.mo28164a(this.f26687i, subscriptionInfo), subscriptionInfo)) {
                            arrayList.add(subscriptionInfo);
                        }
                    }
                }
                if (arrayList.size() > 1) {
                    z = true;
                }
                dualSimSubscriptionBuilder.f26715b = z;
                dualSimSubscriptionBuilder.f26714a = arrayList;
            } catch (Exception e) {
                CLog.m27609a(SimManager.class, e);
            }
        } else if (Build.VERSION.SDK_INT >= 21 && ReflectionUtils.m27418a("android.telephony.SubscriptionManager")) {
            try {
                Object m27415b = ReflectionUtils.m27415b((SubscriptionManager) ReflectionUtils.m27426a(Class.forName("android.telephony.SubscriptionManager")), "getActiveSubInfoList");
                if (m27415b != null && ((List) m27415b).size() > 1) {
                    dualSimSubscriptionBuilder.f26715b = true;
                    dualSimSubscriptionBuilder.f26714a = (List) m27415b;
                    Object obj = dualSimSubscriptionBuilder.f26714a.get(0);
                    Object obj2 = dualSimSubscriptionBuilder.f26714a.get(1);
                    dualSimSubscriptionBuilder.f26716c = ((Long) ReflectionUtils.m27423a(obj, "subId")).intValue();
                    dualSimSubscriptionBuilder.f26718e = ((Integer) ReflectionUtils.m27423a(obj, "slotId")).intValue();
                    dualSimSubscriptionBuilder.f26717d = ((Long) ReflectionUtils.m27423a(obj2, "subId")).intValue();
                    dualSimSubscriptionBuilder.f26719f = ((Integer) ReflectionUtils.m27423a(obj2, "slotId")).intValue();
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
                CLog.m27609a(SimManager.class, e2);
            }
        }
        this.f26683e = dualSimSubscriptionBuilder.m28121a();
    }

    /* renamed from: f */
    public /* synthetic */ void m28135f() {
        SubscriptionManager.OnSubscriptionsChangedListener onSubscriptionsChangedListener = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.callapp.contacts.manager.sim.SimManager.1
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public void onSubscriptionsChanged() {
                CLog.m27611a(SimManager.class, "onSubscriptionsChanged()");
                try {
                    if (SimManager.this.f26692n != null) {
                        SimManager.this.f26692n.cancel();
                    }
                } catch (Exception e) {
                }
                SimManager.this.f26692n = new Task() { // from class: com.callapp.contacts.manager.sim.SimManager.1.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        SimManager.this.m28162a();
                        SimManager.this.f26692n = null;
                    }
                }.schedule(VastError.ERROR_CODE_GENERAL_WRAPPER);
            }
        };
        this.f26688j = onSubscriptionsChangedListener;
        this.f26687i.addOnSubscriptionsChangedListener(onSubscriptionsChangedListener);
    }

    public static SimManager get() {
        return Singletons.get().getSimManager();
    }

    private DualSim getPhoneAccounts() {
        try {
            synchronized (this.f26693o) {
                TelecomManager telecomManager = (TelecomManager) CallAppApplication.get().getSystemService("telecom");
                this.f26694p = new ArrayList();
                Iterator<PhoneAccountHandle> it2 = telecomManager.getCallCapablePhoneAccounts().iterator();
                while (true) {
                    boolean z = false;
                    if (!it2.hasNext()) {
                        break;
                    }
                    PhoneAccount phoneAccount = telecomManager.getPhoneAccount(it2.next());
                    if (phoneAccount != null && phoneAccount.isEnabled()) {
                        if ((phoneAccount.getCapabilities() & 4) != 0) {
                            z = true;
                        }
                        if (z) {
                            this.f26694p.add(phoneAccount);
                        }
                    }
                }
                if (CollectionUtils.m26068b(this.f26694p) && this.f26694p.size() > 1) {
                    Collections.sort(this.f26694p, new Comparator<PhoneAccount>() { // from class: com.callapp.contacts.manager.sim.SimManager.3
                        @Override // java.util.Comparator
                        public /* synthetic */ int compare(PhoneAccount phoneAccount2, PhoneAccount phoneAccount3) {
                            PhoneAccount phoneAccount4 = phoneAccount2;
                            PhoneAccount phoneAccount5 = phoneAccount3;
                            String charSequence = (phoneAccount4 == null || phoneAccount4.getShortDescription() == null) ? "" : phoneAccount4.getShortDescription().toString();
                            String str = "";
                            if (phoneAccount5 != null) {
                                str = "";
                                if (phoneAccount5.getShortDescription() != null) {
                                    str = phoneAccount5.getShortDescription().toString();
                                }
                            }
                            return charSequence.compareTo(str);
                        }
                    });
                    if (this.f26683e.f26709c) {
                        return new DualSim(this.f26694p.get(0), this.f26694p.get(1));
                    }
                }
                return null;
            }
        } catch (Exception e) {
            return null;
        }
    }

    public static int getSimIdAsIndexForDialog() {
        int i = C75424.f26700a[((SimId) Prefs.f26294bR.get()).ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    private DualSim getSimNamesIfDualSim() {
        DualSim phoneAccounts;
        if (Build.VERSION.SDK_INT < 23 || (phoneAccounts = getPhoneAccounts()) == null) {
            if (Build.VERSION.SDK_INT >= 22) {
                return getSimNamesIfDualSimFromSubscriptionInfo();
            }
            if (StringUtils.m26045b((CharSequence) Prefs.f26296bT.get())) {
                return m28137d();
            }
            for (int i = 0; i < 3; i++) {
                String str = new String[]{"com.mediatek.telephony.TelephonyManagerEx", "android.telephony.MSimTelephonyManager", "android.telephony.TelephonyManager"}[i];
                if (ReflectionUtils.m27418a(str)) {
                    Prefs.f26296bT.set(str);
                    DualSim m28137d = m28137d();
                    this.f26680a = m28137d;
                    if (m28137d != null) {
                        return m28137d;
                    }
                }
            }
            Prefs.f26296bT.set(null);
            return null;
        }
        return phoneAccounts;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0051, code lost:
        if (com.callapp.framework.util.StringUtils.m26059a((java.lang.CharSequence) r0.toString().trim()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.callapp.contacts.manager.sim.SimManager.DualSim getSimNamesIfDualSimFromSubscriptionInfo() {
        /*
            r6 = this;
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.f26683e
            boolean r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.m28126b(r0)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto Lb5
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.f26683e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.m28127a(r0)
            boolean r0 = com.callapp.framework.util.CollectionUtils.m26076a(r0)
            if (r0 == 0) goto L1f
            r0 = 0
            return r0
        L1f:
            r0 = 2131888106(0x7f1207ea, float:1.9410838E38)
            java.lang.String r0 = com.callapp.contacts.util.Activities.getString(r0)
            r10 = r0
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.f26683e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.m28127a(r0)
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            android.telephony.SubscriptionInfo r0 = (android.telephony.SubscriptionInfo) r0
            java.lang.CharSequence r0 = r0.getDisplayName()
            r8 = r0
            r0 = r8
            boolean r0 = com.callapp.framework.util.StringUtils.m26059a(r0)
            if (r0 != 0) goto L54
            r0 = r8
            r11 = r0
            r0 = r8
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            boolean r0 = com.callapp.framework.util.StringUtils.m26059a(r0)
            if (r0 == 0) goto L58
        L54:
            r0 = r10
            r11 = r0
        L58:
            r0 = r9
            r8 = r0
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.f26683e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.m28127a(r0)
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L7e
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.f26683e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.m28127a(r0)
            r1 = 1
            java.lang.Object r0 = r0.get(r1)
            android.telephony.SubscriptionInfo r0 = (android.telephony.SubscriptionInfo) r0
            java.lang.CharSequence r0 = r0.getDisplayName()
            r8 = r0
        L7e:
            r0 = r10
            r9 = r0
            r0 = r8
            boolean r0 = com.callapp.framework.util.StringUtils.m26059a(r0)
            if (r0 != 0) goto L9f
            r0 = r8
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            boolean r0 = com.callapp.framework.util.StringUtils.m26059a(r0)
            if (r0 == 0) goto L9d
            r0 = r10
            r9 = r0
            goto L9f
        L9d:
            r0 = r8
            r9 = r0
        L9f:
            com.callapp.contacts.manager.sim.SimManager$DualSim r0 = new com.callapp.contacts.manager.sim.SimManager$DualSim
            r1 = r0
            r2 = r11
            java.lang.String r2 = r2.toString()
            r3 = r9
            java.lang.String r3 = r3.toString()
            r4 = 0
            r1.<init>(r2, r3, r4)
            r8 = r0
        Lb5:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.sim.SimManager.getSimNamesIfDualSimFromSubscriptionInfo():com.callapp.contacts.manager.sim.SimManager$DualSim");
    }

    private SimId getSimSlotIdFromSubscriptionInfo(int i) {
        if (this.f26683e.f26709c) {
            if (this.f26683e.f26708b == null) {
                return SimId.ASK;
            }
            if (Build.VERSION.SDK_INT >= 22) {
                List list = this.f26683e.f26708b;
                if (i == ((SubscriptionInfo) list.get(0)).getSubscriptionId()) {
                    return SimId.SIM_1;
                }
                if (i == ((SubscriptionInfo) list.get(1)).getSubscriptionId()) {
                    return SimId.SIM_2;
                }
            } else {
                long j = i;
                if (j == this.f26683e.f26710d) {
                    return SimId.getSimId(Integer.valueOf(this.f26683e.f26712f));
                }
                if (j == this.f26683e.f26711e) {
                    return SimId.getSimId(Integer.valueOf(this.f26683e.f26713g));
                }
            }
        }
        return SimId.ASK;
    }

    /* renamed from: a */
    public final SimId m28156a(Cursor cursor) {
        int columnIndex;
        SimId[] values;
        if (this.f26680a != null && cursor != null) {
            String str = "";
            String string = Build.VERSION.SDK_INT >= 23 ? cursor.getString(cursor.getColumnIndex("subscription_component_name")) : "";
            if (Build.VERSION.SDK_INT >= 23) {
                str = cursor.getString(cursor.getColumnIndex("subscription_id"));
            }
            if (Build.VERSION.SDK_INT >= 23 && StringUtils.m26045b((CharSequence) str) && StringUtils.m26045b((CharSequence) string)) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(string);
                return unflattenFromString == null ? SimId.ASK : m28155a(new PhoneAccountHandle(unflattenFromString, str));
            }
            if (StringUtils.m26045b((CharSequence) this.f26680a.f26704d) && (columnIndex = cursor.getColumnIndex(this.f26680a.f26704d)) != -1 && this.f26680a.f26703c != -1) {
                int i = cursor.getInt(columnIndex);
                if (Build.VERSION.SDK_INT >= 21) {
                    return getSimSlotIdFromSubscriptionInfo(i);
                }
                int i2 = this.f26680a.f26703c;
                for (SimId simId : SimId.values()) {
                    if (simId.getSimId() == i - i2) {
                        return simId;
                    }
                }
            }
            CLog.m27611a(SimManager.class, "getSimIdColumn: no sim_id column found");
        }
        return SimId.ASK;
    }

    /* renamed from: a */
    public final SimId m28155a(PhoneAccountHandle phoneAccountHandle) {
        String str;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Integer num = this.f26686h.get(phoneAccountHandle.getId());
                Integer num2 = num;
                if (num == null) {
                    num2 = Integer.valueOf(((Integer) ReflectionUtils.m27421a((TelephonyManager) CallAppApplication.get().getSystemService(Constants.EXTRA_PHONE_NUMBER), "getSubIdForPhoneAccount", Collections.singletonList(PhoneAccount.class), Collections.singletonList((PhoneAccount) ReflectionUtils.m27421a((TelecomManager) CallAppApplication.get().getSystemService("telecom"), "getPhoneAccount", Collections.singletonList(PhoneAccountHandle.class), Collections.singletonList(phoneAccountHandle))))).intValue());
                    this.f26686h.put(phoneAccountHandle.getId(), num2);
                }
                str = String.valueOf(num2);
            } catch (Exception e) {
                CLog.m27610a(SimManager.class, "getSimSlotIdFromSubscriptionInfo exception: ", e);
                str = null;
            }
        } else {
            str = phoneAccountHandle.getId();
        }
        if (this.f26685g.containsKey(str)) {
            return this.f26685g.get(str);
        }
        List list = this.f26683e.f26708b;
        SubscriptionInfo subscriptionInfo = (SubscriptionInfo) list.get(0);
        SubscriptionInfo subscriptionInfo2 = (SubscriptionInfo) list.get(1);
        SimId simId = m28145a(String.valueOf(subscriptionInfo.getSubscriptionId()), subscriptionInfo.getIccId(), str) ? SimId.SIM_1 : m28145a(String.valueOf(subscriptionInfo2.getSubscriptionId()), subscriptionInfo2.getIccId(), str) ? SimId.SIM_2 : SimId.ASK;
        this.f26685g.put(str, simId);
        return simId;
    }

    /* renamed from: a */
    public final String m28151a(SimId simId) {
        if (this.f26680a != null) {
            if (simId == SimId.SIM_1) {
                return this.f26680a.getOperator1();
            }
            if (simId != SimId.SIM_2) {
                return null;
            }
            return this.f26680a.getOperator2();
        }
        return null;
    }

    /* renamed from: a */
    public final void m28162a() {
        this.f26682c = false;
        PhoneManager.get().m28220j();
        PhoneManager.m28219k();
        CallLogUtils.m27582a();
        m28136e();
        this.f26685g.clear();
        this.f26686h.clear();
        this.f26680a = m28139c();
        EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.SIM_CHANGED, false);
    }

    /* renamed from: a */
    public final void m28148a(Phone phone, Intent intent, int i) {
        List<PhoneAccountHandle> list;
        boolean z;
        DualSim dualSimOperators;
        if (i < 0) {
            return;
        }
        if (phone != null && !phone.equals(Phone.f29662b)) {
            Singletons.get().getSimManager().getActiveCalls().put(phone, SimId.getSimId(Integer.valueOf(i)));
        }
        if (Build.VERSION.SDK_INT >= 23 && (dualSimOperators = get().getDualSimOperators()) != null) {
            PhoneAccount phoneAccount = i == 0 ? dualSimOperators.f26705e : dualSimOperators.f26706f;
            if (phoneAccount != null && phoneAccount.getAccountHandle() != null) {
                intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccount.getAccountHandle());
                m28157a(intent, i);
                return;
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            TelecomManager telecomManager = (TelecomManager) CallAppApplication.get().getSystemService("telecom");
            if (Build.VERSION.SDK_INT >= 23) {
                list = telecomManager.getCallCapablePhoneAccounts();
            } else {
                try {
                    Method declaredMethod = Class.forName(telecomManager.getClass().getName()).getDeclaredMethod("getCallCapablePhoneAccounts", new Class[0]);
                    declaredMethod.setAccessible(true);
                    list = (List) declaredMethod.invoke(telecomManager, new Object[0]);
                } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                    CLog.m27609a(SimManager.class, e);
                    m28157a(intent, i);
                    return;
                }
            }
            if (list != null && list.size() >= 2 && CollectionUtils.m26068b(this.f26683e.f26708b)) {
                boolean z2 = false;
                int i2 = 0;
                while (!z2 && i2 < this.f26683e.f26708b.size()) {
                    if (Build.VERSION.SDK_INT >= 22) {
                        SubscriptionInfo subscriptionInfo = (SubscriptionInfo) this.f26683e.f26708b.get(i2);
                        z = z2;
                        if (subscriptionInfo != null) {
                            z = z2;
                            if (subscriptionInfo.getSimSlotIndex() == i) {
                                Iterator<PhoneAccountHandle> it2 = list.iterator();
                                while (true) {
                                    z = z2;
                                    if (it2.hasNext()) {
                                        z2 = m28154a(subscriptionInfo, it2.next(), intent);
                                    }
                                }
                            }
                        }
                    } else {
                        z = z2;
                        if (ReflectionUtils.m27418a("android.telephony.SubscriptionManager")) {
                            Object obj = this.f26683e.f26708b.get(i2);
                            z = z2;
                            if (obj != null) {
                                z = z2;
                                if (((Integer) ReflectionUtils.m27423a(obj, "slotId")).intValue() == i) {
                                    Number number = (Number) ReflectionUtils.m27423a(obj, "subId");
                                    z = z2;
                                    if (number != null) {
                                        int i3 = 0;
                                        while (true) {
                                            z = z2;
                                            if (i3 < list.size()) {
                                                z2 |= m28147a(number, list.get(i3), intent);
                                                i3++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i2++;
                    z2 = z;
                }
            }
        }
        m28157a(intent, i);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f26680a = null;
        Handler handler = this.f26690l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.f26689k;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        if (Build.VERSION.SDK_INT >= 22) {
            this.f26687i.removeOnSubscriptionsChangedListener(this.f26688j);
        }
        this.f26683e = null;
    }

    public Map<Phone, SimId> getActiveCalls() {
        return this.f26684f;
    }

    public DualSim getDualSimOperators() {
        if (this.f26682c) {
            return this.f26680a;
        }
        return null;
    }

    public PhoneAccountHandle getPhoneAccountHandle(int i) {
        synchronized (this.f26693o) {
            if (CollectionUtils.m26068b(this.f26694p) && i < this.f26694p.size()) {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                PhoneAccount phoneAccount = this.f26694p.get(i2);
                if (phoneAccount != null) {
                    return phoneAccount.getAccountHandle();
                }
            }
            return null;
        }
    }

    public String getSimIdColumnName() {
        DualSim dualSim = this.f26680a;
        if (dualSim != null) {
            return dualSim.f26704d;
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            if (Build.VERSION.SDK_INT >= 22) {
                this.f26687i = SubscriptionManager.from(CallAppApplication.get());
                HandlerThread handlerThread = new HandlerThread(SimManager.class.toString());
                this.f26689k = handlerThread;
                handlerThread.start();
                AndroidUtils.m27631a(this.f26689k.getLooper());
                this.f26690l = new Handler(this.f26689k.getLooper());
                PermissionManager.get();
                if (PermissionManager.m28253a("android.permission.READ_PHONE_STATE")) {
                    this.f26690l.post(new Runnable() { // from class: com.callapp.contacts.manager.sim._$$Lambda$SimManager$_bNCIAj77ttBInfPn83x7O77Z2k
                        @Override // java.lang.Runnable
                        public final void run() {
                            SimManager.this.m28135f();
                        }
                    });
                }
            }
            m28136e();
            this.f26680a = m28139c();
        }
    }

    public boolean isDualSimAvailable() {
        return getDualSimOperators() != null;
    }
}
