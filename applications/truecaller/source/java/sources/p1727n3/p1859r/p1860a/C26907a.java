package p1727n3.p1859r.p1860a;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.tenor.android.core.constant.StringConstant;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.r.a.a */
/* loaded from: classes-dex2jar.jar:n3/r/a/a.class */
public final class C26907a extends AbstractC26924f0 implements FragmentManager.AbstractC0176m {

    /* renamed from: q */
    public final FragmentManager f75269q;

    /* renamed from: r */
    public boolean f75270r;

    /* renamed from: s */
    public int f75271s;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C26907a(androidx.fragment.app.FragmentManager r5) {
        /*
            r4 = this;
            r0 = r5
            n3.r.a.t r0 = r0.m42937P()
            r6 = r0
            r0 = r5
            n3.r.a.u<?> r0 = r0.f854q
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L19
            r0 = r7
            android.content.Context r0 = r0.f75444b
            java.lang.ClassLoader r0 = r0.getClassLoader()
            r7 = r0
            goto L1b
        L19:
            r0 = 0
            r7 = r0
        L1b:
            r0 = r4
            r1 = r6
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r4
            r1 = -1
            r0.f75271s = r1
            r0 = r4
            r1 = r5
            r0.f75269q = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1859r.p1860a.C26907a.<init>(androidx.fragment.app.FragmentManager):void");
    }

    @Override // androidx.fragment.app.FragmentManager.AbstractC0176m
    /* renamed from: a */
    public boolean mo1185a(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManager.m42933T(2)) {
            String str = "Run: " + this;
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.f75323g) {
            FragmentManager fragmentManager = this.f75269q;
            if (fragmentManager.f841d == null) {
                fragmentManager.f841d = new ArrayList<>();
            }
            fragmentManager.f841d.add(this);
            return true;
        }
        return true;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: f */
    public int mo1127f() {
        return m1183r(false);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: g */
    public int mo1126g() {
        return m1183r(true);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: h */
    public void mo1125h() {
        m1123j();
        this.f75269q.m42948E(this, false);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: i */
    public void mo1124i() {
        m1123j();
        this.f75269q.m42948E(this, true);
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: k */
    public void mo1122k(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder m8728C = C22128a.m8728C("Fragment ");
            m8728C.append(cls.getCanonicalName());
            m8728C.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(m8728C.toString());
        }
        if (str != null) {
            String str2 = fragment.mTag;
            if (str2 != null && !str.equals(str2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                throw new IllegalStateException(C22128a.m8610j(sb, fragment.mTag, " now ", str));
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        m1129d(new AbstractC26924f0.C26925a(i2, fragment));
        fragment.mFragmentManager = this.f75269q;
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: l */
    public AbstractC26924f0 mo1121l(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager == null || fragmentManager == this.f75269q) {
            m1129d(new AbstractC26924f0.C26925a(3, fragment));
            return this;
        }
        StringBuilder m8728C = C22128a.m8728C("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        m8728C.append(fragment.toString());
        m8728C.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(m8728C.toString());
    }

    @Override // p1727n3.p1859r.p1860a.AbstractC26924f0
    /* renamed from: p */
    public AbstractC26924f0 mo1117p(Fragment fragment, AbstractC27028u.EnumC27030b enumC27030b) {
        if (fragment.mFragmentManager != this.f75269q) {
            StringBuilder m8728C = C22128a.m8728C("Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            m8728C.append(this.f75269q);
            throw new IllegalArgumentException(m8728C.toString());
        } else if (enumC27030b == AbstractC27028u.EnumC27030b.INITIALIZED && fragment.mState > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + enumC27030b + " after the Fragment has been created");
        } else if (enumC27030b != AbstractC27028u.EnumC27030b.DESTROYED) {
            m1129d(new AbstractC26924f0.C26925a(10, fragment, enumC27030b));
            return this;
        } else {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + enumC27030b + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
        }
    }

    /* renamed from: q */
    public void m1184q(int i) {
        if (!this.f75323g) {
            return;
        }
        if (FragmentManager.m42933T(2)) {
            String str = "Bump nesting in " + this + " by " + i;
        }
        int size = this.f75317a.size();
        for (int i2 = 0; i2 < size; i2++) {
            AbstractC26924f0.C26925a c26925a = this.f75317a.get(i2);
            Fragment fragment = c26925a.f75334b;
            if (fragment != null) {
                fragment.mBackStackNesting += i;
                if (FragmentManager.m42933T(2)) {
                    StringBuilder m8728C = C22128a.m8728C("Bump nesting of ");
                    m8728C.append(c26925a.f75334b);
                    m8728C.append(" to ");
                    m8728C.append(c26925a.f75334b.mBackStackNesting);
                    m8728C.toString();
                }
            }
        }
    }

    /* renamed from: r */
    public int m1183r(boolean z) {
        if (!this.f75270r) {
            if (FragmentManager.m42933T(2)) {
                String str = "Commit: " + this;
                PrintWriter printWriter = new PrintWriter(new C26958t0("FragmentManager"));
                m1182s("  ", printWriter, true);
                printWriter.close();
            }
            this.f75270r = true;
            if (this.f75323g) {
                this.f75271s = this.f75269q.f846i.getAndIncrement();
            } else {
                this.f75271s = -1;
            }
            this.f75269q.m42951B(this, z);
            return this.f75271s;
        }
        throw new IllegalStateException("commit already called");
    }

    /* renamed from: s */
    public void m1182s(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f75325i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f75271s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f75270r);
            if (this.f75322f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f75322f));
            }
            if (this.f75318b != 0 || this.f75319c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f75318b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f75319c));
            }
            if (this.f75320d != 0 || this.f75321e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f75320d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f75321e));
            }
            if (this.f75326j != 0 || this.f75327k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f75326j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f75327k);
            }
            if (this.f75328l != 0 || this.f75329m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f75328l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f75329m);
            }
        }
        if (!this.f75317a.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = this.f75317a.size();
            for (int i = 0; i < size; i++) {
                AbstractC26924f0.C26925a c26925a = this.f75317a.get(i);
                switch (c26925a.f75333a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        StringBuilder m8728C = C22128a.m8728C("cmd=");
                        m8728C.append(c26925a.f75333a);
                        str2 = m8728C.toString();
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(StringConstant.SPACE);
                printWriter.println(c26925a.f75334b);
                if (z) {
                    if (c26925a.f75335c != 0 || c26925a.f75336d != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(c26925a.f75335c));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(c26925a.f75336d));
                    }
                    if (c26925a.f75337e != 0 || c26925a.f75338f != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(c26925a.f75337e));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(c26925a.f75338f));
                    }
                }
            }
        }
    }

    /* renamed from: t */
    public void m1181t() {
        int size = this.f75317a.size();
        for (int i = 0; i < size; i++) {
            AbstractC26924f0.C26925a c26925a = this.f75317a.get(i);
            Fragment fragment = c26925a.f75334b;
            if (fragment != null) {
                fragment.setPopDirection(false);
                fragment.setNextTransition(this.f75322f);
                fragment.setSharedElementNames(this.f75330n, this.f75331o);
            }
            switch (c26925a.f75333a) {
                case 1:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42899n0(fragment, false);
                    this.f75269q.m42926a(fragment);
                    break;
                case 2:
                default:
                    StringBuilder m8728C = C22128a.m8728C("Unknown cmd: ");
                    m8728C.append(c26925a.f75333a);
                    throw new IllegalArgumentException(m8728C.toString());
                case 3:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42911h0(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42934S(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42899n0(fragment, false);
                    this.f75269q.m42887t0(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42906k(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42899n0(fragment, false);
                    this.f75269q.m42922c(fragment);
                    break;
                case 8:
                    this.f75269q.m42891r0(fragment);
                    break;
                case 9:
                    this.f75269q.m42891r0(null);
                    break;
                case 10:
                    this.f75269q.m42893q0(fragment, c26925a.f75340h);
                    break;
            }
            if (!this.f75332p) {
                int i2 = c26925a.f75333a;
            }
        }
    }

    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(128, "BackStackEntry{");
        m8554x.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f75271s >= 0) {
            m8554x.append(" #");
            m8554x.append(this.f75271s);
        }
        if (this.f75325i != null) {
            m8554x.append(StringConstant.SPACE);
            m8554x.append(this.f75325i);
        }
        m8554x.append("}");
        return m8554x.toString();
    }

    /* renamed from: u */
    public void m1180u(boolean z) {
        for (int size = this.f75317a.size() - 1; size >= 0; size--) {
            AbstractC26924f0.C26925a c26925a = this.f75317a.get(size);
            Fragment fragment = c26925a.f75334b;
            if (fragment != null) {
                fragment.setPopDirection(true);
                int i = this.f75322f;
                int i2 = 8194;
                if (i != 4097) {
                    i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
                }
                fragment.setNextTransition(i2);
                fragment.setSharedElementNames(this.f75331o, this.f75330n);
            }
            switch (c26925a.f75333a) {
                case 1:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42899n0(fragment, true);
                    this.f75269q.m42911h0(fragment);
                    break;
                case 2:
                default:
                    StringBuilder m8728C = C22128a.m8728C("Unknown cmd: ");
                    m8728C.append(c26925a.f75333a);
                    throw new IllegalArgumentException(m8728C.toString());
                case 3:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42926a(fragment);
                    break;
                case 4:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42887t0(fragment);
                    break;
                case 5:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42899n0(fragment, true);
                    this.f75269q.m42934S(fragment);
                    break;
                case 6:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42922c(fragment);
                    break;
                case 7:
                    fragment.setAnimations(c26925a.f75335c, c26925a.f75336d, c26925a.f75337e, c26925a.f75338f);
                    this.f75269q.m42899n0(fragment, true);
                    this.f75269q.m42906k(fragment);
                    break;
                case 8:
                    this.f75269q.m42891r0(null);
                    break;
                case 9:
                    this.f75269q.m42891r0(fragment);
                    break;
                case 10:
                    this.f75269q.m42893q0(fragment, c26925a.f75339g);
                    break;
            }
            if (!this.f75332p) {
                int i3 = c26925a.f75333a;
            }
        }
    }

    /* renamed from: v */
    public boolean m1179v(int i) {
        int size = this.f75317a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f75317a.get(i2).f75334b;
            int i3 = fragment != null ? fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: w */
    public boolean m1178w(ArrayList<C26907a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f75317a.size();
        int i3 = -1;
        int i4 = 0;
        while (i4 < size) {
            Fragment fragment = this.f75317a.get(i4).f75334b;
            int i5 = fragment != null ? fragment.mContainerId : 0;
            int i6 = i3;
            if (i5 != 0) {
                i6 = i3;
                if (i5 != i3) {
                    for (int i7 = i; i7 < i2; i7++) {
                        C26907a c26907a = arrayList.get(i7);
                        int size2 = c26907a.f75317a.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            Fragment fragment2 = c26907a.f75317a.get(i8).f75334b;
                            if ((fragment2 != null ? fragment2.mContainerId : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i6 = i5;
                } else {
                    continue;
                }
            }
            i4++;
            i3 = i6;
        }
        return false;
    }
}
