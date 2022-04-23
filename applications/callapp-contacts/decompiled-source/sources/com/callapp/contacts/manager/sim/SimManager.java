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

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f15246d = {"SLOT_ID", "SubscriberId", "Subscription", "com.android.phone.DialingMode", "com.android.phone.extra.slot", "linkID", Constants.EXTRA_PHONE_NUMBER, "phone_type", "simId", "simNum", "simSlot", "sim_subscription", "simnum", "slot", "slotId", "subId", "sub_id", "subscriber_id", "subscription", "subscription_id", "SubscriptionId"};
    private DualSimSubscription e;
    private SubscriptionManager i;
    private SubscriptionManager.OnSubscriptionsChangedListener j;
    private HandlerThread k;
    private Handler l;
    private GetSimStateCommand m;
    private Task n;
    private List<PhoneAccount> p;

    /* renamed from: a  reason: collision with root package name */
    private DualSim f15247a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f15248b = null;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15249c = false;
    private final Map<Phone, SimId> f = new HashMap();
    private final Map<String, SimId> g = new HashMap();
    private final Map<String, Integer> h = new HashMap();
    private final Object o = new Object();

    /* renamed from: com.callapp.contacts.manager.sim.SimManager$4  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$4.class */
    static /* synthetic */ class AnonymousClass4 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15255a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[SimId.values().length];
            f15255a = iArr;
            try {
                iArr[SimId.SIM_1.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f15255a[SimId.SIM_2.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f15255a[SimId.ASK.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$DualSim.class */
    public static class DualSim {

        /* renamed from: a  reason: collision with root package name */
        private final String f15256a;

        /* renamed from: b  reason: collision with root package name */
        private final String f15257b;

        /* renamed from: c  reason: collision with root package name */
        private final int f15258c;

        /* renamed from: d  reason: collision with root package name */
        private final String f15259d;
        private final PhoneAccount e;
        private final PhoneAccount f;

        public DualSim(PhoneAccount phoneAccount, PhoneAccount phoneAccount2) {
            this.e = phoneAccount;
            this.f = phoneAccount2;
            this.f15258c = 0;
            this.f15259d = null;
            this.f15256a = null;
            this.f15257b = null;
        }

        public DualSim(String str, String str2, int i) {
            this.f15256a = str;
            this.f15257b = str2;
            this.f15258c = i;
            this.f15259d = getSimColumnName();
            this.e = null;
            this.f = null;
        }

        private static String a() {
            Cursor cursor;
            Throwable th;
            String str;
            Cursor cursor2;
            Exception e;
            Cursor cursor3;
            PermissionManager.get();
            if (!PermissionManager.a("android.permission.READ_CALL_LOG")) {
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
                            CLog.a(SimManager.class, e);
                            str = null;
                            cursor2 = cursor3;
                            IoUtils.a(cursor2);
                            return str;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        IoUtils.a(cursor);
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                cursor3 = null;
            } catch (Throwable th3) {
                th = th3;
                cursor = null;
                IoUtils.a(cursor);
                throw th;
            }
            IoUtils.a(cursor2);
            return str;
        }

        private String getSimColumnName() {
            String str = Prefs.bS.get();
            String str2 = str;
            if (StringUtils.a((CharSequence) str)) {
                str2 = a();
                Prefs.bS.set(str2);
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
            if (this.f15258c == dualSim.f15258c && Objects.equals(this.f15256a, dualSim.f15256a) && Objects.equals(this.f15257b, dualSim.f15257b) && Objects.equals(this.f15259d, dualSim.f15259d) && Objects.equals(this.e, dualSim.e)) {
                return Objects.equals(this.f, dualSim.f);
            }
            return false;
        }

        public String getOperator1() {
            PhoneAccount phoneAccount;
            return (Build.VERSION.SDK_INT < 23 || (phoneAccount = this.e) == null) ? this.f15256a : phoneAccount.getLabel().toString();
        }

        public String getOperator2() {
            PhoneAccount phoneAccount;
            return (Build.VERSION.SDK_INT < 23 || (phoneAccount = this.f) == null) ? this.f15257b : phoneAccount.getLabel().toString();
        }

        public int hashCode() {
            String str = this.f15256a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f15257b;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            int i2 = this.f15258c;
            String str3 = this.f15259d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            PhoneAccount phoneAccount = this.e;
            int hashCode4 = phoneAccount != null ? phoneAccount.hashCode() : 0;
            PhoneAccount phoneAccount2 = this.f;
            if (phoneAccount2 != null) {
                i = phoneAccount2.hashCode();
            }
            return (((((((((hashCode * 31) + hashCode2) * 31) + i2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
        }

        public String toString() {
            return "DualSim{operator1='" + this.f15256a + "', operator2='" + this.f15257b + "', minDefaultSlotId=" + this.f15258c + ", simManagerColumnName='" + this.f15259d + "', account1=" + this.e + ", account2=" + this.f + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$DualSimSubscription.class */
    public class DualSimSubscription {

        /* renamed from: b  reason: collision with root package name */
        private final List<SubscriptionInfo> f15261b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f15262c;

        /* renamed from: d  reason: collision with root package name */
        private final long f15263d;
        private final long e;
        private final int f;
        private final int g;

        public DualSimSubscription(List<SubscriptionInfo> list, boolean z, long j, long j2, int i, int i2) {
            this.f15261b = list;
            this.f15262c = z;
            this.f15263d = j;
            this.e = j2;
            this.f = i;
            this.g = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/sim/SimManager$DualSimSubscriptionBuilder.class */
    public class DualSimSubscriptionBuilder {

        /* renamed from: a  reason: collision with root package name */
        List<SubscriptionInfo> f15264a;

        /* renamed from: b  reason: collision with root package name */
        boolean f15265b;

        /* renamed from: c  reason: collision with root package name */
        long f15266c;

        /* renamed from: d  reason: collision with root package name */
        long f15267d;
        int e;
        int f;

        private DualSimSubscriptionBuilder() {
        }

        public final DualSimSubscription a() {
            return new DualSimSubscription(this.f15264a, this.f15265b, this.f15266c, this.f15267d, this.e, this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(SubscriptionInfo subscriptionInfo, SubscriptionInfo subscriptionInfo2) {
        return subscriptionInfo.getSimSlotIndex() - subscriptionInfo2.getSimSlotIndex();
    }

    private DualSim a(DualSim dualSim) {
        if (dualSim != null) {
            this.f15249c = b(dualSim);
        }
        if (this.f15249c) {
            return dualSim;
        }
        return null;
    }

    private static DualSim a(String str, String str2, String str3, String[] strArr) {
        DualSim dualSim;
        if (StringUtils.b((CharSequence) str) && StringUtils.b((CharSequence) str2) && StringUtils.a((CharSequence) str3)) {
            return new DualSim(str, str2, 0);
        }
        if (!StringUtils.b((CharSequence) str) || !StringUtils.b((CharSequence) str2) || !StringUtils.b((CharSequence) str3)) {
            dualSim = null;
        } else {
            String str4 = Prefs.bT.get();
            for (int i = 0; i < 6; i++) {
                String str5 = strArr[i];
                try {
                    String a2 = a(str4, str5, 1, Integer.TYPE);
                    String a3 = a(str4, str5, 2, Integer.TYPE);
                    if (StringUtils.b((CharSequence) a2) && StringUtils.b((CharSequence) a3) && !StringUtils.b(a2, a3)) {
                        return new DualSim(str2, str3, 1);
                    }
                } catch (GeminiMethodNotFoundException e) {
                }
                try {
                    String a4 = a(str4, str5, 1, Long.TYPE);
                    String a5 = a(str4, str5, 2, Long.TYPE);
                    if (StringUtils.b((CharSequence) a4) && StringUtils.b((CharSequence) a5) && !StringUtils.b(a4, a5)) {
                        return new DualSim(str2, str3, 1);
                    }
                } catch (GeminiMethodNotFoundException e2) {
                }
            }
            dualSim = new DualSim(str, str2, 0);
        }
        return dualSim;
    }

    public static SimId a(int i) {
        if (i == 0) {
            return SimId.ASK;
        }
        if (i == 1) {
            return SimId.SIM_1;
        }
        if (i != 2) {
            return null;
        }
        return SimId.SIM_2;
    }

    private static String a(String str, String str2, int i, Class<?> cls) throws GeminiMethodNotFoundException {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(cls);
            Object a2 = ReflectionUtils.a(str, str2, (List<Class<?>>) arrayList, (List<Object>) Arrays.asList(Integer.valueOf(i)));
            return a2 != null ? a2.toString() : null;
        } catch (Exception e) {
            throw new GeminiMethodNotFoundException(str2);
        }
    }

    public static void a(Context context, String str, SimId simId, AdapterText.AdapterEvents adapterEvents) {
        if (!get().isDualSimAvailable()) {
            adapterEvents.onRowClicked(SimId.ASK.getSimId());
        } else if (simId != null && simId != SimId.ASK) {
            adapterEvents.onRowClicked(simId.getSimId());
        } else if (Prefs.bR.get() != SimId.ASK) {
            adapterEvents.onRowClicked(((SimId) Prefs.bR.get()).getSimId());
        } else {
            a(context, str, adapterEvents);
        }
    }

    public static void a(Context context, String str, final AdapterText.AdapterEvents adapterEvents) {
        DualSim dualSimOperators = Singletons.get().getSimManager().getDualSimOperators();
        if (dualSimOperators != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231888, dualSimOperators.getOperator1(), SimId.SIM_1.getSimId()));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231890, dualSimOperators.getOperator2(), SimId.SIM_2.getSimId()));
            final DialogList dialogList = new DialogList(Activities.a(2131886759, StringUtils.j(str)));
            dialogList.setDialogType(Popup.DialogType.withInset);
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(context, 2131558570, arrayList);
            adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.manager.sim.SimManager.2
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public final void onRowClicked(int i) {
                    AdapterText.AdapterEvents.this.onRowClicked(i);
                    dialogList.dismiss();
                }
            });
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().a(context, dialogList);
            return;
        }
        adapterEvents.onRowClicked(SimId.ASK.getSimId());
    }

    private static void a(Intent intent, int i) {
        for (String str : f15246d) {
            intent.putExtra(str, i);
        }
    }

    private boolean a(int i, SubscriptionInfo subscriptionInfo) {
        boolean z = false;
        if (i != 5) {
            return false;
        }
        z = true;
        if (Payload.SOURCE_HUAWEI.equalsIgnoreCase(Build.MANUFACTURER)) {
            if (this.f15248b == null) {
                this.f15248b = Boolean.valueOf(ReflectionUtils.a((Object) subscriptionInfo, "getStatus", new Class[0]));
            }
            z = true;
            if (this.f15248b.booleanValue()) {
                try {
                    if (((Integer) ReflectionUtils.b(subscriptionInfo, "getStatus")).intValue() == 1) {
                        z = true;
                    }
                } catch (Exception e) {
                    z = true;
                }
            }
        }
        return z;
    }

    private static boolean a(SubscriptionInfo subscriptionInfo, PhoneAccountHandle phoneAccountHandle, Intent intent) {
        int subscriptionId = subscriptionInfo.getSubscriptionId();
        String valueOf = String.valueOf(subscriptionInfo.getIccId());
        String id = phoneAccountHandle.getId();
        if (!StringUtils.b((CharSequence) id) || !a(String.valueOf(subscriptionId), valueOf, id)) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
        return true;
    }

    private static boolean a(Number number, PhoneAccountHandle phoneAccountHandle, Intent intent) {
        Object a2 = ReflectionUtils.a(phoneAccountHandle, "mId");
        if (!(a2 instanceof String)) {
            return false;
        }
        String str = (String) a2;
        if (!StringUtils.b((CharSequence) str)) {
            return false;
        }
        if (number.intValue() != Integer.parseInt(str)) {
            return false;
        }
        intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
        return true;
    }

    private static boolean a(String str, String str2, String str3) {
        if (StringUtils.b((Object) str3, (Object) str)) {
            return true;
        }
        if (StringUtils.f(str3) == StringUtils.f(str2) && StringUtils.b((Object) str3, (Object) str2)) {
            return true;
        }
        if (StringUtils.f(str3) > 3) {
            return StringUtils.c(str3, str2) || StringUtils.c(str2, str3);
        }
        return false;
    }

    public static int b(SimId simId) {
        if (simId == SimId.SIM_1) {
            return 2131231889;
        }
        return simId == SimId.SIM_2 ? 2131231891 : 2131231892;
    }

    public static SimId b() {
        int i = AnonymousClass4.f15255a[((SimId) Prefs.bR.get()).ordinal()];
        if (i == 1) {
            Prefs.bR.set(SimId.SIM_2);
            return SimId.SIM_2;
        } else if (i != 2) {
            Prefs.bR.set(SimId.SIM_1);
            return SimId.SIM_1;
        } else {
            Prefs.bR.set(SimId.ASK);
            return SimId.ASK;
        }
    }

    private boolean b(DualSim dualSim) {
        boolean z;
        boolean z2;
        if (dualSim.e != null && dualSim.f != null) {
            return true;
        }
        if (!StringUtils.b((CharSequence) dualSim.f15256a) || !StringUtils.b((CharSequence) dualSim.f15257b)) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 22) {
            return this.e.f15262c;
        }
        String str = Prefs.bT.get();
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
                z = b(str, str2, 0, Integer.TYPE);
                z2 = b(str, str2, 1, Integer.TYPE);
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
                z = b(str, str2, 0, Long.TYPE);
                z2 = b(str, str2, 1, Long.TYPE);
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

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0038, code lost:
        if (java.lang.Integer.parseInt(r0.toString()) == 5) goto L_0x0041;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(java.lang.String r8, java.lang.String r9, int r10, java.lang.Class<?> r11) throws com.callapp.contacts.manager.sim.SimManager.GeminiMethodNotFoundException {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: Exception -> 0x0044
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: Exception -> 0x0044
            r0 = r12
            r1 = r11
            boolean r0 = r0.add(r1)     // Catch: Exception -> 0x0044
            r0 = 1
            r13 = r0
            r0 = r8
            r1 = r9
            r2 = r12
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: Exception -> 0x0044
            r4 = r3
            r5 = 0
            r6 = r10
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: Exception -> 0x0044
            r4[r5] = r6     // Catch: Exception -> 0x0044
            java.util.List r3 = java.util.Arrays.asList(r3)     // Catch: Exception -> 0x0044
            java.lang.Object r0 = com.callapp.contacts.util.ReflectionUtils.a(r0, r1, r2, r3)     // Catch: Exception -> 0x0044
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x003e
            r0 = r8
            java.lang.String r0 = r0.toString()     // Catch: Exception -> 0x0044
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: Exception -> 0x0044
            r10 = r0
            r0 = r10
            r1 = 5
            if (r0 != r1) goto L_0x003e
            goto L_0x0041
        L_0x003e:
            r0 = 0
            r13 = r0
        L_0x0041:
            r0 = r13
            return r0
        L_0x0044:
            r8 = move-exception
            com.callapp.contacts.manager.sim.SimManager$GeminiMethodNotFoundException r0 = new com.callapp.contacts.manager.sim.SimManager$GeminiMethodNotFoundException
            r1 = r0
            r2 = r9
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.sim.SimManager.b(java.lang.String, java.lang.String, int, java.lang.Class):boolean");
    }

    public static int c(SimId simId) {
        if (simId == SimId.SIM_1) {
            return 2131231888;
        }
        return simId == SimId.SIM_2 ? 2131231890 : 2131231892;
    }

    private DualSim c() {
        return a(getSimNamesIfDualSim());
    }

    private DualSim d() {
        String str;
        String str2;
        String str3;
        String[] strArr = {"getSimSerialNumber", "getSimSerialNumberGemini", "getDeviceId", "getDeviceIdDs", "getDeviceIdGemini", "getDeviceIdExt"};
        ArrayList arrayList = new ArrayList(Arrays.asList("getSimOperatorName", "getNetworkOperatorName", "getSimOperatorNameGemini", "getSimOperatorNameForSubscription"));
        arrayList.addAll(Arrays.asList(strArr));
        String str4 = Prefs.bT.get();
        Iterator it2 = arrayList.iterator();
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (true) {
            str = str5;
            str2 = str6;
            str3 = str7;
            if (!it2.hasNext()) {
                break;
            }
            String str8 = (String) it2.next();
            try {
                String a2 = a(str4, str8, 0, Long.TYPE);
                str2 = a(str4, str8, 1, Long.TYPE);
                str3 = a(str4, str8, 2, Long.TYPE);
                str5 = a2;
                str6 = str2;
                str7 = str3;
                if (StringUtils.b((CharSequence) a2)) {
                    str5 = a2;
                    str6 = str2;
                    str7 = str3;
                    if (StringUtils.b((CharSequence) str2)) {
                        str = a2;
                        break;
                    }
                }
            } catch (GeminiMethodNotFoundException e) {
                str5 = str5;
                str6 = str6;
                str7 = str7;
            }
            try {
                String a3 = a(str4, str8, 0, Integer.TYPE);
                String a4 = a(str4, str8, 1, Integer.TYPE);
                String a5 = a(str4, str8, 2, Integer.TYPE);
                str5 = a3;
                str6 = a4;
                str7 = a5;
                if (StringUtils.b((CharSequence) a3)) {
                    str5 = a3;
                    str6 = a4;
                    str7 = a5;
                    if (StringUtils.b((CharSequence) a4)) {
                        str = a3;
                        str2 = a4;
                        str3 = a5;
                        break;
                    }
                } else {
                    continue;
                }
            } catch (GeminiMethodNotFoundException e2) {
            }
        }
        return a(str, str2, str3, strArr);
    }

    private void e() {
        DualSimSubscriptionBuilder dualSimSubscriptionBuilder = new DualSimSubscriptionBuilder();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 22) {
            if (this.m == null) {
                new GetSimStateCommandFactory();
                this.m = GetSimStateCommandFactory.a(this.i);
            }
            try {
                List<SubscriptionInfo> activeSubscriptionInfoList = this.i.getActiveSubscriptionInfoList();
                if (CollectionUtils.b(activeSubscriptionInfoList)) {
                    Collections.sort(activeSubscriptionInfoList, _$$Lambda$SimManager$rBzC1EbUSi1U_ze1p_ZdDOimezw.INSTANCE);
                    for (SubscriptionInfo subscriptionInfo : activeSubscriptionInfoList) {
                        if (subscriptionInfo != null && a(this.m.a(this.i, subscriptionInfo), subscriptionInfo)) {
                            arrayList.add(subscriptionInfo);
                        }
                    }
                }
                if (arrayList.size() > 1) {
                    z = true;
                }
                dualSimSubscriptionBuilder.f15265b = z;
                dualSimSubscriptionBuilder.f15264a = arrayList;
            } catch (Exception e) {
                CLog.a(SimManager.class, e);
            }
        } else if (Build.VERSION.SDK_INT >= 21 && ReflectionUtils.a("android.telephony.SubscriptionManager")) {
            try {
                Object b2 = ReflectionUtils.b((SubscriptionManager) ReflectionUtils.a(Class.forName("android.telephony.SubscriptionManager")), "getActiveSubInfoList");
                if (b2 != null && ((List) b2).size() > 1) {
                    dualSimSubscriptionBuilder.f15265b = true;
                    dualSimSubscriptionBuilder.f15264a = (List) b2;
                    Object obj = dualSimSubscriptionBuilder.f15264a.get(0);
                    Object obj2 = dualSimSubscriptionBuilder.f15264a.get(1);
                    dualSimSubscriptionBuilder.f15266c = ((Long) ReflectionUtils.a(obj, "subId")).intValue();
                    dualSimSubscriptionBuilder.e = ((Integer) ReflectionUtils.a(obj, "slotId")).intValue();
                    dualSimSubscriptionBuilder.f15267d = ((Long) ReflectionUtils.a(obj2, "subId")).intValue();
                    dualSimSubscriptionBuilder.f = ((Integer) ReflectionUtils.a(obj2, "slotId")).intValue();
                }
            } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
                CLog.a(SimManager.class, e2);
            }
        }
        this.e = dualSimSubscriptionBuilder.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        SubscriptionManager.OnSubscriptionsChangedListener onSubscriptionsChangedListener = new SubscriptionManager.OnSubscriptionsChangedListener() { // from class: com.callapp.contacts.manager.sim.SimManager.1
            @Override // android.telephony.SubscriptionManager.OnSubscriptionsChangedListener
            public void onSubscriptionsChanged() {
                CLog.a(SimManager.class, "onSubscriptionsChanged()");
                try {
                    if (SimManager.this.n != null) {
                        SimManager.this.n.cancel();
                    }
                } catch (Exception e) {
                }
                SimManager.this.n = new Task() { // from class: com.callapp.contacts.manager.sim.SimManager.1.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        SimManager.this.a();
                        SimManager.this.n = null;
                    }
                }.schedule(VastError.ERROR_CODE_GENERAL_WRAPPER);
            }
        };
        this.j = onSubscriptionsChangedListener;
        this.i.addOnSubscriptionsChangedListener(onSubscriptionsChangedListener);
    }

    public static SimManager get() {
        return Singletons.get().getSimManager();
    }

    private DualSim getPhoneAccounts() {
        try {
            synchronized (this.o) {
                TelecomManager telecomManager = (TelecomManager) CallAppApplication.get().getSystemService("telecom");
                this.p = new ArrayList();
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
                            this.p.add(phoneAccount);
                        }
                    }
                }
                if (CollectionUtils.b(this.p) && this.p.size() > 1) {
                    Collections.sort(this.p, new Comparator<PhoneAccount>() { // from class: com.callapp.contacts.manager.sim.SimManager.3
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
                    if (this.e.f15262c) {
                        return new DualSim(this.p.get(0), this.p.get(1));
                    }
                }
                return null;
            }
        } catch (Exception e) {
            return null;
        }
    }

    public static int getSimIdAsIndexForDialog() {
        int i = AnonymousClass4.f15255a[((SimId) Prefs.bR.get()).ordinal()];
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
        if (Build.VERSION.SDK_INT >= 23 && (phoneAccounts = getPhoneAccounts()) != null) {
            return phoneAccounts;
        }
        if (Build.VERSION.SDK_INT >= 22) {
            return getSimNamesIfDualSimFromSubscriptionInfo();
        }
        if (StringUtils.b((CharSequence) Prefs.bT.get())) {
            return d();
        }
        for (int i = 0; i < 3; i++) {
            String str = new String[]{"com.mediatek.telephony.TelephonyManagerEx", "android.telephony.MSimTelephonyManager", "android.telephony.TelephonyManager"}[i];
            if (ReflectionUtils.a(str)) {
                Prefs.bT.set(str);
                DualSim d2 = d();
                this.f15247a = d2;
                if (d2 != null) {
                    return d2;
                }
            }
        }
        Prefs.bT.set(null);
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0051, code lost:
        if (com.callapp.framework.util.StringUtils.a((java.lang.CharSequence) r0.toString().trim()) != false) goto L_0x0054;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.callapp.contacts.manager.sim.SimManager.DualSim getSimNamesIfDualSimFromSubscriptionInfo() {
        /*
            r6 = this;
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.e
            boolean r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.b(r0)
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            if (r0 == 0) goto L_0x00b5
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.a(r0)
            boolean r0 = com.callapp.framework.util.CollectionUtils.a(r0)
            if (r0 == 0) goto L_0x001f
            r0 = 0
            return r0
        L_0x001f:
            r0 = 2131888106(0x7f1207ea, float:1.9410838E38)
            java.lang.String r0 = com.callapp.contacts.util.Activities.getString(r0)
            r10 = r0
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.a(r0)
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            android.telephony.SubscriptionInfo r0 = (android.telephony.SubscriptionInfo) r0
            java.lang.CharSequence r0 = r0.getDisplayName()
            r8 = r0
            r0 = r8
            boolean r0 = com.callapp.framework.util.StringUtils.a(r0)
            if (r0 != 0) goto L_0x0054
            r0 = r8
            r11 = r0
            r0 = r8
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            boolean r0 = com.callapp.framework.util.StringUtils.a(r0)
            if (r0 == 0) goto L_0x0058
        L_0x0054:
            r0 = r10
            r11 = r0
        L_0x0058:
            r0 = r9
            r8 = r0
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.a(r0)
            int r0 = r0.size()
            r1 = 1
            if (r0 <= r1) goto L_0x007e
            r0 = r6
            com.callapp.contacts.manager.sim.SimManager$DualSimSubscription r0 = r0.e
            java.util.List r0 = com.callapp.contacts.manager.sim.SimManager.DualSimSubscription.a(r0)
            r1 = 1
            java.lang.Object r0 = r0.get(r1)
            android.telephony.SubscriptionInfo r0 = (android.telephony.SubscriptionInfo) r0
            java.lang.CharSequence r0 = r0.getDisplayName()
            r8 = r0
        L_0x007e:
            r0 = r10
            r9 = r0
            r0 = r8
            boolean r0 = com.callapp.framework.util.StringUtils.a(r0)
            if (r0 != 0) goto L_0x009f
            r0 = r8
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            boolean r0 = com.callapp.framework.util.StringUtils.a(r0)
            if (r0 == 0) goto L_0x009d
            r0 = r10
            r9 = r0
            goto L_0x009f
        L_0x009d:
            r0 = r8
            r9 = r0
        L_0x009f:
            com.callapp.contacts.manager.sim.SimManager$DualSim r0 = new com.callapp.contacts.manager.sim.SimManager$DualSim
            r1 = r0
            r2 = r11
            java.lang.String r2 = r2.toString()
            r3 = r9
            java.lang.String r3 = r3.toString()
            r4 = 0
            r1.<init>(r2, r3, r4)
            r8 = r0
        L_0x00b5:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.manager.sim.SimManager.getSimNamesIfDualSimFromSubscriptionInfo():com.callapp.contacts.manager.sim.SimManager$DualSim");
    }

    private SimId getSimSlotIdFromSubscriptionInfo(int i) {
        if (this.e.f15262c) {
            if (this.e.f15261b == null) {
                return SimId.ASK;
            }
            if (Build.VERSION.SDK_INT >= 22) {
                List list = this.e.f15261b;
                if (i == ((SubscriptionInfo) list.get(0)).getSubscriptionId()) {
                    return SimId.SIM_1;
                }
                if (i == ((SubscriptionInfo) list.get(1)).getSubscriptionId()) {
                    return SimId.SIM_2;
                }
            } else {
                long j = i;
                if (j == this.e.f15263d) {
                    return SimId.getSimId(Integer.valueOf(this.e.f));
                }
                if (j == this.e.e) {
                    return SimId.getSimId(Integer.valueOf(this.e.g));
                }
            }
        }
        return SimId.ASK;
    }

    public final SimId a(Cursor cursor) {
        int columnIndex;
        SimId[] values;
        if (!(this.f15247a == null || cursor == null)) {
            String str = "";
            String string = Build.VERSION.SDK_INT >= 23 ? cursor.getString(cursor.getColumnIndex("subscription_component_name")) : "";
            if (Build.VERSION.SDK_INT >= 23) {
                str = cursor.getString(cursor.getColumnIndex("subscription_id"));
            }
            if (Build.VERSION.SDK_INT < 23 || !StringUtils.b((CharSequence) str) || !StringUtils.b((CharSequence) string)) {
                if (!(!StringUtils.b((CharSequence) this.f15247a.f15259d) || (columnIndex = cursor.getColumnIndex(this.f15247a.f15259d)) == -1 || this.f15247a.f15258c == -1)) {
                    int i = cursor.getInt(columnIndex);
                    if (Build.VERSION.SDK_INT >= 21) {
                        return getSimSlotIdFromSubscriptionInfo(i);
                    }
                    int i2 = this.f15247a.f15258c;
                    for (SimId simId : SimId.values()) {
                        if (simId.getSimId() == i - i2) {
                            return simId;
                        }
                    }
                }
                CLog.a(SimManager.class, "getSimIdColumn: no sim_id column found");
            } else {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(string);
                return unflattenFromString == null ? SimId.ASK : a(new PhoneAccountHandle(unflattenFromString, str));
            }
        }
        return SimId.ASK;
    }

    public final SimId a(PhoneAccountHandle phoneAccountHandle) {
        String str;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                Integer num = this.h.get(phoneAccountHandle.getId());
                Integer num2 = num;
                if (num == null) {
                    num2 = Integer.valueOf(((Integer) ReflectionUtils.a((TelephonyManager) CallAppApplication.get().getSystemService(Constants.EXTRA_PHONE_NUMBER), "getSubIdForPhoneAccount", Collections.singletonList(PhoneAccount.class), Collections.singletonList((PhoneAccount) ReflectionUtils.a((TelecomManager) CallAppApplication.get().getSystemService("telecom"), "getPhoneAccount", Collections.singletonList(PhoneAccountHandle.class), Collections.singletonList(phoneAccountHandle))))).intValue());
                    this.h.put(phoneAccountHandle.getId(), num2);
                }
                str = String.valueOf(num2);
            } catch (Exception e) {
                CLog.a(SimManager.class, "getSimSlotIdFromSubscriptionInfo exception: ", e);
                str = null;
            }
        } else {
            str = phoneAccountHandle.getId();
        }
        if (this.g.containsKey(str)) {
            return this.g.get(str);
        }
        List list = this.e.f15261b;
        SubscriptionInfo subscriptionInfo = (SubscriptionInfo) list.get(0);
        SubscriptionInfo subscriptionInfo2 = (SubscriptionInfo) list.get(1);
        SimId simId = a(String.valueOf(subscriptionInfo.getSubscriptionId()), subscriptionInfo.getIccId(), str) ? SimId.SIM_1 : a(String.valueOf(subscriptionInfo2.getSubscriptionId()), subscriptionInfo2.getIccId(), str) ? SimId.SIM_2 : SimId.ASK;
        this.g.put(str, simId);
        return simId;
    }

    public final String a(SimId simId) {
        if (this.f15247a == null) {
            return null;
        }
        if (simId == SimId.SIM_1) {
            return this.f15247a.getOperator1();
        }
        if (simId == SimId.SIM_2) {
            return this.f15247a.getOperator2();
        }
        return null;
    }

    public final void a() {
        this.f15249c = false;
        PhoneManager.get().j();
        PhoneManager.k();
        CallLogUtils.a();
        e();
        this.g.clear();
        this.h.clear();
        this.f15247a = c();
        EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.SIM_CHANGED, false);
    }

    public final void a(Phone phone, Intent intent, int i) {
        List<PhoneAccountHandle> list;
        DualSim dualSimOperators;
        if (i >= 0) {
            if (phone != null && !phone.equals(Phone.f17100b)) {
                Singletons.get().getSimManager().getActiveCalls().put(phone, SimId.getSimId(Integer.valueOf(i)));
            }
            if (Build.VERSION.SDK_INT >= 23 && (dualSimOperators = get().getDualSimOperators()) != null) {
                PhoneAccount phoneAccount = i == 0 ? dualSimOperators.e : dualSimOperators.f;
                if (!(phoneAccount == null || phoneAccount.getAccountHandle() == null)) {
                    intent.putExtra("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccount.getAccountHandle());
                    a(intent, i);
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
                        CLog.a(SimManager.class, e);
                        a(intent, i);
                        return;
                    }
                }
                if (list != null && list.size() >= 2 && CollectionUtils.b(this.e.f15261b)) {
                    boolean z = false;
                    for (int i2 = 0; !z && i2 < this.e.f15261b.size(); i2++) {
                        if (Build.VERSION.SDK_INT >= 22) {
                            SubscriptionInfo subscriptionInfo = (SubscriptionInfo) this.e.f15261b.get(i2);
                            z = z;
                            if (subscriptionInfo != null) {
                                z = z;
                                if (subscriptionInfo.getSimSlotIndex() == i) {
                                    for (PhoneAccountHandle phoneAccountHandle : list) {
                                        z = a(subscriptionInfo, phoneAccountHandle, intent);
                                    }
                                }
                            }
                        } else {
                            z = z;
                            if (ReflectionUtils.a("android.telephony.SubscriptionManager")) {
                                Object obj = this.e.f15261b.get(i2);
                                z = z;
                                if (obj != null) {
                                    z = z;
                                    if (((Integer) ReflectionUtils.a(obj, "slotId")).intValue() == i) {
                                        Number number = (Number) ReflectionUtils.a(obj, "subId");
                                        z = z;
                                        if (number != null) {
                                            int i3 = 0;
                                            while (true) {
                                                z = z;
                                                if (i3 < list.size()) {
                                                    z |= a(number, list.get(i3), intent);
                                                    i3++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            a(intent, i);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f15247a = null;
        Handler handler = this.l;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        HandlerThread handlerThread = this.k;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        if (Build.VERSION.SDK_INT >= 22) {
            this.i.removeOnSubscriptionsChangedListener(this.j);
        }
        this.e = null;
    }

    public Map<Phone, SimId> getActiveCalls() {
        return this.f;
    }

    public DualSim getDualSimOperators() {
        if (this.f15249c) {
            return this.f15247a;
        }
        return null;
    }

    public PhoneAccountHandle getPhoneAccountHandle(int i) {
        synchronized (this.o) {
            if (CollectionUtils.b(this.p) && i < this.p.size()) {
                int i2 = i;
                if (i < 0) {
                    i2 = 0;
                }
                PhoneAccount phoneAccount = this.p.get(i2);
                if (phoneAccount != null) {
                    return phoneAccount.getAccountHandle();
                }
            }
            return null;
        }
    }

    public String getSimIdColumnName() {
        DualSim dualSim = this.f15247a;
        if (dualSim != null) {
            return dualSim.f15259d;
        }
        return null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        if (!CallAppApplication.get().isUnitTestMode()) {
            if (Build.VERSION.SDK_INT >= 22) {
                this.i = SubscriptionManager.from(CallAppApplication.get());
                HandlerThread handlerThread = new HandlerThread(SimManager.class.toString());
                this.k = handlerThread;
                handlerThread.start();
                AndroidUtils.a(this.k.getLooper());
                this.l = new Handler(this.k.getLooper());
                PermissionManager.get();
                if (PermissionManager.a("android.permission.READ_PHONE_STATE")) {
                    this.l.post(new Runnable() { // from class: com.callapp.contacts.manager.sim._$$Lambda$SimManager$_bNCIAj77ttBInfPn83x7O77Z2k
                        @Override // java.lang.Runnable
                        public final void run() {
                            SimManager.this.f();
                        }
                    });
                }
            }
            e();
            this.f15247a = c();
        }
    }

    public boolean isDualSimAvailable() {
        return getDualSimOperators() != null;
    }
}
