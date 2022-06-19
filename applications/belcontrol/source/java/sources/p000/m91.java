package p000;

import android.content.Intent;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import p000.r71;
/* renamed from: m91 */
/* loaded from: classes3-dex2jar.jar:m91.class */
public class m91 {

    /* renamed from: a */
    public static final EnumSet<EnumC1470c> f6973a = EnumSet.of(EnumC1470c.ACTIVITY_RESULT_RECEIVED);

    /* renamed from: b */
    public static HashMap<EnumC1470c, Object[]> f6974b = new HashMap<>();

    /* renamed from: c */
    public static final ArrayList<C1471d> f6975c = new ArrayList<>();

    /* renamed from: m91$a */
    /* loaded from: classes3-dex2jar.jar:m91$a.class */
    public static class C1468a {

        /* renamed from: a */
        public int f6976a;

        /* renamed from: b */
        public int f6977b;

        /* renamed from: c */
        public Intent f6978c;

        public C1468a(int i, int i2, Intent intent) {
            this.f6976a = i;
            this.f6977b = i2;
            this.f6978c = intent;
        }
    }

    /* renamed from: m91$b */
    /* loaded from: classes3-dex2jar.jar:m91$b.class */
    public interface AbstractC1469b {
        /* renamed from: i */
        void mo648i(EnumC1470c enumC1470c, Class<?> cls, Object obj);
    }

    /* renamed from: m91$c */
    /* loaded from: classes3-dex2jar.jar:m91$c.class */
    public enum EnumC1470c {
        DATA_SYNC_BEGIN,
        DATA_SYNC_UPDATE,
        DATA_SYNC_FINISH,
        SERVER_SYNC_MAIN_DATA_COMPLETE,
        SERVER_SYNC_COMMUNITY_COMPLETE,
        GET_CALLER_COMPLETE,
        GSM_CALL_READY,
        RESTORE_PURCHASE_COMPLETE,
        DATA_UPDATE,
        ACTIVITY_RESULT_RECEIVED,
        SETTINGS_CHANGED,
        LOLLIPOP_HANGUP_COMPLETE,
        RULE_CHANGED
    }

    /* renamed from: m91$d */
    /* loaded from: classes3-dex2jar.jar:m91$d.class */
    public static class C1471d {

        /* renamed from: a */
        public EnumSet<EnumC1470c> f6993a;

        /* renamed from: b */
        public Class<?>[] f6994b;

        /* renamed from: c */
        public WeakReference<AbstractC1469b> f6995c;

        public C1471d(AbstractC1469b abstractC1469b, EnumSet<EnumC1470c> enumSet, Class<?>... clsArr) {
            this.f6995c = new WeakReference<>(abstractC1469b);
            this.f6993a = enumSet;
            this.f6994b = clsArr;
        }
    }

    /* renamed from: a */
    public static void m1281a(Object obj, EnumC1470c enumC1470c, Object obj2) {
        m1280b(obj, enumC1470c, obj2, null);
    }

    /* renamed from: b */
    public static void m1280b(Object obj, EnumC1470c enumC1470c, Object obj2, Object obj3) {
        boolean z;
        ArrayList<C1471d> arrayList = f6975c;
        synchronized (arrayList) {
            Class<?> cls = obj != null ? obj.getClass() : null;
            ArrayList arrayList2 = new ArrayList();
            Iterator<C1471d> it = arrayList.iterator();
            boolean z2 = false;
            while (it.hasNext()) {
                C1471d next = it.next();
                AbstractC1469b abstractC1469b = next.f6995c.get();
                if (abstractC1469b == null) {
                    arrayList2.add(next);
                } else if (obj3 == null || abstractC1469b == obj3) {
                    EnumSet<EnumC1470c> enumSet = next.f6993a;
                    if (enumSet == null || enumSet.contains(enumC1470c)) {
                        Class<?>[] clsArr = next.f6994b;
                        boolean z3 = z2;
                        if (clsArr != null) {
                            z3 = z2;
                            if (clsArr.length > 0) {
                                int length = clsArr.length;
                                int i = 0;
                                while (true) {
                                    z = z2;
                                    if (i >= length) {
                                        break;
                                    } else if (cls == clsArr[i]) {
                                        z = true;
                                        break;
                                    } else {
                                        i++;
                                    }
                                }
                                z3 = z;
                                if (!z) {
                                    z2 = z;
                                }
                            }
                        }
                        abstractC1469b.mo648i(enumC1470c, cls, obj2);
                        f6974b.remove(enumC1470c);
                        z2 = z3;
                    }
                }
            }
            if (!z2 && f6973a.contains(enumC1470c)) {
                String str = "Pending event " + enumC1470c + " received but not consumed. Keeping";
                f6974b.put(enumC1470c, new Object[]{obj, obj2});
            }
            f6975c.removeAll(arrayList2);
            arrayList2.clear();
        }
    }

    /* renamed from: c */
    public static void m1279c(Object obj, Object obj2) {
        r71.EnumC1638a.f7998w0.m682n(Long.valueOf(System.currentTimeMillis()));
        m1280b(obj, EnumC1470c.SETTINGS_CHANGED, obj2, null);
    }

    /* renamed from: d */
    public static void m1278d(AbstractC1469b abstractC1469b, EnumSet<EnumC1470c> enumSet, Class<?>... clsArr) {
        C1471d c1471d = new C1471d(abstractC1469b, enumSet, clsArr);
        m1277e(abstractC1469b);
        ArrayList<C1471d> arrayList = f6975c;
        synchronized (arrayList) {
            arrayList.add(c1471d);
            for (EnumC1470c enumC1470c : f6974b.keySet()) {
                if (enumSet.contains(enumC1470c)) {
                    Object[] objArr = f6974b.get(enumC1470c);
                    String str = "Delivering pending event " + enumC1470c + " to " + abstractC1469b.getClass().getSimpleName();
                    m1280b(objArr[0], enumC1470c, objArr[1], abstractC1469b);
                    f6974b.remove(enumC1470c);
                }
            }
        }
    }

    /* renamed from: e */
    public static void m1277e(AbstractC1469b abstractC1469b) {
        C1471d next;
        ArrayList<C1471d> arrayList = f6975c;
        synchronized (arrayList) {
            Iterator<C1471d> it = arrayList.iterator();
            do {
                if (!it.hasNext()) {
                    return;
                }
                next = it.next();
            } while (next.f6995c.get() != abstractC1469b);
            f6975c.remove(next);
        }
    }
}
