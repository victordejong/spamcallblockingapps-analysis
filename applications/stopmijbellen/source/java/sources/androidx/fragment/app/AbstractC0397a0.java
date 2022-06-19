package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.AbstractC0102a;
import androidx.activity.AbstractC0103b;
import androidx.activity.AbstractC0104c;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.AbstractC0112b;
import androidx.activity.result.AbstractC0113c;
import androidx.activity.result.AbstractC0114d;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.C0110a;
import androidx.activity.result.C0115e;
import androidx.fragment.app.AbstractC0438i0;
import androidx.fragment.app.C0424d0;
import androidx.fragment.app.C0459p0;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0506a0;
import androidx.lifecycle.AbstractC0514d0;
import androidx.lifecycle.AbstractC0516f;
import androidx.lifecycle.AbstractC0546x;
import androidx.lifecycle.AbstractC0548z;
import androidx.lifecycle.C0510b0;
import androidx.lifecycle.C0512c0;
import com.google.android.gms.internal.ads.C1676a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p065d.AbstractC2130a;
import p065d.C2132b;
import p065d.C2133c;
import p120i0.C3056b;
/* renamed from: androidx.fragment.app.a0 */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0.class */
public abstract class AbstractC0397a0 {

    /* renamed from: A */
    public boolean f1687A;

    /* renamed from: B */
    public boolean f1688B;

    /* renamed from: C */
    public boolean f1689C;

    /* renamed from: D */
    public boolean f1690D;

    /* renamed from: E */
    public boolean f1691E;

    /* renamed from: F */
    public ArrayList<C0396a> f1692F;

    /* renamed from: G */
    public ArrayList<Boolean> f1693G;

    /* renamed from: H */
    public ArrayList<Fragment> f1694H;

    /* renamed from: I */
    public ArrayList<C0412n> f1695I;

    /* renamed from: J */
    public C0424d0 f1696J;

    /* renamed from: b */
    public boolean f1699b;

    /* renamed from: d */
    public ArrayList<C0396a> f1701d;

    /* renamed from: e */
    public ArrayList<Fragment> f1702e;

    /* renamed from: g */
    public OnBackPressedDispatcher f1704g;

    /* renamed from: q */
    public AbstractC0492x<?> f1714q;

    /* renamed from: r */
    public AbstractC0477t f1715r;

    /* renamed from: s */
    public Fragment f1716s;

    /* renamed from: t */
    public Fragment f1717t;

    /* renamed from: w */
    public AbstractC0113c<Intent> f1720w;

    /* renamed from: x */
    public AbstractC0113c<C0115e> f1721x;

    /* renamed from: y */
    public AbstractC0113c<String[]> f1722y;

    /* renamed from: a */
    public final ArrayList<AbstractC0410l> f1698a = new ArrayList<>();

    /* renamed from: c */
    public final C0436h0 f1700c = new C0436h0();

    /* renamed from: f */
    public final LayoutInflater$Factory2C0494y f1703f = new LayoutInflater$Factory2C0494y(this);

    /* renamed from: h */
    public final AbstractC0103b f1705h = new C0400c(false);

    /* renamed from: i */
    public final AtomicInteger f1706i = new AtomicInteger();

    /* renamed from: j */
    public final Map<String, Bundle> f1707j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k */
    public final Map<String, Object> f1708k = Collections.synchronizedMap(new HashMap());

    /* renamed from: l */
    public Map<Fragment, HashSet<C3056b>> f1709l = Collections.synchronizedMap(new HashMap());

    /* renamed from: m */
    public final C0459p0.AbstractC0460a f1710m = new C0401d();

    /* renamed from: n */
    public final C0497z f1711n = new C0497z(this);

    /* renamed from: o */
    public final CopyOnWriteArrayList<AbstractC0427e0> f1712o = new CopyOnWriteArrayList<>();

    /* renamed from: p */
    public int f1713p = -1;

    /* renamed from: u */
    public C0483w f1718u = new C0402e();

    /* renamed from: v */
    public AbstractC0493x0 f1719v = new C0403f(this);

    /* renamed from: z */
    public ArrayDeque<C0408k> f1723z = new ArrayDeque<>();

    /* renamed from: K */
    public Runnable f1697K = new RunnableC0404g();

    /* renamed from: androidx.fragment.app.a0$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$a.class */
    public class C0398a implements AbstractC0112b<C0110a> {
        public C0398a() {
            AbstractC0397a0.this = r4;
        }

        @Override // androidx.activity.result.AbstractC0112b
        /* renamed from: b */
        public void mo151b(C0110a c0110a) {
            C0110a c0110a2 = c0110a;
            C0408k pollFirst = AbstractC0397a0.this.f1723z.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = pollFirst.f1732a;
            int i = pollFirst.f1733b;
            Fragment m8106e = AbstractC0397a0.this.f1700c.m8106e(str);
            if (m8106e != null) {
                m8106e.onActivityResult(i, c0110a2.f264a, c0110a2.f265b);
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.a0$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$b.class */
    public class C0399b implements AbstractC0112b<Map<String, Boolean>> {
        public C0399b() {
            AbstractC0397a0.this = r4;
        }

        @Override // androidx.activity.result.AbstractC0112b
        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: b */
        public void mo151b(Map<String, Boolean> map) {
            Map<String, Boolean> map2 = map;
            String[] strArr = (String[]) map2.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map2.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            C0408k pollFirst = AbstractC0397a0.this.f1723z.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = pollFirst.f1732a;
            int i2 = pollFirst.f1733b;
            Fragment m8106e = AbstractC0397a0.this.f1700c.m8106e(str);
            if (m8106e != null) {
                m8106e.onRequestPermissionsResult(i2, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.a0$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$c.class */
    public class C0400c extends AbstractC0103b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0400c(boolean z) {
            super(z);
            AbstractC0397a0.this = r4;
        }

        @Override // androidx.activity.AbstractC0103b
        /* renamed from: a */
        public void mo8142a() {
            AbstractC0397a0 abstractC0397a0 = AbstractC0397a0.this;
            abstractC0397a0.m8203C(true);
            if (abstractC0397a0.f1705h.f238a) {
                abstractC0397a0.m8183W();
            } else {
                abstractC0397a0.f1704g.m8739b();
            }
        }
    }

    /* renamed from: androidx.fragment.app.a0$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$d.class */
    public class C0401d implements C0459p0.AbstractC0460a {
        public C0401d() {
            AbstractC0397a0.this = r4;
        }

        /* renamed from: a */
        public void m8141a(Fragment fragment, C3056b c3056b) {
            boolean z;
            synchronized (c3056b) {
                z = c3056b.f10388a;
            }
            if (!z) {
                AbstractC0397a0 abstractC0397a0 = AbstractC0397a0.this;
                HashSet<C3056b> hashSet = abstractC0397a0.f1709l.get(fragment);
                if (hashSet == null || !hashSet.remove(c3056b) || !hashSet.isEmpty()) {
                    return;
                }
                abstractC0397a0.f1709l.remove(fragment);
                if (fragment.mState >= 5) {
                    return;
                }
                abstractC0397a0.m8163i(fragment);
                abstractC0397a0.m8186T(fragment, abstractC0397a0.f1713p);
            }
        }

        /* renamed from: b */
        public void m8140b(Fragment fragment, C3056b c3056b) {
            AbstractC0397a0 abstractC0397a0 = AbstractC0397a0.this;
            if (abstractC0397a0.f1709l.get(fragment) == null) {
                abstractC0397a0.f1709l.put(fragment, new HashSet<>());
            }
            abstractC0397a0.f1709l.get(fragment).add(c3056b);
        }
    }

    /* renamed from: androidx.fragment.app.a0$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$e.class */
    public class C0402e extends C0483w {
        public C0402e() {
            AbstractC0397a0.this = r4;
        }

        @Override // androidx.fragment.app.C0483w
        /* renamed from: a */
        public Fragment mo8054a(ClassLoader classLoader, String str) {
            AbstractC0492x<?> abstractC0492x = AbstractC0397a0.this.f1714q;
            Context context = abstractC0492x.f1982b;
            Objects.requireNonNull(abstractC0492x);
            return Fragment.instantiate(context, str, null);
        }
    }

    /* renamed from: androidx.fragment.app.a0$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$f.class */
    public class C0403f implements AbstractC0493x0 {
        public C0403f(AbstractC0397a0 abstractC0397a0) {
        }
    }

    /* renamed from: androidx.fragment.app.a0$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$g.class */
    public class RunnableC0404g implements Runnable {
        public RunnableC0404g() {
            AbstractC0397a0.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC0397a0.this.m8203C(true);
        }
    }

    /* renamed from: androidx.fragment.app.a0$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$h.class */
    public class C0405h implements AbstractC0427e0 {

        /* renamed from: a */
        public final /* synthetic */ Fragment f1730a;

        public C0405h(AbstractC0397a0 abstractC0397a0, Fragment fragment) {
            this.f1730a = fragment;
        }

        @Override // androidx.fragment.app.AbstractC0427e0
        /* renamed from: a */
        public void mo8092a(AbstractC0397a0 abstractC0397a0, Fragment fragment) {
            this.f1730a.onAttachFragment(fragment);
        }
    }

    /* renamed from: androidx.fragment.app.a0$i */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$i.class */
    public class C0406i implements AbstractC0112b<C0110a> {
        public C0406i() {
            AbstractC0397a0.this = r4;
        }

        @Override // androidx.activity.result.AbstractC0112b
        /* renamed from: b */
        public void mo151b(C0110a c0110a) {
            C0110a c0110a2 = c0110a;
            C0408k pollFirst = AbstractC0397a0.this.f1723z.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = pollFirst.f1732a;
            int i = pollFirst.f1733b;
            Fragment m8106e = AbstractC0397a0.this.f1700c.m8106e(str);
            if (m8106e != null) {
                m8106e.onActivityResult(i, c0110a2.f264a, c0110a2.f265b);
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.a0$j */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$j.class */
    public static class C0407j extends AbstractC2130a<C0115e, C0110a> {
        @Override // p065d.AbstractC2130a
        /* renamed from: a */
        public Intent mo3848a(Context context, C0115e c0115e) {
            C0115e c0115e2 = c0115e;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = c0115e2.f267b;
            C0115e c0115e3 = c0115e2;
            if (intent2 != null) {
                Bundle bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                c0115e3 = c0115e2;
                if (bundleExtra != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    c0115e3 = c0115e2;
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        c0115e3 = new C0115e(c0115e2.f266a, null, c0115e2.f268c, c0115e2.f269d);
                    }
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", c0115e3);
            if (AbstractC0397a0.m8192N(2)) {
                intent.toString();
            }
            return intent;
        }

        @Override // p065d.AbstractC2130a
        /* renamed from: c */
        public C0110a mo3847c(int i, Intent intent) {
            return new C0110a(i, intent);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* renamed from: androidx.fragment.app.a0$k */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$k.class */
    public static class C0408k implements Parcelable {
        public static final Parcelable.Creator<C0408k> CREATOR = new C0409a();

        /* renamed from: a */
        public String f1732a;

        /* renamed from: b */
        public int f1733b;

        /* renamed from: androidx.fragment.app.a0$k$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$k$a.class */
        public class C0409a implements Parcelable.Creator<C0408k> {
            @Override // android.os.Parcelable.Creator
            public C0408k createFromParcel(Parcel parcel) {
                return new C0408k(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public C0408k[] newArray(int i) {
                return new C0408k[i];
            }
        }

        public C0408k(Parcel parcel) {
            this.f1732a = parcel.readString();
            this.f1733b = parcel.readInt();
        }

        public C0408k(String str, int i) {
            this.f1732a = str;
            this.f1733b = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1732a);
            parcel.writeInt(this.f1733b);
        }
    }

    /* renamed from: androidx.fragment.app.a0$l */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$l.class */
    public interface AbstractC0410l {
        /* renamed from: a */
        boolean mo8139a(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.a0$m */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$m.class */
    public class C0411m implements AbstractC0410l {

        /* renamed from: a */
        public final int f1734a;

        /* renamed from: b */
        public final int f1735b;

        public C0411m(String str, int i, int i2) {
            AbstractC0397a0.this = r4;
            this.f1734a = i;
            this.f1735b = i2;
        }

        @Override // androidx.fragment.app.AbstractC0397a0.AbstractC0410l
        /* renamed from: a */
        public boolean mo8139a(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = AbstractC0397a0.this.f1717t;
            if (fragment == null || this.f1734a >= 0 || !fragment.getChildFragmentManager().m8183W()) {
                return AbstractC0397a0.this.m8181Y(arrayList, arrayList2, null, this.f1734a, this.f1735b);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.a0$n */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/a0$n.class */
    public static class C0412n implements Fragment.AbstractC0393k {

        /* renamed from: a */
        public final boolean f1737a;

        /* renamed from: b */
        public final C0396a f1738b;

        /* renamed from: c */
        public int f1739c;

        /* renamed from: a */
        public void m8138a() {
            boolean z = this.f1739c > 0;
            for (Fragment fragment : this.f1738b.f1684q.f1700c.m8102i()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            C0396a c0396a = this.f1738b;
            c0396a.f1684q.m8167g(c0396a, this.f1737a, !z, true);
        }
    }

    /* renamed from: N */
    public static boolean m8192N(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: A */
    public void m8205A(AbstractC0410l abstractC0410l, boolean z) {
        if (!z) {
            if (this.f1714q == null) {
                if (!this.f1690D) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (m8188R()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f1698a) {
            if (this.f1714q == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f1698a.add(abstractC0410l);
            m8172d0();
        }
    }

    /* renamed from: B */
    public final void m8204B(boolean z) {
        if (!this.f1699b) {
            if (this.f1714q == null) {
                if (!this.f1690D) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (Looper.myLooper() != this.f1714q.f1983c.getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            } else {
                if (!z && m8188R()) {
                    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                }
                if (this.f1692F == null) {
                    this.f1692F = new ArrayList<>();
                    this.f1693G = new ArrayList<>();
                }
                this.f1699b = true;
                try {
                    m8200F(null, null);
                    return;
                } finally {
                    this.f1699b = false;
                }
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: C */
    public boolean m8203C(boolean z) {
        boolean z2;
        m8204B(z);
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            ArrayList<C0396a> arrayList = this.f1692F;
            ArrayList<Boolean> arrayList2 = this.f1693G;
            synchronized (this.f1698a) {
                if (this.f1698a.isEmpty()) {
                    z2 = false;
                } else {
                    int size = this.f1698a.size();
                    z2 = false;
                    for (int i = 0; i < size; i++) {
                        z2 |= this.f1698a.get(i).mo8139a(arrayList, arrayList2);
                    }
                    this.f1698a.clear();
                    this.f1714q.f1983c.removeCallbacks(this.f1697K);
                }
            }
            if (!z2) {
                m8158k0();
                m8145x();
                this.f1700c.m8109b();
                return z4;
            }
            this.f1699b = true;
            try {
                m8178a0(this.f1692F, this.f1693G);
                m8171e();
                z3 = true;
            } catch (Throwable th) {
                m8171e();
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: D */
    public void m8202D(AbstractC0410l abstractC0410l, boolean z) {
        if (!z || (this.f1714q != null && !this.f1690D)) {
            m8204B(z);
            ((C0396a) abstractC0410l).mo8139a(this.f1692F, this.f1693G);
            this.f1699b = true;
            try {
                m8178a0(this.f1692F, this.f1693G);
                m8171e();
                m8158k0();
                m8145x();
                this.f1700c.m8109b();
            } catch (Throwable th) {
                m8171e();
                throw th;
            }
        }
    }

    /* renamed from: E */
    public final void m8201E(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        Fragment fragment;
        int i3;
        Fragment fragment2;
        boolean z = arrayList.get(i).f1837p;
        ArrayList<Fragment> arrayList3 = this.f1694H;
        if (arrayList3 == null) {
            this.f1694H = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f1694H.addAll(this.f1700c.m8102i());
        Fragment fragment3 = this.f1717t;
        int i4 = i;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (i4 >= i2) {
                this.f1694H.clear();
                if (!z && this.f1713p >= 1) {
                    for (int i5 = i; i5 < i2; i5++) {
                        Iterator<AbstractC0438i0.C0439a> it2 = arrayList.get(i5).f1822a.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment4 = it2.next().f1839b;
                            if (fragment4 != null && fragment4.mFragmentManager != null) {
                                this.f1700c.m8101j(m8165h(fragment4));
                            }
                        }
                    }
                }
                int i6 = i;
                while (i6 < i2) {
                    C0396a c0396a = arrayList.get(i6);
                    if (arrayList2.get(i6).booleanValue()) {
                        c0396a.m8215f(-1);
                        c0396a.m8209l(i6 == i2 - 1);
                    } else {
                        c0396a.m8215f(1);
                        c0396a.m8210k();
                    }
                    i6++;
                }
                boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
                for (int i7 = i; i7 < i2; i7++) {
                    C0396a c0396a2 = arrayList.get(i7);
                    if (booleanValue) {
                        for (int size = c0396a2.f1822a.size() - 1; size >= 0; size--) {
                            Fragment fragment5 = c0396a2.f1822a.get(size).f1839b;
                            if (fragment5 != null) {
                                m8165h(fragment5).m8117k();
                            }
                        }
                    } else {
                        Iterator<AbstractC0438i0.C0439a> it3 = c0396a2.f1822a.iterator();
                        while (it3.hasNext()) {
                            Fragment fragment6 = it3.next().f1839b;
                            if (fragment6 != null) {
                                m8165h(fragment6).m8117k();
                            }
                        }
                    }
                }
                m8187S(this.f1713p, true);
                HashSet hashSet = new HashSet();
                for (int i8 = i; i8 < i2; i8++) {
                    Iterator<AbstractC0438i0.C0439a> it4 = arrayList.get(i8).f1822a.iterator();
                    while (it4.hasNext()) {
                        Fragment fragment7 = it4.next().f1839b;
                        if (fragment7 != null && (viewGroup = fragment7.mContainer) != null) {
                            hashSet.add(AbstractC0484w0.m8045g(viewGroup, m8194L()));
                        }
                    }
                }
                Iterator it5 = hashSet.iterator();
                while (it5.hasNext()) {
                    AbstractC0484w0 abstractC0484w0 = (AbstractC0484w0) it5.next();
                    abstractC0484w0.f1957d = booleanValue;
                    abstractC0484w0.m8044h();
                    abstractC0484w0.m8049c();
                }
                while (i < i2) {
                    C0396a c0396a3 = arrayList.get(i);
                    if (arrayList2.get(i).booleanValue() && c0396a3.f1686s >= 0) {
                        c0396a3.f1686s = -1;
                    }
                    Objects.requireNonNull(c0396a3);
                    i++;
                }
                return;
            }
            C0396a c0396a4 = arrayList.get(i4);
            if (!arrayList2.get(i4).booleanValue()) {
                ArrayList<Fragment> arrayList4 = this.f1694H;
                int i9 = 0;
                while (true) {
                    fragment = fragment3;
                    if (i9 < c0396a4.f1822a.size()) {
                        AbstractC0438i0.C0439a c0439a = c0396a4.f1822a.get(i9);
                        int i10 = c0439a.f1838a;
                        if (i10 != 1) {
                            if (i10 != 2) {
                                if (i10 == 3 || i10 == 6) {
                                    arrayList4.remove(c0439a.f1839b);
                                    Fragment fragment8 = c0439a.f1839b;
                                    fragment2 = fragment3;
                                    i3 = i9;
                                    if (fragment8 == fragment3) {
                                        c0396a4.f1822a.add(i9, new AbstractC0438i0.C0439a(9, fragment8));
                                        i9++;
                                        fragment3 = null;
                                        i9++;
                                    }
                                } else if (i10 != 7) {
                                    if (i10 != 8) {
                                        fragment2 = fragment3;
                                        i3 = i9;
                                    } else {
                                        c0396a4.f1822a.add(i9, new AbstractC0438i0.C0439a(9, fragment3));
                                        i3 = i9 + 1;
                                        fragment2 = c0439a.f1839b;
                                    }
                                }
                                fragment3 = fragment2;
                                i9 = i3;
                                i9++;
                            } else {
                                Fragment fragment9 = c0439a.f1839b;
                                int i11 = fragment9.mContainerId;
                                boolean z4 = false;
                                for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                                    Fragment fragment10 = arrayList4.get(size2);
                                    if (fragment10.mContainerId == i11) {
                                        if (fragment10 == fragment9) {
                                            z4 = true;
                                        } else {
                                            if (fragment10 == fragment3) {
                                                c0396a4.f1822a.add(i9, new AbstractC0438i0.C0439a(9, fragment10));
                                                i9++;
                                                fragment3 = null;
                                            }
                                            AbstractC0438i0.C0439a c0439a2 = new AbstractC0438i0.C0439a(3, fragment10);
                                            c0439a2.f1840c = c0439a.f1840c;
                                            c0439a2.f1842e = c0439a.f1842e;
                                            c0439a2.f1841d = c0439a.f1841d;
                                            c0439a2.f1843f = c0439a.f1843f;
                                            c0396a4.f1822a.add(i9, c0439a2);
                                            arrayList4.remove(fragment10);
                                            i9++;
                                        }
                                    }
                                }
                                if (z4) {
                                    c0396a4.f1822a.remove(i9);
                                    i3 = i9 - 1;
                                    fragment2 = fragment3;
                                    fragment3 = fragment2;
                                    i9 = i3;
                                    i9++;
                                } else {
                                    c0439a.f1838a = 1;
                                    arrayList4.add(fragment9);
                                    i9++;
                                }
                            }
                        }
                        arrayList4.add(c0439a.f1839b);
                        i9++;
                    }
                }
            } else {
                ArrayList<Fragment> arrayList5 = this.f1694H;
                int size3 = c0396a4.f1822a.size() - 1;
                while (true) {
                    fragment = fragment3;
                    if (size3 >= 0) {
                        AbstractC0438i0.C0439a c0439a3 = c0396a4.f1822a.get(size3);
                        int i12 = c0439a3.f1838a;
                        if (i12 != 1) {
                            if (i12 != 3) {
                                switch (i12) {
                                    case 8:
                                        fragment3 = null;
                                        break;
                                    case 9:
                                        fragment3 = c0439a3.f1839b;
                                        break;
                                    case 10:
                                        c0439a3.f1845h = c0439a3.f1844g;
                                        break;
                                }
                                size3--;
                            }
                            arrayList5.add(c0439a3.f1839b);
                            size3--;
                        }
                        arrayList5.remove(c0439a3.f1839b);
                        size3--;
                    }
                }
            }
            i4++;
            fragment3 = fragment;
            z2 = z3 || c0396a4.f1828g;
        }
    }

    /* renamed from: F */
    public final void m8200F(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<C0412n> arrayList3 = this.f1695I;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = size;
            if (i3 < i4) {
                C0412n c0412n = this.f1695I.get(i3);
                if (arrayList == null || c0412n.f1737a || (indexOf2 = arrayList.indexOf(c0412n.f1738b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!(c0412n.f1739c == 0)) {
                        size = i4;
                        i = i3;
                        if (arrayList != null) {
                            size = i4;
                            i = i3;
                            if (!c0412n.f1738b.m8207n(arrayList, 0, arrayList.size())) {
                            }
                        }
                    }
                    this.f1695I.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    if (arrayList == null || c0412n.f1737a || (indexOf = arrayList.indexOf(c0412n.f1738b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        c0412n.m8138a();
                    } else {
                        C0396a c0396a = c0412n.f1738b;
                        c0396a.f1684q.m8167g(c0396a, c0412n.f1737a, false, false);
                    }
                } else {
                    this.f1695I.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    C0396a c0396a2 = c0412n.f1738b;
                    c0396a2.f1684q.m8167g(c0396a2, c0412n.f1737a, false, false);
                }
                i2 = i + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: G */
    public Fragment m8199G(String str) {
        return this.f1700c.m8107d(str);
    }

    /* renamed from: H */
    public Fragment m8198H(int i) {
        Fragment fragment;
        C0436h0 c0436h0 = this.f1700c;
        int size = ((ArrayList) c0436h0.f1816a).size();
        while (true) {
            int i2 = size - 1;
            if (i2 < 0) {
                Iterator it2 = ((HashMap) c0436h0.f1817b).values().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        fragment = null;
                        break;
                    }
                    C0433g0 c0433g0 = (C0433g0) it2.next();
                    if (c0433g0 != null) {
                        fragment = c0433g0.f1808c;
                        if (fragment.mFragmentId == i) {
                            break;
                        }
                    }
                }
            } else {
                fragment = (Fragment) ((ArrayList) c0436h0.f1816a).get(i2);
                size = i2;
                if (fragment != null) {
                    size = i2;
                    if (fragment.mFragmentId == i) {
                        break;
                    }
                }
            }
        }
        return fragment;
    }

    /* renamed from: I */
    public Fragment m8197I(String str) {
        Fragment fragment;
        C0436h0 c0436h0 = this.f1700c;
        Objects.requireNonNull(c0436h0);
        if (str != null) {
            int size = ((ArrayList) c0436h0.f1816a).size();
            while (true) {
                int i = size - 1;
                if (i < 0) {
                    break;
                }
                Fragment fragment2 = (Fragment) ((ArrayList) c0436h0.f1816a).get(i);
                size = i;
                if (fragment2 != null) {
                    size = i;
                    if (str.equals(fragment2.mTag)) {
                        fragment = fragment2;
                        break;
                    }
                }
            }
            return fragment;
        }
        if (str != null) {
            for (C0433g0 c0433g0 : ((HashMap) c0436h0.f1817b).values()) {
                if (c0433g0 != null) {
                    Fragment fragment3 = c0433g0.f1808c;
                    if (str.equals(fragment3.mTag)) {
                        fragment = fragment3;
                        break;
                    }
                }
            }
        }
        fragment = null;
        return fragment;
    }

    /* renamed from: J */
    public final ViewGroup m8196J(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId <= 0 || !this.f1715r.mo8060d()) {
            return null;
        }
        View mo8061c = this.f1715r.mo8061c(fragment.mContainerId);
        if (!(mo8061c instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) mo8061c;
    }

    /* renamed from: K */
    public C0483w m8195K() {
        Fragment fragment = this.f1716s;
        return fragment != null ? fragment.mFragmentManager.m8195K() : this.f1718u;
    }

    /* renamed from: L */
    public AbstractC0493x0 m8194L() {
        Fragment fragment = this.f1716s;
        return fragment != null ? fragment.mFragmentManager.m8194L() : this.f1719v;
    }

    /* renamed from: M */
    public void m8193M(Fragment fragment) {
        if (m8192N(2)) {
            Objects.toString(fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            m8164h0(fragment);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4.mMenuVisible == false) goto L6;
     */
    /* renamed from: O */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8191O(androidx.fragment.app.Fragment r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0.mHasMenu
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L14
            r0 = r6
            r5 = r0
            r0 = r4
            boolean r0 = r0.mMenuVisible
            if (r0 != 0) goto L6d
        L14:
            r0 = r4
            androidx.fragment.app.a0 r0 = r0.mChildFragmentManager
            r4 = r0
            r0 = r4
            androidx.fragment.app.h0 r0 = r0.f1700c
            java.util.List r0 = r0.m8104g()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            java.util.Iterator r0 = r0.iterator()
            r7 = r0
            r0 = 0
            r5 = r0
        L2a:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L5e
            r0 = r7
            java.lang.Object r0 = r0.next()
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r8 = r0
            r0 = r5
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L50
            r0 = r4
            r1 = r8
            boolean r0 = r0.m8191O(r1)
            r9 = r0
        L50:
            r0 = r9
            r5 = r0
            r0 = r9
            if (r0 == 0) goto L2a
            r0 = 1
            r10 = r0
            goto L61
        L5e:
            r0 = 0
            r10 = r0
        L61:
            r0 = r10
            if (r0 == 0) goto L6b
            r0 = r6
            r5 = r0
            goto L6d
        L6b:
            r0 = 0
            r5 = r0
        L6d:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.AbstractC0397a0.m8191O(androidx.fragment.app.Fragment):boolean");
    }

    /* renamed from: P */
    public boolean m8190P(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    /* renamed from: Q */
    public boolean m8189Q(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        AbstractC0397a0 abstractC0397a0 = fragment.mFragmentManager;
        if (!fragment.equals(abstractC0397a0.f1717t) || !m8189Q(abstractC0397a0.f1716s)) {
            z = false;
        }
        return z;
    }

    /* renamed from: R */
    public boolean m8188R() {
        return this.f1688B || this.f1689C;
    }

    /* renamed from: S */
    public void m8187S(int i, boolean z) {
        AbstractC0492x<?> abstractC0492x;
        if (this.f1714q != null || i == -1) {
            if (!z && i == this.f1713p) {
                return;
            }
            this.f1713p = i;
            C0436h0 c0436h0 = this.f1700c;
            Iterator it2 = ((ArrayList) c0436h0.f1816a).iterator();
            while (it2.hasNext()) {
                C0433g0 c0433g0 = (C0433g0) ((HashMap) c0436h0.f1817b).get(((Fragment) it2.next()).mWho);
                if (c0433g0 != null) {
                    c0433g0.m8117k();
                }
            }
            for (C0433g0 c0433g02 : ((HashMap) c0436h0.f1817b).values()) {
                if (c0433g02 != null) {
                    c0433g02.m8117k();
                    Fragment fragment = c0433g02.f1808c;
                    boolean z2 = false;
                    if (fragment.mRemoving) {
                        z2 = false;
                        if (!fragment.isInBackStack()) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        c0436h0.m8100k(c0433g02);
                    }
                }
            }
            m8160j0();
            if (!this.f1687A || (abstractC0492x = this.f1714q) == null || this.f1713p != 7) {
                return;
            }
            abstractC0492x.mo8031j();
            this.f1687A = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ec  */
    /* renamed from: T */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m8186T(androidx.fragment.app.Fragment r10, int r11) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.AbstractC0397a0.m8186T(androidx.fragment.app.Fragment, int):void");
    }

    /* renamed from: U */
    public void m8185U() {
        if (this.f1714q == null) {
            return;
        }
        this.f1688B = false;
        this.f1689C = false;
        this.f1696J.f1784h = false;
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* renamed from: V */
    public void m8184V(C0433g0 c0433g0) {
        Fragment fragment = c0433g0.f1808c;
        if (fragment.mDeferStart) {
            if (this.f1699b) {
                this.f1691E = true;
                return;
            }
            fragment.mDeferStart = false;
            c0433g0.m8117k();
        }
    }

    /* renamed from: W */
    public boolean m8183W() {
        return m8182X(null, -1, 0);
    }

    /* renamed from: X */
    public final boolean m8182X(String str, int i, int i2) {
        m8203C(false);
        m8204B(true);
        Fragment fragment = this.f1717t;
        if (fragment == null || i >= 0 || str != null || !fragment.getChildFragmentManager().m8183W()) {
            boolean m8181Y = m8181Y(this.f1692F, this.f1693G, str, i, i2);
            if (m8181Y) {
                this.f1699b = true;
                try {
                    m8178a0(this.f1692F, this.f1693G);
                } finally {
                    m8171e();
                }
            }
            m8158k0();
            m8145x();
            this.f1700c.m8109b();
            return m8181Y;
        }
        return true;
    }

    /* renamed from: Y */
    public boolean m8181Y(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        ArrayList<C0396a> arrayList3 = this.f1701d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f1701d.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        int i3 = -1;
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                C0396a c0396a = this.f1701d.get(size2);
                if ((str != null && str.equals(c0396a.f1830i)) || (i >= 0 && i == c0396a.f1686s)) {
                    break;
                }
                size2--;
            }
            if (size2 < 0) {
                return false;
            }
            int i4 = size2;
            if ((i2 & 1) != 0) {
                while (true) {
                    int i5 = size2 - 1;
                    i4 = i5;
                    if (i5 < 0) {
                        break;
                    }
                    C0396a c0396a2 = this.f1701d.get(i5);
                    if (str != null) {
                        size2 = i5;
                        if (str.equals(c0396a2.f1830i)) {
                            continue;
                        }
                    }
                    i4 = i5;
                    if (i < 0) {
                        break;
                    }
                    i4 = i5;
                    if (i != c0396a2.f1686s) {
                        break;
                    }
                    size2 = i5;
                }
            }
            i3 = i4;
        }
        if (i3 == this.f1701d.size() - 1) {
            return false;
        }
        for (int size3 = this.f1701d.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f1701d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* renamed from: Z */
    public void m8180Z(Fragment fragment) {
        if (m8192N(2)) {
            Objects.toString(fragment);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!isInBackStack)) {
            this.f1700c.m8099l(fragment);
            if (m8191O(fragment)) {
                this.f1687A = true;
            }
            fragment.mRemoving = true;
            m8164h0(fragment);
        }
    }

    /* renamed from: a */
    public C0433g0 m8179a(Fragment fragment) {
        if (m8192N(2)) {
            Objects.toString(fragment);
        }
        C0433g0 m8165h = m8165h(fragment);
        fragment.mFragmentManager = this;
        this.f1700c.m8101j(m8165h);
        if (!fragment.mDetached) {
            this.f1700c.m8110a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (m8191O(fragment)) {
                this.f1687A = true;
            }
        }
        return m8165h;
    }

    /* renamed from: a0 */
    public final void m8178a0(ArrayList<C0396a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m8200F(arrayList, arrayList2);
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i3;
            if (i2 >= size) {
                break;
            }
            int i4 = i2;
            int i5 = i;
            if (!arrayList.get(i2).f1837p) {
                if (i != i2) {
                    m8201E(arrayList, arrayList2, i, i2);
                }
                int i6 = i2 + 1;
                i5 = i6;
                if (arrayList2.get(i2).booleanValue()) {
                    while (true) {
                        i5 = i6;
                        if (i6 >= size) {
                            break;
                        }
                        i5 = i6;
                        if (!arrayList2.get(i6).booleanValue()) {
                            break;
                        }
                        i5 = i6;
                        if (arrayList.get(i6).f1837p) {
                            break;
                        }
                        i6++;
                    }
                }
                m8201E(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m8201E(arrayList, arrayList2, i, size);
    }

    @SuppressLint({"SyntheticAccessor"})
    /* renamed from: b */
    public void m8177b(AbstractC0492x<?> abstractC0492x, AbstractC0477t abstractC0477t, Fragment fragment) {
        AbstractC0546x abstractC0546x;
        if (this.f1714q == null) {
            this.f1714q = abstractC0492x;
            this.f1715r = abstractC0477t;
            this.f1716s = fragment;
            if (fragment != null) {
                this.f1712o.add(new C0405h(this, fragment));
            } else if (abstractC0492x instanceof AbstractC0427e0) {
                this.f1712o.add((AbstractC0427e0) abstractC0492x);
            }
            if (this.f1716s != null) {
                m8158k0();
            }
            if (abstractC0492x instanceof AbstractC0104c) {
                AbstractC0104c abstractC0104c = (AbstractC0104c) abstractC0492x;
                OnBackPressedDispatcher mo8091b = abstractC0104c.mo8091b();
                this.f1704g = mo8091b;
                AbstractC0104c abstractC0104c2 = abstractC0104c;
                if (fragment != null) {
                    abstractC0104c2 = fragment;
                }
                mo8091b.m8740a(abstractC0104c2, this.f1705h);
            }
            if (fragment != null) {
                C0424d0 c0424d0 = fragment.mFragmentManager.f1696J;
                C0424d0 c0424d02 = c0424d0.f1780d.get(fragment.mWho);
                C0424d0 c0424d03 = c0424d02;
                if (c0424d02 == null) {
                    c0424d03 = new C0424d0(c0424d0.f1782f);
                    c0424d0.f1780d.put(fragment.mWho, c0424d03);
                }
                this.f1696J = c0424d03;
            } else if (abstractC0492x instanceof AbstractC0514d0) {
                C0512c0 viewModelStore = ((AbstractC0514d0) abstractC0492x).getViewModelStore();
                AbstractC0548z abstractC0548z = C0424d0.f1778i;
                String canonicalName = C0424d0.class.getCanonicalName();
                if (canonicalName == null) {
                    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                }
                String m4789h = C1676a.m4789h("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
                AbstractC0546x abstractC0546x2 = viewModelStore.f2027a.get(m4789h);
                if (C0424d0.class.isInstance(abstractC0546x2)) {
                    abstractC0546x = abstractC0546x2;
                    if (abstractC0548z instanceof C0510b0) {
                        ((C0510b0) abstractC0548z).mo7974b(abstractC0546x2);
                        abstractC0546x = abstractC0546x2;
                    }
                } else {
                    AbstractC0546x mo7973c = abstractC0548z instanceof AbstractC0506a0 ? ((AbstractC0506a0) abstractC0548z).mo7973c(m4789h, C0424d0.class) : ((C0424d0.C0425a) abstractC0548z).mo2864a(C0424d0.class);
                    AbstractC0546x put = viewModelStore.f2027a.put(m4789h, mo7973c);
                    abstractC0546x = mo7973c;
                    if (put != null) {
                        put.mo7431a();
                        abstractC0546x = mo7973c;
                    }
                }
                this.f1696J = (C0424d0) abstractC0546x;
            } else {
                this.f1696J = new C0424d0(false);
            }
            this.f1696J.f1784h = m8188R();
            this.f1700c.f1818c = this.f1696J;
            AbstractC0492x<?> abstractC0492x2 = this.f1714q;
            if (!(abstractC0492x2 instanceof AbstractC0114d)) {
                return;
            }
            ActivityResultRegistry mo8090i = ((AbstractC0114d) abstractC0492x2).mo8090i();
            String m4789h2 = C1676a.m4789h("FragmentManager:", fragment != null ? C0082b.m8754h(new StringBuilder(), fragment.mWho, ":") : "");
            this.f1720w = mo8090i.m8735d(C1676a.m4789h(m4789h2, "StartActivityForResult"), new C2133c(), new C0406i());
            this.f1721x = mo8090i.m8735d(C1676a.m4789h(m4789h2, "StartIntentSenderForResult"), new C0407j(), new C0398a());
            this.f1722y = mo8090i.m8735d(C1676a.m4789h(m4789h2, "RequestPermissions"), new C2132b(), new C0399b());
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: b0 */
    public void m8176b0(Parcelable parcelable) {
        C0433g0 c0433g0;
        if (parcelable == null) {
            return;
        }
        C0421c0 c0421c0 = (C0421c0) parcelable;
        if (c0421c0.f1765a == null) {
            return;
        }
        ((HashMap) this.f1700c.f1817b).clear();
        Iterator<C0430f0> it2 = c0421c0.f1765a.iterator();
        while (it2.hasNext()) {
            C0430f0 next = it2.next();
            if (next != null) {
                Fragment fragment = this.f1696J.f1779c.get(next.f1791b);
                if (fragment != null) {
                    if (m8192N(2)) {
                        fragment.toString();
                    }
                    c0433g0 = new C0433g0(this.f1711n, this.f1700c, fragment, next);
                } else {
                    c0433g0 = new C0433g0(this.f1711n, this.f1700c, this.f1714q.f1982b.getClassLoader(), m8195K(), next);
                }
                Fragment fragment2 = c0433g0.f1808c;
                fragment2.mFragmentManager = this;
                if (m8192N(2)) {
                    fragment2.toString();
                }
                c0433g0.m8115m(this.f1714q.f1982b.getClassLoader());
                this.f1700c.m8101j(c0433g0);
                c0433g0.f1810e = this.f1713p;
            }
        }
        C0424d0 c0424d0 = this.f1696J;
        Objects.requireNonNull(c0424d0);
        Iterator it3 = new ArrayList(c0424d0.f1779c.values()).iterator();
        while (it3.hasNext()) {
            Fragment fragment3 = (Fragment) it3.next();
            if (!this.f1700c.m8108c(fragment3.mWho)) {
                if (m8192N(2)) {
                    fragment3.toString();
                    Objects.toString(c0421c0.f1765a);
                }
                this.f1696J.m8129d(fragment3);
                fragment3.mFragmentManager = this;
                C0433g0 c0433g02 = new C0433g0(this.f1711n, this.f1700c, fragment3);
                c0433g02.f1810e = 1;
                c0433g02.m8117k();
                fragment3.mRemoving = true;
                c0433g02.m8117k();
            }
        }
        C0436h0 c0436h0 = this.f1700c;
        ArrayList<String> arrayList = c0421c0.f1766b;
        ((ArrayList) c0436h0.f1816a).clear();
        if (arrayList != null) {
            for (String str : arrayList) {
                Fragment m8107d = c0436h0.m8107d(str);
                if (m8107d == null) {
                    throw new IllegalStateException(C0082b.m8755g("No instantiated fragment for (", str, ")"));
                }
                if (m8192N(2)) {
                    m8107d.toString();
                }
                c0436h0.m8110a(m8107d);
            }
        }
        if (c0421c0.f1767c != null) {
            this.f1701d = new ArrayList<>(c0421c0.f1767c.length);
            int i = 0;
            while (true) {
                C0413b[] c0413bArr = c0421c0.f1767c;
                if (i >= c0413bArr.length) {
                    break;
                }
                C0413b c0413b = c0413bArr[i];
                Objects.requireNonNull(c0413b);
                C0396a c0396a = new C0396a(this);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int[] iArr = c0413b.f1740a;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    AbstractC0438i0.C0439a c0439a = new AbstractC0438i0.C0439a();
                    int i4 = i2 + 1;
                    c0439a.f1838a = iArr[i2];
                    if (m8192N(2)) {
                        c0396a.toString();
                        int i5 = c0413b.f1740a[i4];
                    }
                    String str2 = c0413b.f1741b.get(i3);
                    if (str2 != null) {
                        c0439a.f1839b = this.f1700c.m8107d(str2);
                    } else {
                        c0439a.f1839b = null;
                    }
                    c0439a.f1844g = AbstractC0516f.EnumC0519c.values()[c0413b.f1742c[i3]];
                    c0439a.f1845h = AbstractC0516f.EnumC0519c.values()[c0413b.f1743d[i3]];
                    int[] iArr2 = c0413b.f1740a;
                    int i6 = i4 + 1;
                    int i7 = iArr2[i4];
                    c0439a.f1840c = i7;
                    int i8 = i6 + 1;
                    int i9 = iArr2[i6];
                    c0439a.f1841d = i9;
                    int i10 = i8 + 1;
                    int i11 = iArr2[i8];
                    c0439a.f1842e = i11;
                    int i12 = iArr2[i10];
                    c0439a.f1843f = i12;
                    c0396a.f1823b = i7;
                    c0396a.f1824c = i9;
                    c0396a.f1825d = i11;
                    c0396a.f1826e = i12;
                    c0396a.m8098b(c0439a);
                    i3++;
                    i2 = i10 + 1;
                }
                c0396a.f1827f = c0413b.f1744e;
                c0396a.f1830i = c0413b.f1745f;
                c0396a.f1686s = c0413b.f1746g;
                c0396a.f1828g = true;
                c0396a.f1831j = c0413b.f1747h;
                c0396a.f1832k = c0413b.f1748i;
                c0396a.f1833l = c0413b.f1749j;
                c0396a.f1834m = c0413b.f1750k;
                c0396a.f1835n = c0413b.f1751l;
                c0396a.f1836o = c0413b.f1752m;
                c0396a.f1837p = c0413b.f1753n;
                c0396a.m8215f(1);
                if (m8192N(2)) {
                    c0396a.toString();
                    PrintWriter printWriter = new PrintWriter(new C0482v0("FragmentManager"));
                    c0396a.m8211j("  ", printWriter, false);
                    printWriter.close();
                }
                this.f1701d.add(c0396a);
                i++;
            }
        } else {
            this.f1701d = null;
        }
        this.f1706i.set(c0421c0.f1768d);
        String str3 = c0421c0.f1769e;
        if (str3 != null) {
            Fragment m8199G = m8199G(str3);
            this.f1717t = m8199G;
            m8149t(m8199G);
        }
        ArrayList<String> arrayList2 = c0421c0.f1770f;
        if (arrayList2 != null) {
            for (int i13 = 0; i13 < arrayList2.size(); i13++) {
                Bundle bundle = c0421c0.f1771g.get(i13);
                bundle.setClassLoader(this.f1714q.f1982b.getClassLoader());
                this.f1707j.put(arrayList2.get(i13), bundle);
            }
        }
        this.f1723z = new ArrayDeque<>(c0421c0.f1772h);
    }

    /* renamed from: c */
    public void m8175c(Fragment fragment) {
        if (m8192N(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f1700c.m8110a(fragment);
            if (m8192N(2)) {
                fragment.toString();
            }
            if (!m8191O(fragment)) {
                return;
            }
            this.f1687A = true;
        }
    }

    /* renamed from: c0 */
    public Parcelable m8174c0() {
        int i;
        ArrayList<String> arrayList;
        Iterator it2 = ((HashSet) m8169f()).iterator();
        while (true) {
            i = 0;
            if (!it2.hasNext()) {
                break;
            }
            AbstractC0484w0 abstractC0484w0 = (AbstractC0484w0) it2.next();
            if (abstractC0484w0.f1958e) {
                abstractC0484w0.f1958e = false;
                abstractC0484w0.m8049c();
            }
        }
        m8143z();
        m8203C(true);
        this.f1688B = true;
        this.f1696J.f1784h = true;
        C0436h0 c0436h0 = this.f1700c;
        Objects.requireNonNull(c0436h0);
        ArrayList<C0430f0> arrayList2 = new ArrayList<>(((HashMap) c0436h0.f1817b).size());
        Iterator it3 = ((HashMap) c0436h0.f1817b).values().iterator();
        while (true) {
            Bundle bundle = null;
            if (!it3.hasNext()) {
                break;
            }
            C0433g0 c0433g0 = (C0433g0) it3.next();
            if (c0433g0 != null) {
                Fragment fragment = c0433g0.f1808c;
                C0430f0 c0430f0 = new C0430f0(fragment);
                Fragment fragment2 = c0433g0.f1808c;
                if (fragment2.mState <= -1 || c0430f0.f1802m != null) {
                    c0430f0.f1802m = fragment2.mSavedFragmentState;
                } else {
                    Bundle bundle2 = new Bundle();
                    c0433g0.f1808c.performSaveInstanceState(bundle2);
                    c0433g0.f1806a.m8021j(c0433g0.f1808c, bundle2, false);
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                    if (c0433g0.f1808c.mView != null) {
                        c0433g0.m8113o();
                    }
                    Bundle bundle3 = bundle;
                    if (c0433g0.f1808c.mSavedViewState != null) {
                        bundle3 = bundle;
                        if (bundle == null) {
                            bundle3 = new Bundle();
                        }
                        bundle3.putSparseParcelableArray("android:view_state", c0433g0.f1808c.mSavedViewState);
                    }
                    Bundle bundle4 = bundle3;
                    if (c0433g0.f1808c.mSavedViewRegistryState != null) {
                        bundle4 = bundle3;
                        if (bundle3 == null) {
                            bundle4 = new Bundle();
                        }
                        bundle4.putBundle("android:view_registry_state", c0433g0.f1808c.mSavedViewRegistryState);
                    }
                    Bundle bundle5 = bundle4;
                    if (!c0433g0.f1808c.mUserVisibleHint) {
                        bundle5 = bundle4;
                        if (bundle4 == null) {
                            bundle5 = new Bundle();
                        }
                        bundle5.putBoolean("android:user_visible_hint", c0433g0.f1808c.mUserVisibleHint);
                    }
                    c0430f0.f1802m = bundle5;
                    if (c0433g0.f1808c.mTargetWho != null) {
                        if (bundle5 == null) {
                            c0430f0.f1802m = new Bundle();
                        }
                        c0430f0.f1802m.putString("android:target_state", c0433g0.f1808c.mTargetWho);
                        int i2 = c0433g0.f1808c.mTargetRequestCode;
                        if (i2 != 0) {
                            c0430f0.f1802m.putInt("android:target_req_state", i2);
                        }
                    }
                }
                arrayList2.add(c0430f0);
                if (m8192N(2)) {
                    Objects.toString(fragment);
                    Objects.toString(c0430f0.f1802m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            m8192N(2);
            return null;
        }
        C0436h0 c0436h02 = this.f1700c;
        synchronized (((ArrayList) c0436h02.f1816a)) {
            if (((ArrayList) c0436h02.f1816a).isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>(((ArrayList) c0436h02.f1816a).size());
                Iterator it4 = ((ArrayList) c0436h02.f1816a).iterator();
                while (it4.hasNext()) {
                    Fragment fragment3 = (Fragment) it4.next();
                    arrayList.add(fragment3.mWho);
                    if (m8192N(2)) {
                        fragment3.toString();
                    }
                }
            }
        }
        ArrayList<C0396a> arrayList3 = this.f1701d;
        C0413b[] c0413bArr = null;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            c0413bArr = null;
            if (size > 0) {
                C0413b[] c0413bArr2 = new C0413b[size];
                while (true) {
                    c0413bArr = c0413bArr2;
                    if (i >= size) {
                        break;
                    }
                    c0413bArr2[i] = new C0413b(this.f1701d.get(i));
                    if (m8192N(2)) {
                        Objects.toString(this.f1701d.get(i));
                    }
                    i++;
                }
            }
        }
        C0421c0 c0421c0 = new C0421c0();
        c0421c0.f1765a = arrayList2;
        c0421c0.f1766b = arrayList;
        c0421c0.f1767c = c0413bArr;
        c0421c0.f1768d = this.f1706i.get();
        Fragment fragment4 = this.f1717t;
        if (fragment4 != null) {
            c0421c0.f1769e = fragment4.mWho;
        }
        c0421c0.f1770f.addAll(this.f1707j.keySet());
        c0421c0.f1771g.addAll(this.f1707j.values());
        c0421c0.f1772h = new ArrayList<>(this.f1723z);
        return c0421c0;
    }

    /* renamed from: d */
    public final void m8173d(Fragment fragment) {
        HashSet<C3056b> hashSet = this.f1709l.get(fragment);
        if (hashSet != null) {
            Iterator<C3056b> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                it2.next().m2667a();
            }
            hashSet.clear();
            m8163i(fragment);
            this.f1709l.remove(fragment);
        }
    }

    /* renamed from: d0 */
    public void m8172d0() {
        synchronized (this.f1698a) {
            ArrayList<C0412n> arrayList = this.f1695I;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.f1698a.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.f1714q.f1983c.removeCallbacks(this.f1697K);
                this.f1714q.f1983c.post(this.f1697K);
                m8158k0();
            }
        }
    }

    /* renamed from: e */
    public final void m8171e() {
        this.f1699b = false;
        this.f1693G.clear();
        this.f1692F.clear();
    }

    /* renamed from: e0 */
    public void m8170e0(Fragment fragment, boolean z) {
        ViewGroup m8196J = m8196J(fragment);
        if (m8196J == null || !(m8196J instanceof C0479u)) {
            return;
        }
        ((C0479u) m8196J).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: f */
    public final Set<AbstractC0484w0> m8169f() {
        HashSet hashSet = new HashSet();
        Iterator it2 = ((ArrayList) this.f1700c.m8105f()).iterator();
        while (it2.hasNext()) {
            ViewGroup viewGroup = ((C0433g0) it2.next()).f1808c.mContainer;
            if (viewGroup != null) {
                hashSet.add(AbstractC0484w0.m8045g(viewGroup, m8194L()));
            }
        }
        return hashSet;
    }

    /* renamed from: f0 */
    public void m8168f0(Fragment fragment, AbstractC0516f.EnumC0519c enumC0519c) {
        if (fragment.equals(m8199G(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = enumC0519c;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: g */
    public void m8167g(C0396a c0396a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0396a.m8209l(z3);
        } else {
            c0396a.m8210k();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0396a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.f1713p >= 1) {
            C0459p0.m8073q(this.f1714q.f1982b, this.f1715r, arrayList, arrayList2, 0, 1, true, this.f1710m);
        }
        if (z3) {
            m8187S(this.f1713p, true);
        }
        Iterator it2 = ((ArrayList) this.f1700c.m8104g()).iterator();
        while (it2.hasNext()) {
            Fragment fragment = (Fragment) it2.next();
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && c0396a.m8208m(fragment.mContainerId)) {
                float f = fragment.mPostponedAlpha;
                if (f > 0.0f) {
                    fragment.mView.setAlpha(f);
                }
                if (z3) {
                    fragment.mPostponedAlpha = 0.0f;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    /* renamed from: g0 */
    public void m8166g0(Fragment fragment) {
        if (fragment == null || (fragment.equals(m8199G(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f1717t;
            this.f1717t = fragment;
            m8149t(fragment2);
            m8149t(this.f1717t);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: h */
    public C0433g0 m8165h(Fragment fragment) {
        C0433g0 m8103h = this.f1700c.m8103h(fragment.mWho);
        if (m8103h != null) {
            return m8103h;
        }
        C0433g0 c0433g0 = new C0433g0(this.f1711n, this.f1700c, fragment);
        c0433g0.m8115m(this.f1714q.f1982b.getClassLoader());
        c0433g0.f1810e = this.f1713p;
        return c0433g0;
    }

    /* renamed from: h0 */
    public final void m8164h0(Fragment fragment) {
        ViewGroup m8196J = m8196J(fragment);
        if (m8196J != null) {
            int enterAnim = fragment.getEnterAnim();
            int exitAnim = fragment.getExitAnim();
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + exitAnim + enterAnim <= 0) {
                return;
            }
            if (m8196J.getTag(2131297212) == null) {
                m8196J.setTag(2131297212, fragment);
            }
            ((Fragment) m8196J.getTag(2131297212)).setPopDirection(fragment.getPopDirection());
        }
    }

    /* renamed from: i */
    public final void m8163i(Fragment fragment) {
        fragment.performDestroyView();
        this.f1711n.m8017n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.mo7432h(null);
        fragment.mInLayout = false;
    }

    /* renamed from: i0 */
    public void m8162i0(Fragment fragment) {
        if (m8192N(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    /* renamed from: j */
    public void m8161j(Fragment fragment) {
        if (m8192N(2)) {
            Objects.toString(fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (!fragment.mAdded) {
                return;
            }
            if (m8192N(2)) {
                fragment.toString();
            }
            this.f1700c.m8099l(fragment);
            if (m8191O(fragment)) {
                this.f1687A = true;
            }
            m8164h0(fragment);
        }
    }

    /* renamed from: j0 */
    public final void m8160j0() {
        Iterator it2 = ((ArrayList) this.f1700c.m8105f()).iterator();
        while (it2.hasNext()) {
            m8184V((C0433g0) it2.next());
        }
    }

    /* renamed from: k */
    public void m8159k(Configuration configuration) {
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    /* renamed from: k0 */
    public final void m8158k0() {
        synchronized (this.f1698a) {
            boolean z = true;
            if (!this.f1698a.isEmpty()) {
                this.f1705h.f238a = true;
                return;
            }
            AbstractC0103b abstractC0103b = this.f1705h;
            ArrayList<C0396a> arrayList = this.f1701d;
            if ((arrayList != null ? arrayList.size() : 0) <= 0 || !m8189Q(this.f1716s)) {
                z = false;
            }
            abstractC0103b.f238a = z;
        }
    }

    /* renamed from: l */
    public boolean m8157l(MenuItem menuItem) {
        if (this.f1713p < 1) {
            return false;
        }
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m */
    public void m8156m() {
        this.f1688B = false;
        this.f1689C = false;
        this.f1696J.f1784h = false;
        m8146w(1);
    }

    /* renamed from: n */
    public boolean m8155n(Menu menu, MenuInflater menuInflater) {
        if (this.f1713p < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null && m8190P(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.f1702e != null) {
            for (int i = 0; i < this.f1702e.size(); i++) {
                Fragment fragment2 = this.f1702e.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f1702e = arrayList;
        return z;
    }

    /* renamed from: o */
    public void m8154o() {
        this.f1690D = true;
        m8203C(true);
        m8143z();
        m8146w(-1);
        this.f1714q = null;
        this.f1715r = null;
        this.f1716s = null;
        if (this.f1704g != null) {
            Iterator<AbstractC0102a> it2 = this.f1705h.f239b.iterator();
            while (it2.hasNext()) {
                it2.next().cancel();
            }
            this.f1704g = null;
        }
        AbstractC0113c<Intent> abstractC0113c = this.f1720w;
        if (abstractC0113c != null) {
            abstractC0113c.mo8217b();
            this.f1721x.mo8217b();
            this.f1722y.mo8217b();
        }
    }

    /* renamed from: p */
    public void m8153p() {
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* renamed from: q */
    public void m8152q(boolean z) {
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    /* renamed from: r */
    public boolean m8151r(MenuItem menuItem) {
        if (this.f1713p < 1) {
            return false;
        }
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: s */
    public void m8150s(Menu menu) {
        if (this.f1713p < 1) {
            return;
        }
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* renamed from: t */
    public final void m8149t(Fragment fragment) {
        if (fragment == null || !fragment.equals(m8199G(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f1716s;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f1716s)));
            sb.append("}");
        } else {
            AbstractC0492x<?> abstractC0492x = this.f1714q;
            if (abstractC0492x != null) {
                sb.append(abstractC0492x.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f1714q)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m8148u(boolean z) {
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    /* renamed from: v */
    public boolean m8147v(Menu menu) {
        boolean z = false;
        if (this.f1713p < 1) {
            return false;
        }
        for (Fragment fragment : this.f1700c.m8102i()) {
            if (fragment != null && m8190P(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: w */
    public final void m8146w(int i) {
        try {
            this.f1699b = true;
            for (C0433g0 c0433g0 : ((HashMap) this.f1700c.f1817b).values()) {
                if (c0433g0 != null) {
                    c0433g0.f1810e = i;
                }
            }
            m8187S(i, false);
            Iterator it2 = ((HashSet) m8169f()).iterator();
            while (it2.hasNext()) {
                ((AbstractC0484w0) it2.next()).m8047e();
            }
            this.f1699b = false;
            m8203C(true);
        } catch (Throwable th) {
            this.f1699b = false;
            throw th;
        }
    }

    /* renamed from: x */
    public final void m8145x() {
        if (this.f1691E) {
            this.f1691E = false;
            m8160j0();
        }
    }

    /* renamed from: y */
    public void m8144y(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String m4789h = C1676a.m4789h(str, "    ");
        C0436h0 c0436h0 = this.f1700c;
        Objects.requireNonNull(c0436h0);
        String str2 = str + "    ";
        if (!((HashMap) c0436h0.f1817b).isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C0433g0 c0433g0 : ((HashMap) c0436h0.f1817b).values()) {
                printWriter.print(str);
                if (c0433g0 != null) {
                    Fragment fragment = c0433g0.f1808c;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = ((ArrayList) c0436h0.f1816a).size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(((Fragment) ((ArrayList) c0436h0.f1816a).get(i)).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f1702e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f1702e.get(i2).toString());
            }
        }
        ArrayList<C0396a> arrayList2 = this.f1701d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                C0396a c0396a = this.f1701d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c0396a.toString());
                c0396a.m8211j(m4789h, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f1706i.get());
        synchronized (this.f1698a) {
            int size4 = this.f1698a.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size4; i4++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println((AbstractC0410l) this.f1698a.get(i4));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f1714q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f1715r);
        if (this.f1716s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f1716s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f1713p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f1688B);
        printWriter.print(" mStopped=");
        printWriter.print(this.f1689C);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f1690D);
        if (this.f1687A) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f1687A);
        }
    }

    /* renamed from: z */
    public final void m8143z() {
        Iterator it2 = ((HashSet) m8169f()).iterator();
        while (it2.hasNext()) {
            ((AbstractC0484w0) it2.next()).m8047e();
        }
    }
}
