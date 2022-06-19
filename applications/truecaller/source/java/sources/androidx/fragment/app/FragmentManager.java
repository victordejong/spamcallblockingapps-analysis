package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.fragment.C0158R;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1728a.AbstractC25369b;
import p1727n3.p1728a.AbstractC25370c;
import p1727n3.p1728a.p1730e.AbstractC25373a;
import p1727n3.p1728a.p1730e.AbstractC25374b;
import p1727n3.p1728a.p1730e.AbstractC25375c;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p1727n3.p1728a.p1730e.p1731d.C25378b;
import p1727n3.p1728a.p1730e.p1731d.C25380d;
import p1727n3.p1807k.p1816e.C26508a;
import p1727n3.p1859r.p1860a.AbstractC26914b0;
import p1727n3.p1859r.p1860a.AbstractC26924f0;
import p1727n3.p1859r.p1860a.AbstractC26955r;
import p1727n3.p1859r.p1860a.AbstractC26959u;
import p1727n3.p1859r.p1860a.AbstractC26960u0;
import p1727n3.p1859r.p1860a.AbstractC26970v0;
import p1727n3.p1859r.p1860a.AbstractC26977z;
import p1727n3.p1859r.p1860a.C26907a;
import p1727n3.p1859r.p1860a.C26916c0;
import p1727n3.p1859r.p1860a.C26922e0;
import p1727n3.p1859r.p1860a.C26937m0;
import p1727n3.p1859r.p1860a.C26957t;
import p1727n3.p1859r.p1860a.C26958t0;
import p1727n3.p1859r.p1860a.C26971w;
import p1727n3.p1859r.p1860a.C26975y;
import p1727n3.p1859r.p1860a.LayoutInflater$Factory2C26968v;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC26996c1;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.AbstractC27041z;
import p1727n3.p1868v.C26986a1;
import p1727n3.p1868v.C26993b1;
import p1727n3.p1868v.C26994c0;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager.class */
public abstract class FragmentManager {

    /* renamed from: B */
    public boolean f827B;

    /* renamed from: C */
    public boolean f828C;

    /* renamed from: D */
    public boolean f829D;

    /* renamed from: E */
    public boolean f830E;

    /* renamed from: F */
    public boolean f831F;

    /* renamed from: G */
    public ArrayList<C26907a> f832G;

    /* renamed from: H */
    public ArrayList<Boolean> f833H;

    /* renamed from: I */
    public ArrayList<Fragment> f834I;

    /* renamed from: J */
    public ArrayList<C0178o> f835J;

    /* renamed from: K */
    public C26975y f836K;

    /* renamed from: b */
    public boolean f839b;

    /* renamed from: d */
    public ArrayList<C26907a> f841d;

    /* renamed from: e */
    public ArrayList<Fragment> f842e;

    /* renamed from: g */
    public OnBackPressedDispatcher f844g;

    /* renamed from: q */
    public AbstractC26959u<?> f854q;

    /* renamed from: r */
    public AbstractC26955r f855r;

    /* renamed from: s */
    public Fragment f856s;

    /* renamed from: t */
    public Fragment f857t;

    /* renamed from: x */
    public AbstractC25374b<Intent> f861x;

    /* renamed from: y */
    public AbstractC25374b<IntentSenderRequest> f862y;

    /* renamed from: z */
    public AbstractC25374b<String[]> f863z;

    /* renamed from: a */
    public final ArrayList<AbstractC0176m> f838a = new ArrayList<>();

    /* renamed from: c */
    public final C26922e0 f840c = new C26922e0();

    /* renamed from: f */
    public final LayoutInflater$Factory2C26968v f843f = new LayoutInflater$Factory2C26968v(this);

    /* renamed from: h */
    public final AbstractC25369b f845h = new C0166c(false);

    /* renamed from: i */
    public final AtomicInteger f846i = new AtomicInteger();

    /* renamed from: j */
    public final Map<String, Bundle> f847j = Collections.synchronizedMap(new HashMap());

    /* renamed from: k */
    public final Map<String, C0175l> f848k = Collections.synchronizedMap(new HashMap());

    /* renamed from: l */
    public Map<Fragment, HashSet<C26508a>> f849l = Collections.synchronizedMap(new HashMap());

    /* renamed from: m */
    public final C26937m0.AbstractC26938a f850m = new C0167d();

    /* renamed from: n */
    public final C26971w f851n = new C26971w(this);

    /* renamed from: o */
    public final CopyOnWriteArrayList<AbstractC26977z> f852o = new CopyOnWriteArrayList<>();

    /* renamed from: p */
    public int f853p = -1;

    /* renamed from: u */
    public C26957t f858u = null;

    /* renamed from: v */
    public C26957t f859v = new C0168e();

    /* renamed from: w */
    public AbstractC26970v0 f860w = new C0169f(this);

    /* renamed from: A */
    public ArrayDeque<LaunchedFragmentInfo> f826A = new ArrayDeque<>();

    /* renamed from: L */
    public Runnable f837L = new RunnableC0170g();

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$LaunchedFragmentInfo.class */
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new C0163a();

        /* renamed from: a */
        public String f864a;

        /* renamed from: b */
        public int f865b;

        /* renamed from: androidx.fragment.app.FragmentManager$LaunchedFragmentInfo$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$LaunchedFragmentInfo$a.class */
        public class C0163a implements Parcelable.Creator<LaunchedFragmentInfo> {
            @Override // android.os.Parcelable.Creator
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        }

        public LaunchedFragmentInfo(Parcel parcel) {
            this.f864a = parcel.readString();
            this.f865b = parcel.readInt();
        }

        public LaunchedFragmentInfo(String str, int i) {
            this.f864a = str;
            this.f865b = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f864a);
            parcel.writeInt(this.f865b);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$a.class */
    public class C0164a implements AbstractC25373a<ActivityResult> {
        public C0164a() {
            FragmentManager.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(ActivityResult activityResult) {
            ActivityResult activityResult2 = activityResult;
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f826A.pollFirst();
            if (pollFirst == null) {
                String str = "No IntentSenders were started for " + this;
                return;
            }
            String str2 = pollFirst.f864a;
            int i = pollFirst.f865b;
            Fragment m1139e = FragmentManager.this.f840c.m1139e(str2);
            if (m1139e == null) {
                return;
            }
            m1139e.onActivityResult(i, activityResult2.f76a, activityResult2.f77b);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$b.class */
    public class C0165b implements AbstractC25373a<Map<String, Boolean>> {
        public C0165b() {
            FragmentManager.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(Map<String, Boolean> map) {
            Map<String, Boolean> map2 = map;
            String[] strArr = (String[]) map2.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map2.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f826A.pollFirst();
            if (pollFirst == null) {
                String str = "No permissions were requested for " + this;
                return;
            }
            String str2 = pollFirst.f864a;
            int i2 = pollFirst.f865b;
            Fragment m1139e = FragmentManager.this.f840c.m1139e(str2);
            if (m1139e == null) {
                return;
            }
            m1139e.onRequestPermissionsResult(i2, strArr, iArr);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$c.class */
    public class C0166c extends AbstractC25369b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0166c(boolean z) {
            super(z);
            FragmentManager.this = r4;
        }

        @Override // p1727n3.p1728a.AbstractC25369b
        public void handleOnBackPressed() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.m42949D(true);
            if (fragmentManager.f845h.isEnabled()) {
                fragmentManager.m42919d0();
            } else {
                fragmentManager.f844g.m43174b();
            }
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$d.class */
    public class C0167d implements C26937m0.AbstractC26938a {
        public C0167d() {
            FragmentManager.this = r4;
        }

        /* renamed from: a */
        public void m42877a(Fragment fragment, C26508a c26508a) {
            boolean z;
            synchronized (c26508a) {
                z = c26508a.f74296a;
            }
            if (!z) {
                FragmentManager fragmentManager = FragmentManager.this;
                HashSet<C26508a> hashSet = fragmentManager.f849l.get(fragment);
                if (hashSet == null || !hashSet.remove(c26508a) || !hashSet.isEmpty()) {
                    return;
                }
                fragmentManager.f849l.remove(fragment);
                if (fragment.mState >= 5) {
                    return;
                }
                fragmentManager.m42908j(fragment);
                fragmentManager.m42927Z(fragment, fragmentManager.f853p);
            }
        }

        /* renamed from: b */
        public void m42876b(Fragment fragment, C26508a c26508a) {
            FragmentManager fragmentManager = FragmentManager.this;
            if (fragmentManager.f849l.get(fragment) == null) {
                fragmentManager.f849l.put(fragment, new HashSet<>());
            }
            fragmentManager.f849l.get(fragment).add(c26508a);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$e.class */
    public class C0168e extends C26957t {
        public C0168e() {
            FragmentManager.this = r4;
        }

        @Override // p1727n3.p1859r.p1860a.C26957t
        public Fragment instantiate(ClassLoader classLoader, String str) {
            AbstractC26959u<?> abstractC26959u = FragmentManager.this.f854q;
            Context context = abstractC26959u.f75444b;
            Objects.requireNonNull(abstractC26959u);
            return Fragment.instantiate(context, str, (Bundle) null);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$f.class */
    public class C0169f implements AbstractC26970v0 {
        public C0169f(FragmentManager fragmentManager) {
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$g.class */
    public class RunnableC0170g implements Runnable {
        public RunnableC0170g() {
            FragmentManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.m42949D(true);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$h.class */
    public class C0171h implements AbstractC26977z {

        /* renamed from: a */
        public final /* synthetic */ Fragment f872a;

        public C0171h(FragmentManager fragmentManager, Fragment fragment) {
            this.f872a = fragment;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26977z
        /* renamed from: a */
        public void mo1028a(FragmentManager fragmentManager, Fragment fragment) {
            this.f872a.onAttachFragment(fragment);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$i */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$i.class */
    public class C0172i implements AbstractC25373a<ActivityResult> {
        public C0172i() {
            FragmentManager.this = r4;
        }

        @Override // p1727n3.p1728a.p1730e.AbstractC25373a
        /* renamed from: a */
        public void mo3695a(ActivityResult activityResult) {
            ActivityResult activityResult2 = activityResult;
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f826A.pollFirst();
            if (pollFirst == null) {
                String str = "No Activities were started for result for " + this;
                return;
            }
            String str2 = pollFirst.f864a;
            int i = pollFirst.f865b;
            Fragment m1139e = FragmentManager.this.f840c.m1139e(str2);
            if (m1139e == null) {
                return;
            }
            m1139e.onActivityResult(i, activityResult2.f76a, activityResult2.f77b);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$j */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$j.class */
    public static class C0173j extends AbstractC25376a<IntentSenderRequest, ActivityResult> {
        @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
        /* renamed from: a */
        public Intent mo3691a(Context context, IntentSenderRequest intentSenderRequest) {
            IntentSenderRequest intentSenderRequest2 = intentSenderRequest;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = intentSenderRequest2.f99b;
            IntentSenderRequest intentSenderRequest3 = intentSenderRequest2;
            if (intent2 != null) {
                Bundle bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentSenderRequest3 = intentSenderRequest2;
                if (bundleExtra != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    intentSenderRequest3 = intentSenderRequest2;
                    if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        intentSenderRequest3 = new IntentSenderRequest(intentSenderRequest2.f98a, null, intentSenderRequest2.f100c, intentSenderRequest2.f101d);
                    }
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest3);
            if (FragmentManager.m42933T(2)) {
                String str = "CreateIntent created the following intent: " + intent;
            }
            return intent;
        }

        @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
        /* renamed from: c */
        public ActivityResult mo3690c(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$k */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$k.class */
    public static abstract class AbstractC0174k {
    }

    /* renamed from: androidx.fragment.app.FragmentManager$l */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$l.class */
    public static class C0175l implements AbstractC26914b0 {

        /* renamed from: a */
        public final AbstractC27028u f874a;

        /* renamed from: b */
        public final AbstractC26914b0 f875b;

        /* renamed from: c */
        public final AbstractC27041z f876c;

        public C0175l(AbstractC27028u abstractC27028u, AbstractC26914b0 abstractC26914b0, AbstractC27041z abstractC27041z) {
            this.f874a = abstractC27028u;
            this.f875b = abstractC26914b0;
            this.f876c = abstractC27041z;
        }

        @Override // p1727n3.p1859r.p1860a.AbstractC26914b0
        /* renamed from: a */
        public void mo1168a(String str, Bundle bundle) {
            this.f875b.mo1168a(str, bundle);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$m */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$m.class */
    public interface AbstractC0176m {
        /* renamed from: a */
        boolean mo1185a(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* renamed from: androidx.fragment.app.FragmentManager$n */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$n.class */
    public class C0177n implements AbstractC0176m {

        /* renamed from: a */
        public final String f877a;

        /* renamed from: b */
        public final int f878b;

        /* renamed from: c */
        public final int f879c;

        public C0177n(String str, int i, int i2) {
            FragmentManager.this = r4;
            this.f877a = str;
            this.f878b = i;
            this.f879c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.AbstractC0176m
        /* renamed from: a */
        public boolean mo1185a(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.f857t;
            if (fragment == null || this.f878b >= 0 || this.f877a != null || !fragment.getChildFragmentManager().m42919d0()) {
                return FragmentManager.this.m42915f0(arrayList, arrayList2, this.f877a, this.f878b, this.f879c);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$o */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$o.class */
    public static class C0178o implements Fragment$l {

        /* renamed from: a */
        public final boolean f881a;

        /* renamed from: b */
        public final C26907a f882b;

        /* renamed from: c */
        public int f883c;

        /* renamed from: a */
        public void m42875a() {
            boolean z = this.f883c > 0;
            for (Fragment fragment : this.f882b.f75269q.m42936Q()) {
                fragment.setOnStartEnterTransitionListener((Fragment$l) null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            C26907a c26907a = this.f882b;
            c26907a.f75269q.m42912h(c26907a, this.f881a, !z, true);
        }
    }

    /* renamed from: T */
    public static boolean m42933T(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: A */
    public final void m42952A() {
        Iterator it = ((HashSet) m42914g()).iterator();
        while (it.hasNext()) {
            ((AbstractC26960u0) it.next()).m1058e();
        }
    }

    /* renamed from: B */
    public void m42951B(AbstractC0176m abstractC0176m, boolean z) {
        if (!z) {
            if (this.f854q == null) {
                if (!this.f830E) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (m42929X()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f838a) {
            if (this.f854q == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f838a.add(abstractC0176m);
            m42901m0();
        }
    }

    /* renamed from: C */
    public final void m42950C(boolean z) {
        if (!this.f839b) {
            if (this.f854q == null) {
                if (!this.f830E) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (Looper.myLooper() != this.f854q.f75445c.getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            } else {
                if (!z && m42929X()) {
                    throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
                }
                if (this.f832G == null) {
                    this.f832G = new ArrayList<>();
                    this.f833H = new ArrayList<>();
                }
                this.f839b = true;
                try {
                    m42945H(null, null);
                    return;
                } finally {
                    this.f839b = false;
                }
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: D */
    public boolean m42949D(boolean z) {
        boolean z2;
        m42950C(z);
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            ArrayList<C26907a> arrayList = this.f832G;
            ArrayList<Boolean> arrayList2 = this.f833H;
            synchronized (this.f838a) {
                if (this.f838a.isEmpty()) {
                    z2 = false;
                } else {
                    int size = this.f838a.size();
                    z2 = false;
                    for (int i = 0; i < size; i++) {
                        z2 |= this.f838a.get(i).mo1185a(arrayList, arrayList2);
                    }
                    this.f838a.clear();
                    this.f854q.f75445c.removeCallbacks(this.f837L);
                }
            }
            if (!z2) {
                m42881w0();
                m42879y();
                this.f840c.m1142b();
                return z4;
            }
            this.f839b = true;
            try {
                m42909i0(this.f832G, this.f833H);
                m42916f();
                z3 = true;
            } catch (Throwable th) {
                m42916f();
                throw th;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: E */
    public void m42948E(AbstractC0176m abstractC0176m, boolean z) {
        if (!z || (this.f854q != null && !this.f830E)) {
            m42950C(z);
            ((C26907a) abstractC0176m).mo1185a(this.f832G, this.f833H);
            this.f839b = true;
            try {
                m42909i0(this.f832G, this.f833H);
                m42916f();
                m42881w0();
                m42879y();
                this.f840c.m1142b();
            } catch (Throwable th) {
                m42916f();
                throw th;
            }
        }
    }

    /* renamed from: F */
    public final void m42947F(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        Fragment fragment;
        int i3;
        int i4;
        int i5;
        Fragment fragment2;
        boolean z = arrayList.get(i).f75332p;
        ArrayList<Fragment> arrayList3 = this.f834I;
        if (arrayList3 == null) {
            this.f834I = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f834I.addAll(this.f840c.m1135i());
        Fragment fragment3 = this.f857t;
        int i6 = i;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            int i7 = 1;
            if (i6 >= i2) {
                this.f834I.clear();
                if (!z && this.f853p >= 1) {
                    for (int i8 = i; i8 < i2; i8++) {
                        Iterator<AbstractC26924f0.C26925a> it = arrayList.get(i8).f75317a.iterator();
                        while (it.hasNext()) {
                            Fragment fragment4 = it.next().f75334b;
                            if (fragment4 != null && fragment4.mFragmentManager != null) {
                                this.f840c.m1134j(m42910i(fragment4));
                            }
                        }
                    }
                }
                int i9 = i;
                while (i9 < i2) {
                    C26907a c26907a = arrayList.get(i9);
                    if (arrayList2.get(i9).booleanValue()) {
                        c26907a.m1184q(-1);
                        c26907a.m1180u(i9 == i2 - 1);
                    } else {
                        c26907a.m1184q(1);
                        c26907a.m1181t();
                    }
                    i9++;
                }
                boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
                for (int i10 = i; i10 < i2; i10++) {
                    C26907a c26907a2 = arrayList.get(i10);
                    if (booleanValue) {
                        for (int size = c26907a2.f75317a.size() - 1; size >= 0; size--) {
                            Fragment fragment5 = c26907a2.f75317a.get(size).f75334b;
                            if (fragment5 != null) {
                                m42910i(fragment5).m1157k();
                            }
                        }
                    } else {
                        Iterator<AbstractC26924f0.C26925a> it2 = c26907a2.f75317a.iterator();
                        while (it2.hasNext()) {
                            Fragment fragment6 = it2.next().f75334b;
                            if (fragment6 != null) {
                                m42910i(fragment6).m1157k();
                            }
                        }
                    }
                }
                m42928Y(this.f853p, true);
                HashSet hashSet = new HashSet();
                for (int i11 = i; i11 < i2; i11++) {
                    Iterator<AbstractC26924f0.C26925a> it3 = arrayList.get(i11).f75317a.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment7 = it3.next().f75334b;
                        if (fragment7 != null && (viewGroup = fragment7.mContainer) != null) {
                            hashSet.add(AbstractC26960u0.m1056g(viewGroup, m42935R()));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    AbstractC26960u0 abstractC26960u0 = (AbstractC26960u0) it4.next();
                    abstractC26960u0.f75450d = booleanValue;
                    abstractC26960u0.m1055h();
                    abstractC26960u0.m1060c();
                }
                while (i < i2) {
                    C26907a c26907a3 = arrayList.get(i);
                    if (arrayList2.get(i).booleanValue() && c26907a3.f75271s >= 0) {
                        c26907a3.f75271s = -1;
                    }
                    Objects.requireNonNull(c26907a3);
                    i++;
                }
                return;
            }
            C26907a c26907a4 = arrayList.get(i6);
            if (!arrayList2.get(i6).booleanValue()) {
                ArrayList<Fragment> arrayList4 = this.f834I;
                int i12 = 0;
                while (true) {
                    int i13 = i12;
                    fragment = fragment3;
                    if (i13 < c26907a4.f75317a.size()) {
                        AbstractC26924f0.C26925a c26925a = c26907a4.f75317a.get(i13);
                        int i14 = c26925a.f75333a;
                        if (i14 == i7) {
                            i5 = i7;
                        } else if (i14 != 2) {
                            if (i14 == 3 || i14 == 6) {
                                arrayList4.remove(c26925a.f75334b);
                                Fragment fragment8 = c26925a.f75334b;
                                fragment2 = fragment3;
                                i4 = i13;
                                if (fragment8 == fragment3) {
                                    c26907a4.f75317a.add(i13, new AbstractC26924f0.C26925a(9, fragment8));
                                    i4 = i13 + 1;
                                    i3 = 1;
                                    fragment3 = null;
                                    int i15 = i4 + i3;
                                    i7 = i3;
                                    i12 = i15;
                                }
                            } else if (i14 == 7) {
                                i5 = 1;
                            } else if (i14 != 8) {
                                fragment2 = fragment3;
                                i4 = i13;
                            } else {
                                c26907a4.f75317a.add(i13, new AbstractC26924f0.C26925a(9, fragment3));
                                i4 = i13 + 1;
                                fragment2 = c26925a.f75334b;
                            }
                            i3 = 1;
                            fragment3 = fragment2;
                            int i152 = i4 + i3;
                            i7 = i3;
                            i12 = i152;
                        } else {
                            Fragment fragment9 = c26925a.f75334b;
                            int i16 = fragment9.mContainerId;
                            boolean z4 = false;
                            i4 = i13;
                            for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                                Fragment fragment10 = arrayList4.get(size2);
                                if (fragment10.mContainerId == i16) {
                                    if (fragment10 == fragment9) {
                                        z4 = true;
                                    } else {
                                        if (fragment10 == fragment3) {
                                            c26907a4.f75317a.add(i4, new AbstractC26924f0.C26925a(9, fragment10));
                                            i4++;
                                            fragment3 = null;
                                        }
                                        AbstractC26924f0.C26925a c26925a2 = new AbstractC26924f0.C26925a(3, fragment10);
                                        c26925a2.f75335c = c26925a.f75335c;
                                        c26925a2.f75337e = c26925a.f75337e;
                                        c26925a2.f75336d = c26925a.f75336d;
                                        c26925a2.f75338f = c26925a.f75338f;
                                        c26907a4.f75317a.add(i4, c26925a2);
                                        arrayList4.remove(fragment10);
                                        i4++;
                                    }
                                }
                            }
                            if (z4) {
                                c26907a4.f75317a.remove(i4);
                                i4--;
                                fragment2 = fragment3;
                                i3 = 1;
                                fragment3 = fragment2;
                                int i1522 = i4 + i3;
                                i7 = i3;
                                i12 = i1522;
                            } else {
                                i3 = 1;
                                c26925a.f75333a = 1;
                                arrayList4.add(fragment9);
                                int i15222 = i4 + i3;
                                i7 = i3;
                                i12 = i15222;
                            }
                        }
                        arrayList4.add(c26925a.f75334b);
                        i4 = i13;
                        i3 = i5;
                        int i152222 = i4 + i3;
                        i7 = i3;
                        i12 = i152222;
                    }
                }
            } else {
                ArrayList<Fragment> arrayList5 = this.f834I;
                int size3 = c26907a4.f75317a.size() - 1;
                while (true) {
                    fragment = fragment3;
                    if (size3 >= 0) {
                        AbstractC26924f0.C26925a c26925a3 = c26907a4.f75317a.get(size3);
                        int i17 = c26925a3.f75333a;
                        if (i17 != 1) {
                            if (i17 != 3) {
                                switch (i17) {
                                    case 8:
                                        fragment3 = null;
                                        break;
                                    case 9:
                                        fragment3 = c26925a3.f75334b;
                                        break;
                                    case 10:
                                        c26925a3.f75340h = c26925a3.f75339g;
                                        break;
                                }
                                size3--;
                            }
                            arrayList5.add(c26925a3.f75334b);
                            size3--;
                        }
                        arrayList5.remove(c26925a3.f75334b);
                        size3--;
                    }
                }
            }
            i6++;
            fragment3 = fragment;
            z2 = z3 || c26907a4.f75323g;
        }
    }

    /* renamed from: G */
    public boolean m42946G() {
        boolean m42949D = m42949D(true);
        m42941L();
        return m42949D;
    }

    /* renamed from: H */
    public final void m42945H(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<C0178o> arrayList3 = this.f835J;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = size;
            if (i3 < i4) {
                C0178o c0178o = this.f835J.get(i3);
                if (arrayList == null || c0178o.f881a || (indexOf2 = arrayList.indexOf(c0178o.f882b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!(c0178o.f883c == 0)) {
                        size = i4;
                        i = i3;
                        if (arrayList != null) {
                            size = i4;
                            i = i3;
                            if (!c0178o.f882b.m1178w(arrayList, 0, arrayList.size())) {
                            }
                        }
                    }
                    this.f835J.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    if (arrayList == null || c0178o.f881a || (indexOf = arrayList.indexOf(c0178o.f882b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        c0178o.m42875a();
                    } else {
                        C26907a c26907a = c0178o.f882b;
                        c26907a.f75269q.m42912h(c26907a, c0178o.f881a, false, false);
                    }
                } else {
                    this.f835J.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    C26907a c26907a2 = c0178o.f882b;
                    c26907a2.f75269q.m42912h(c26907a2, c0178o.f881a, false, false);
                }
                i2 = i + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: I */
    public Fragment m42944I(String str) {
        return this.f840c.m1140d(str);
    }

    /* renamed from: J */
    public Fragment m42943J(int i) {
        Fragment fragment;
        C26922e0 c26922e0 = this.f840c;
        int size = c26922e0.f75311a.size();
        while (true) {
            int i2 = size - 1;
            if (i2 < 0) {
                Iterator<C26916c0> it = c26922e0.f75312b.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        fragment = null;
                        break;
                    }
                    C26916c0 next = it.next();
                    if (next != null) {
                        fragment = next.f75295c;
                        if (fragment.mFragmentId == i) {
                            break;
                        }
                    }
                }
            } else {
                fragment = c26922e0.f75311a.get(i2);
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

    /* renamed from: K */
    public Fragment m42942K(String str) {
        Fragment fragment;
        C26922e0 c26922e0 = this.f840c;
        Objects.requireNonNull(c26922e0);
        if (str != null) {
            int size = c26922e0.f75311a.size();
            while (true) {
                int i = size - 1;
                if (i < 0) {
                    break;
                }
                Fragment fragment2 = c26922e0.f75311a.get(i);
                size = i;
                if (fragment2 != null) {
                    size = i;
                    if (str.equals(fragment2.mTag)) {
                        fragment = fragment2;
                        break;
                    }
                }
            }
        }
        if (str != null) {
            for (C26916c0 c26916c0 : c26922e0.f75312b.values()) {
                if (c26916c0 != null) {
                    Fragment fragment3 = c26916c0.f75295c;
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

    /* renamed from: L */
    public final void m42941L() {
        Iterator it = ((HashSet) m42914g()).iterator();
        while (it.hasNext()) {
            AbstractC26960u0 abstractC26960u0 = (AbstractC26960u0) it.next();
            if (abstractC26960u0.f75451e) {
                abstractC26960u0.f75451e = false;
                abstractC26960u0.m1060c();
            }
        }
    }

    /* renamed from: M */
    public int m42940M() {
        ArrayList<C26907a> arrayList = this.f841d;
        return arrayList != null ? arrayList.size() : 0;
    }

    /* renamed from: N */
    public Fragment m42939N(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment m1140d = this.f840c.m1140d(string);
        if (m1140d != null) {
            return m1140d;
        }
        m42883v0(new IllegalStateException(C22128a.m8721D2("Fragment no longer exists for key ", str, ": unique id ", string)));
        throw null;
    }

    /* renamed from: O */
    public final ViewGroup m42938O(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId <= 0 || !this.f855r.mo1071c()) {
            return null;
        }
        View mo1072b = this.f855r.mo1072b(fragment.mContainerId);
        if (!(mo1072b instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) mo1072b;
    }

    /* renamed from: P */
    public C26957t m42937P() {
        C26957t c26957t = this.f858u;
        if (c26957t != null) {
            return c26957t;
        }
        Fragment fragment = this.f856s;
        return fragment != null ? fragment.mFragmentManager.m42937P() : this.f859v;
    }

    /* renamed from: Q */
    public List<Fragment> m42936Q() {
        return this.f840c.m1135i();
    }

    /* renamed from: R */
    public AbstractC26970v0 m42935R() {
        Fragment fragment = this.f856s;
        return fragment != null ? fragment.mFragmentManager.m42935R() : this.f860w;
    }

    /* renamed from: S */
    public void m42934S(Fragment fragment) {
        if (m42933T(2)) {
            String str = "hide: " + fragment;
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            m42889s0(fragment);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r4.mMenuVisible == false) goto L6;
     */
    /* renamed from: U */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m42932U(androidx.fragment.app.Fragment r4) {
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
            if (r0 != 0) goto L6c
        L14:
            r0 = r4
            androidx.fragment.app.FragmentManager r0 = r0.mChildFragmentManager
            r7 = r0
            r0 = r7
            n3.r.a.e0 r0 = r0.f840c
            java.util.List r0 = r0.m1137g()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
            r0 = 0
            r8 = r0
        L2c:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L5d
            r0 = r4
            java.lang.Object r0 = r0.next()
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            r9 = r0
            r0 = r8
            r5 = r0
            r0 = r9
            if (r0 == 0) goto L50
            r0 = r7
            r1 = r9
            boolean r0 = r0.m42932U(r1)
            r5 = r0
        L50:
            r0 = r5
            r8 = r0
            r0 = r5
            if (r0 == 0) goto L2c
            r0 = 1
            r10 = r0
            goto L60
        L5d:
            r0 = 0
            r10 = r0
        L60:
            r0 = r10
            if (r0 == 0) goto L6a
            r0 = r6
            r5 = r0
            goto L6c
        L6a:
            r0 = 0
            r5 = r0
        L6c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.m42932U(androidx.fragment.app.Fragment):boolean");
    }

    /* renamed from: V */
    public boolean m42931V(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    /* renamed from: W */
    public boolean m42930W(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (!fragment.equals(fragmentManager.f857t) || !m42930W(fragmentManager.f856s)) {
            z = false;
        }
        return z;
    }

    /* renamed from: X */
    public boolean m42929X() {
        return this.f828C || this.f829D;
    }

    /* renamed from: Y */
    public void m42928Y(int i, boolean z) {
        AbstractC26959u<?> abstractC26959u;
        if (this.f854q != null || i == -1) {
            if (!z && i == this.f853p) {
                return;
            }
            this.f853p = i;
            C26922e0 c26922e0 = this.f840c;
            Iterator<Fragment> it = c26922e0.f75311a.iterator();
            while (it.hasNext()) {
                C26916c0 c26916c0 = c26922e0.f75312b.get(it.next().mWho);
                if (c26916c0 != null) {
                    c26916c0.m1157k();
                }
            }
            for (C26916c0 c26916c02 : c26922e0.f75312b.values()) {
                if (c26916c02 != null) {
                    c26916c02.m1157k();
                    Fragment fragment = c26916c02.f75295c;
                    boolean z2 = false;
                    if (fragment.mRemoving) {
                        z2 = false;
                        if (!fragment.isInBackStack()) {
                            z2 = true;
                        }
                    }
                    if (z2) {
                        c26922e0.m1133k(c26916c02);
                    }
                }
            }
            m42885u0();
            if (!this.f827B || (abstractC26959u = this.f854q) == null || this.f853p != 7) {
                return;
            }
            abstractC26959u.m1063i();
            this.f827B = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ec  */
    /* renamed from: Z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m42927Z(androidx.fragment.app.Fragment r10, int r11) {
        /*
            Method dump skipped, instructions count: 902
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.m42927Z(androidx.fragment.app.Fragment, int):void");
    }

    /* renamed from: a */
    public C26916c0 m42926a(Fragment fragment) {
        if (m42933T(2)) {
            String str = "add: " + fragment;
        }
        C26916c0 m42910i = m42910i(fragment);
        fragment.mFragmentManager = this;
        this.f840c.m1134j(m42910i);
        if (!fragment.mDetached) {
            this.f840c.m1143a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (m42932U(fragment)) {
                this.f827B = true;
            }
        }
        return m42910i;
    }

    /* renamed from: a0 */
    public void m42925a0() {
        if (this.f854q == null) {
            return;
        }
        this.f828C = false;
        this.f829D = false;
        this.f836K.f75487f = false;
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* renamed from: b */
    public void m42924b(AbstractC26959u<?> abstractC26959u, AbstractC26955r abstractC26955r, Fragment fragment) {
        AbstractC27040y0 abstractC27040y0;
        if (this.f854q == null) {
            this.f854q = abstractC26959u;
            this.f855r = abstractC26955r;
            this.f856s = fragment;
            if (fragment != null) {
                this.f852o.add(new C0171h(this, fragment));
            } else if (abstractC26959u instanceof AbstractC26977z) {
                this.f852o.add((AbstractC26977z) abstractC26959u);
            }
            if (this.f856s != null) {
                m42881w0();
            }
            if (abstractC26959u instanceof AbstractC25370c) {
                Fragment fragment2 = (AbstractC25370c) abstractC26959u;
                OnBackPressedDispatcher onBackPressedDispatcher = fragment2.getOnBackPressedDispatcher();
                this.f844g = onBackPressedDispatcher;
                if (fragment != null) {
                    fragment2 = fragment;
                }
                onBackPressedDispatcher.m43175a(fragment2, this.f845h);
            }
            if (fragment != null) {
                C26975y c26975y = fragment.mFragmentManager.f836K;
                C26975y c26975y2 = c26975y.f75483b.get(fragment.mWho);
                C26975y c26975y3 = c26975y2;
                if (c26975y2 == null) {
                    c26975y3 = new C26975y(c26975y.f75485d);
                    c26975y.f75483b.put(fragment.mWho, c26975y3);
                }
                this.f836K = c26975y3;
            } else if (abstractC26959u instanceof AbstractC26996c1) {
                C26993b1 viewModelStore = ((AbstractC26996c1) abstractC26959u).getViewModelStore();
                C26986a1.AbstractC26987b abstractC26987b = C26975y.f75481g;
                String canonicalName = C26975y.class.getCanonicalName();
                if (canonicalName == null) {
                    throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                }
                String m8543z2 = C22128a.m8543z2("androidx.lifecycle.ViewModelProvider.DefaultKey:", canonicalName);
                AbstractC27040y0 abstractC27040y02 = viewModelStore.f75499a.get(m8543z2);
                if (C26975y.class.isInstance(abstractC27040y02)) {
                    abstractC27040y0 = abstractC27040y02;
                    if (abstractC26987b instanceof C26986a1.C26990e) {
                        ((C26986a1.C26990e) abstractC26987b).m1023a(abstractC27040y02);
                        abstractC27040y0 = abstractC27040y02;
                    }
                } else {
                    AbstractC27040y0 m1024b = abstractC26987b instanceof C26986a1.AbstractC26988c ? ((C26986a1.AbstractC26988c) abstractC26987b).m1024b(m8543z2, C26975y.class) : ((C26975y.C26976a) abstractC26987b).create(C26975y.class);
                    AbstractC27040y0 put = viewModelStore.f75499a.put(m8543z2, m1024b);
                    abstractC27040y0 = m1024b;
                    if (put != null) {
                        put.onCleared();
                        abstractC27040y0 = m1024b;
                    }
                }
                this.f836K = (C26975y) abstractC27040y0;
            } else {
                this.f836K = new C26975y(false);
            }
            this.f836K.f75487f = m42929X();
            this.f840c.f75313c = this.f836K;
            AbstractC26959u<?> abstractC26959u2 = this.f854q;
            if (!(abstractC26959u2 instanceof AbstractC25375c)) {
                return;
            }
            ActivityResultRegistry activityResultRegistry = ((AbstractC25375c) abstractC26959u2).getActivityResultRegistry();
            String m8543z22 = C22128a.m8543z2("FragmentManager:", fragment != null ? C22128a.m8618h(new StringBuilder(), fragment.mWho, StringConstant.COLON) : "");
            this.f861x = activityResultRegistry.m43171c(C22128a.m8543z2(m8543z22, "StartActivityForResult"), new C25380d(), new C0172i());
            this.f862y = activityResultRegistry.m43171c(C22128a.m8543z2(m8543z22, "StartIntentSenderForResult"), new C0173j(), new C0164a());
            this.f863z = activityResultRegistry.m43171c(C22128a.m8543z2(m8543z22, "RequestPermissions"), new C25378b(), new C0165b());
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: b0 */
    public void m42923b0(C26916c0 c26916c0) {
        Fragment fragment = c26916c0.f75295c;
        if (fragment.mDeferStart) {
            if (this.f839b) {
                this.f831F = true;
                return;
            }
            fragment.mDeferStart = false;
            c26916c0.m1157k();
        }
    }

    /* renamed from: c */
    public void m42922c(Fragment fragment) {
        if (m42933T(2)) {
            String str = "attach: " + fragment;
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f840c.m1143a(fragment);
            if (m42933T(2)) {
                String str2 = "add from attach: " + fragment;
            }
            if (!m42932U(fragment)) {
                return;
            }
            this.f827B = true;
        }
    }

    /* renamed from: c0 */
    public void m42921c0() {
        m42951B(new C0177n(null, -1, 0), false);
    }

    /* renamed from: d */
    public AbstractC26924f0 m42920d() {
        return new C26907a(this);
    }

    /* renamed from: d0 */
    public boolean m42919d0() {
        return m42917e0(null, -1, 0);
    }

    /* renamed from: e */
    public final void m42918e(Fragment fragment) {
        HashSet<C26508a> hashSet = this.f849l.get(fragment);
        if (hashSet != null) {
            Iterator<C26508a> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().m1722a();
            }
            hashSet.clear();
            m42908j(fragment);
            this.f849l.remove(fragment);
        }
    }

    /* renamed from: e0 */
    public final boolean m42917e0(String str, int i, int i2) {
        m42949D(false);
        m42950C(true);
        Fragment fragment = this.f857t;
        if (fragment == null || i >= 0 || str != null || !fragment.getChildFragmentManager().m42919d0()) {
            boolean m42915f0 = m42915f0(this.f832G, this.f833H, str, i, i2);
            if (m42915f0) {
                this.f839b = true;
                try {
                    m42909i0(this.f832G, this.f833H);
                } finally {
                    m42916f();
                }
            }
            m42881w0();
            m42879y();
            this.f840c.m1142b();
            return m42915f0;
        }
        return true;
    }

    /* renamed from: f */
    public final void m42916f() {
        this.f839b = false;
        this.f833H.clear();
        this.f832G.clear();
    }

    /* renamed from: f0 */
    public boolean m42915f0(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        Boolean bool = Boolean.TRUE;
        ArrayList<C26907a> arrayList3 = this.f841d;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f841d.remove(size));
            arrayList2.add(bool);
            return true;
        }
        int i3 = -1;
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                C26907a c26907a = this.f841d.get(size2);
                if ((str != null && str.equals(c26907a.f75325i)) || (i >= 0 && i == c26907a.f75271s)) {
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
                    C26907a c26907a2 = this.f841d.get(i5);
                    if (str != null) {
                        size2 = i5;
                        if (str.equals(c26907a2.f75325i)) {
                            continue;
                        }
                    }
                    i4 = i5;
                    if (i < 0) {
                        break;
                    }
                    i4 = i5;
                    if (i != c26907a2.f75271s) {
                        break;
                    }
                    size2 = i5;
                }
            }
            i3 = i4;
        }
        if (i3 == this.f841d.size() - 1) {
            return false;
        }
        for (int size3 = this.f841d.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f841d.remove(size3));
            arrayList2.add(bool);
        }
        return true;
    }

    /* renamed from: g */
    public final Set<AbstractC26960u0> m42914g() {
        HashSet hashSet = new HashSet();
        Iterator it = ((ArrayList) this.f840c.m1138f()).iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((C26916c0) it.next()).f75295c.mContainer;
            if (viewGroup != null) {
                hashSet.add(AbstractC26960u0.m1056g(viewGroup, m42935R()));
            }
        }
        return hashSet;
    }

    /* renamed from: g0 */
    public void m42913g0(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager == this) {
            bundle.putString(str, fragment.mWho);
        } else {
            m42883v0(new IllegalStateException(C22128a.m8567t2("Fragment ", fragment, " is not currently in the FragmentManager")));
            throw null;
        }
    }

    /* renamed from: h */
    public void m42912h(C26907a c26907a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c26907a.m1180u(z3);
        } else {
            c26907a.m1181t();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c26907a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.f853p >= 1) {
            C26937m0.m1099q(this.f854q.f75444b, this.f855r, arrayList, arrayList2, 0, 1, true, this.f850m);
        }
        if (z3) {
            m42928Y(this.f853p, true);
        }
        Iterator it = ((ArrayList) this.f840c.m1137g()).iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && c26907a.m1179v(fragment.mContainerId)) {
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

    /* renamed from: h0 */
    public void m42911h0(Fragment fragment) {
        if (m42933T(2)) {
            String str = "remove: " + fragment + " nesting=" + fragment.mBackStackNesting;
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!isInBackStack)) {
            this.f840c.m1132l(fragment);
            if (m42932U(fragment)) {
                this.f827B = true;
            }
            fragment.mRemoving = true;
            m42889s0(fragment);
        }
    }

    /* renamed from: i */
    public C26916c0 m42910i(Fragment fragment) {
        C26916c0 m1136h = this.f840c.m1136h(fragment.mWho);
        if (m1136h != null) {
            return m1136h;
        }
        C26916c0 c26916c0 = new C26916c0(this.f851n, this.f840c, fragment);
        c26916c0.m1155m(this.f854q.f75444b.getClassLoader());
        c26916c0.f75297e = this.f853p;
        return c26916c0;
    }

    /* renamed from: i0 */
    public final void m42909i0(ArrayList<C26907a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m42945H(arrayList, arrayList2);
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
            if (!arrayList.get(i2).f75332p) {
                if (i != i2) {
                    m42947F(arrayList, arrayList2, i, i2);
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
                        if (arrayList.get(i6).f75332p) {
                            break;
                        }
                        i6++;
                    }
                }
                m42947F(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m42947F(arrayList, arrayList2, i, size);
    }

    /* renamed from: j */
    public final void m42908j(Fragment fragment) {
        fragment.performDestroyView();
        this.f851n.m1032n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.mo1000l(null);
        fragment.mInLayout = false;
    }

    /* renamed from: j0 */
    public void m42907j0(Parcelable parcelable) {
        C26916c0 c26916c0;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f884a == null) {
            return;
        }
        this.f840c.f75312b.clear();
        Iterator<FragmentState> it = fragmentManagerState.f884a.iterator();
        while (it.hasNext()) {
            FragmentState next = it.next();
            if (next != null) {
                Fragment fragment = this.f836K.f75482a.get(next.f893b);
                if (fragment != null) {
                    if (m42933T(2)) {
                        String str = "restoreSaveState: re-attaching retained " + fragment;
                    }
                    c26916c0 = new C26916c0(this.f851n, this.f840c, fragment, next);
                } else {
                    c26916c0 = new C26916c0(this.f851n, this.f840c, this.f854q.f75444b.getClassLoader(), m42937P(), next);
                }
                Fragment fragment2 = c26916c0.f75295c;
                fragment2.mFragmentManager = this;
                if (m42933T(2)) {
                    StringBuilder m8728C = C22128a.m8728C("restoreSaveState: active (");
                    m8728C.append(fragment2.mWho);
                    m8728C.append("): ");
                    m8728C.append(fragment2);
                    m8728C.toString();
                }
                c26916c0.m1155m(this.f854q.f75444b.getClassLoader());
                this.f840c.m1134j(c26916c0);
                c26916c0.f75297e = this.f853p;
            }
        }
        C26975y c26975y = this.f836K;
        Objects.requireNonNull(c26975y);
        Iterator it2 = new ArrayList(c26975y.f75482a.values()).iterator();
        while (it2.hasNext()) {
            Fragment fragment3 = (Fragment) it2.next();
            if (!this.f840c.m1141c(fragment3.mWho)) {
                if (m42933T(2)) {
                    String str2 = "Discarding retained Fragment " + fragment3 + " that was not found in the set of active Fragments " + fragmentManagerState.f884a;
                }
                this.f836K.m1030d(fragment3);
                fragment3.mFragmentManager = this;
                C26916c0 c26916c02 = new C26916c0(this.f851n, this.f840c, fragment3);
                c26916c02.f75297e = 1;
                c26916c02.m1157k();
                fragment3.mRemoving = true;
                c26916c02.m1157k();
            }
        }
        C26922e0 c26922e0 = this.f840c;
        ArrayList<String> arrayList = fragmentManagerState.f885b;
        c26922e0.f75311a.clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                Fragment m1140d = c26922e0.m1140d(str3);
                if (m1140d == null) {
                    throw new IllegalStateException(C22128a.m8725C2("No instantiated fragment for (", str3, ")"));
                }
                if (m42933T(2)) {
                    String str4 = "restoreSaveState: added (" + str3 + "): " + m1140d;
                }
                c26922e0.m1143a(m1140d);
            }
        }
        if (fragmentManagerState.f886c != null) {
            this.f841d = new ArrayList<>(fragmentManagerState.f886c.length);
            int i = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f886c;
                if (i >= backStackStateArr.length) {
                    break;
                }
                BackStackState backStackState = backStackStateArr[i];
                Objects.requireNonNull(backStackState);
                C26907a c26907a = new C26907a(this);
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    int[] iArr = backStackState.f772a;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    AbstractC26924f0.C26925a c26925a = new AbstractC26924f0.C26925a();
                    int i4 = i2 + 1;
                    c26925a.f75333a = iArr[i2];
                    if (m42933T(2)) {
                        String str5 = "Instantiate " + c26907a + " op #" + i3 + " base fragment #" + backStackState.f772a[i4];
                    }
                    String str6 = backStackState.f773b.get(i3);
                    if (str6 != null) {
                        c26925a.f75334b = this.f840c.m1140d(str6);
                    } else {
                        c26925a.f75334b = null;
                    }
                    c26925a.f75339g = AbstractC27028u.EnumC27030b.values()[backStackState.f774c[i3]];
                    c26925a.f75340h = AbstractC27028u.EnumC27030b.values()[backStackState.f775d[i3]];
                    int[] iArr2 = backStackState.f772a;
                    int i5 = i4 + 1;
                    int i6 = iArr2[i4];
                    c26925a.f75335c = i6;
                    int i7 = i5 + 1;
                    int i8 = iArr2[i5];
                    c26925a.f75336d = i8;
                    int i9 = i7 + 1;
                    int i10 = iArr2[i7];
                    c26925a.f75337e = i10;
                    int i11 = iArr2[i9];
                    c26925a.f75338f = i11;
                    c26907a.f75318b = i6;
                    c26907a.f75319c = i8;
                    c26907a.f75320d = i10;
                    c26907a.f75321e = i11;
                    c26907a.m1129d(c26925a);
                    i3++;
                    i2 = i9 + 1;
                }
                c26907a.f75322f = backStackState.f776e;
                c26907a.f75325i = backStackState.f777f;
                c26907a.f75271s = backStackState.f778g;
                c26907a.f75323g = true;
                c26907a.f75326j = backStackState.f779h;
                c26907a.f75327k = backStackState.f780i;
                c26907a.f75328l = backStackState.f781j;
                c26907a.f75329m = backStackState.f782k;
                c26907a.f75330n = backStackState.f783l;
                c26907a.f75331o = backStackState.f784m;
                c26907a.f75332p = backStackState.f785n;
                c26907a.m1184q(1);
                if (m42933T(2)) {
                    StringBuilder m8720E = C22128a.m8720E("restoreAllState: back stack #", i, " (index ");
                    m8720E.append(c26907a.f75271s);
                    m8720E.append("): ");
                    m8720E.append(c26907a);
                    m8720E.toString();
                    PrintWriter printWriter = new PrintWriter(new C26958t0("FragmentManager"));
                    c26907a.m1182s("  ", printWriter, false);
                    printWriter.close();
                }
                this.f841d.add(c26907a);
                i++;
            }
        } else {
            this.f841d = null;
        }
        this.f846i.set(fragmentManagerState.f887d);
        String str7 = fragmentManagerState.f888e;
        if (str7 != null) {
            Fragment m42944I = m42944I(str7);
            this.f857t = m42944I;
            m42886u(m42944I);
        }
        ArrayList<String> arrayList2 = fragmentManagerState.f889f;
        if (arrayList2 != null) {
            for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                Bundle bundle = fragmentManagerState.f890g.get(i12);
                bundle.setClassLoader(this.f854q.f75444b.getClassLoader());
                this.f847j.put(arrayList2.get(i12), bundle);
            }
        }
        this.f826A = new ArrayDeque<>(fragmentManagerState.f891h);
    }

    /* renamed from: k */
    public void m42906k(Fragment fragment) {
        if (m42933T(2)) {
            String str = "detach: " + fragment;
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (!fragment.mAdded) {
                return;
            }
            if (m42933T(2)) {
                String str2 = "remove from detach: " + fragment;
            }
            this.f840c.m1132l(fragment);
            if (m42932U(fragment)) {
                this.f827B = true;
            }
            m42889s0(fragment);
        }
    }

    /* renamed from: k0 */
    public Parcelable m42905k0() {
        ArrayList<String> arrayList;
        m42941L();
        m42952A();
        m42949D(true);
        this.f828C = true;
        this.f836K.f75487f = true;
        C26922e0 c26922e0 = this.f840c;
        Objects.requireNonNull(c26922e0);
        ArrayList<FragmentState> arrayList2 = new ArrayList<>(c26922e0.f75312b.size());
        for (C26916c0 c26916c0 : c26922e0.f75312b.values()) {
            if (c26916c0 != null) {
                Fragment fragment = c26916c0.f75295c;
                FragmentState fragmentState = new FragmentState(fragment);
                Fragment fragment2 = c26916c0.f75295c;
                if (fragment2.mState <= -1 || fragmentState.f904m != null) {
                    fragmentState.f904m = fragment2.mSavedFragmentState;
                } else {
                    Bundle m1153o = c26916c0.m1153o();
                    fragmentState.f904m = m1153o;
                    if (c26916c0.f75295c.mTargetWho != null) {
                        if (m1153o == null) {
                            fragmentState.f904m = new Bundle();
                        }
                        fragmentState.f904m.putString("android:target_state", c26916c0.f75295c.mTargetWho);
                        int i = c26916c0.f75295c.mTargetRequestCode;
                        if (i != 0) {
                            fragmentState.f904m.putInt("android:target_req_state", i);
                        }
                    }
                }
                arrayList2.add(fragmentState);
                if (m42933T(2)) {
                    String str = "Saved state of " + fragment + ": " + fragmentState.f904m;
                }
            }
        }
        if (arrayList2.isEmpty()) {
            m42933T(2);
            return null;
        }
        C26922e0 c26922e02 = this.f840c;
        synchronized (c26922e02.f75311a) {
            if (c26922e02.f75311a.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList<>(c26922e02.f75311a.size());
                Iterator<Fragment> it = c26922e02.f75311a.iterator();
                while (it.hasNext()) {
                    Fragment next = it.next();
                    arrayList.add(next.mWho);
                    if (m42933T(2)) {
                        String str2 = "saveAllState: adding fragment (" + next.mWho + "): " + next;
                    }
                }
            }
        }
        ArrayList<C26907a> arrayList3 = this.f841d;
        BackStackState[] backStackStateArr = null;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            backStackStateArr = null;
            if (size > 0) {
                BackStackState[] backStackStateArr2 = new BackStackState[size];
                int i2 = 0;
                while (true) {
                    backStackStateArr = backStackStateArr2;
                    if (i2 >= size) {
                        break;
                    }
                    backStackStateArr2[i2] = new BackStackState(this.f841d.get(i2));
                    if (m42933T(2)) {
                        StringBuilder m8720E = C22128a.m8720E("saveAllState: adding back stack #", i2, ": ");
                        m8720E.append(this.f841d.get(i2));
                        m8720E.toString();
                    }
                    i2++;
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f884a = arrayList2;
        fragmentManagerState.f885b = arrayList;
        fragmentManagerState.f886c = backStackStateArr;
        fragmentManagerState.f887d = this.f846i.get();
        Fragment fragment3 = this.f857t;
        if (fragment3 != null) {
            fragmentManagerState.f888e = fragment3.mWho;
        }
        fragmentManagerState.f889f.addAll(this.f847j.keySet());
        fragmentManagerState.f890g.addAll(this.f847j.values());
        fragmentManagerState.f891h = new ArrayList<>(this.f826A);
        return fragmentManagerState;
    }

    /* renamed from: l */
    public void m42904l(Configuration configuration) {
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    /* renamed from: l0 */
    public Fragment$SavedState m42903l0(Fragment fragment) {
        C26916c0 m1136h = this.f840c.m1136h(fragment.mWho);
        if (m1136h == null || !m1136h.f75295c.equals(fragment)) {
            m42883v0(new IllegalStateException(C22128a.m8567t2("Fragment ", fragment, " is not currently in the FragmentManager")));
            throw null;
        }
        Fragment$SavedState fragment$SavedState = null;
        if (m1136h.f75295c.mState > -1) {
            Bundle m1153o = m1136h.m1153o();
            fragment$SavedState = null;
            if (m1153o != null) {
                fragment$SavedState = new Fragment$SavedState(m1153o);
            }
        }
        return fragment$SavedState;
    }

    /* renamed from: m */
    public boolean m42902m(MenuItem menuItem) {
        if (this.f853p < 1) {
            return false;
        }
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: m0 */
    public void m42901m0() {
        synchronized (this.f838a) {
            ArrayList<C0178o> arrayList = this.f835J;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.f838a.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.f854q.f75445c.removeCallbacks(this.f837L);
                this.f854q.f75445c.post(this.f837L);
                m42881w0();
            }
        }
    }

    /* renamed from: n */
    public void m42900n() {
        this.f828C = false;
        this.f829D = false;
        this.f836K.f75487f = false;
        m42880x(1);
    }

    /* renamed from: n0 */
    public void m42899n0(Fragment fragment, boolean z) {
        ViewGroup m42938O = m42938O(fragment);
        if (m42938O == null || !(m42938O instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m42938O).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: o */
    public boolean m42898o(Menu menu, MenuInflater menuInflater) {
        if (this.f853p < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null && m42931V(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.f842e != null) {
            for (int i = 0; i < this.f842e.size(); i++) {
                Fragment fragment2 = this.f842e.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f842e = arrayList;
        return z;
    }

    /* renamed from: o0 */
    public final void m42897o0(String str, Bundle bundle) {
        C0175l c0175l = this.f848k.get(str);
        if (c0175l != null) {
            if (((C26994c0) c0175l.f874a).f75501c.compareTo(AbstractC27028u.EnumC27030b.STARTED) >= 0) {
                c0175l.f875b.mo1168a(str, bundle);
                return;
            }
        }
        this.f847j.put(str, bundle);
    }

    /* renamed from: p */
    public void m42896p() {
        this.f830E = true;
        m42949D(true);
        m42952A();
        m42880x(-1);
        this.f854q = null;
        this.f855r = null;
        this.f856s = null;
        if (this.f844g != null) {
            this.f845h.remove();
            this.f844g = null;
        }
        AbstractC25374b<Intent> abstractC25374b = this.f861x;
        if (abstractC25374b != null) {
            abstractC25374b.mo3693b();
            this.f862y.mo3693b();
            this.f863z.mo3693b();
        }
    }

    /* renamed from: p0 */
    public final void m42895p0(String str, AbstractC26992b0 abstractC26992b0, AbstractC26914b0 abstractC26914b0) {
        AbstractC27028u lifecycle = abstractC26992b0.getLifecycle();
        if (((C26994c0) lifecycle).f75501c == AbstractC27028u.EnumC27030b.DESTROYED) {
            return;
        }
        6 r0 = new 6(this, str, abstractC26914b0, lifecycle);
        lifecycle.mo988a(r0);
        C0175l put = this.f848k.put(str, new C0175l(lifecycle, abstractC26914b0, r0));
        if (put == null) {
            return;
        }
        put.f874a.mo987b(put.f876c);
    }

    /* renamed from: q */
    public void m42894q() {
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* renamed from: q0 */
    public void m42893q0(Fragment fragment, AbstractC27028u.EnumC27030b enumC27030b) {
        if (fragment.equals(m42944I(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = enumC27030b;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: r */
    public void m42892r(boolean z) {
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    /* renamed from: r0 */
    public void m42891r0(Fragment fragment) {
        if (fragment == null || (fragment.equals(m42944I(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f857t;
            this.f857t = fragment;
            m42886u(fragment2);
            m42886u(this.f857t);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: s */
    public boolean m42890s(MenuItem menuItem) {
        if (this.f853p < 1) {
            return false;
        }
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: s0 */
    public final void m42889s0(Fragment fragment) {
        ViewGroup m42938O = m42938O(fragment);
        if (m42938O != null) {
            int enterAnim = fragment.getEnterAnim();
            int exitAnim = fragment.getExitAnim();
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + exitAnim + enterAnim <= 0) {
                return;
            }
            int i = C0158R.C0160id.visible_removing_fragment_view_tag;
            if (m42938O.getTag(i) == null) {
                m42938O.setTag(i, fragment);
            }
            ((Fragment) m42938O.getTag(i)).setPopDirection(fragment.getPopDirection());
        }
    }

    /* renamed from: t */
    public void m42888t(Menu menu) {
        if (this.f853p < 1) {
            return;
        }
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* renamed from: t0 */
    public void m42887t0(Fragment fragment) {
        if (m42933T(2)) {
            String str = "show: " + fragment;
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    public String toString() {
        StringBuilder m8554x = C22128a.m8554x(128, "FragmentManager{");
        m8554x.append(Integer.toHexString(System.identityHashCode(this)));
        m8554x.append(" in ");
        Fragment fragment = this.f856s;
        if (fragment != null) {
            m8554x.append(fragment.getClass().getSimpleName());
            m8554x.append("{");
            m8554x.append(Integer.toHexString(System.identityHashCode(this.f856s)));
            m8554x.append("}");
        } else {
            AbstractC26959u<?> abstractC26959u = this.f854q;
            if (abstractC26959u != null) {
                m8554x.append(abstractC26959u.getClass().getSimpleName());
                m8554x.append("{");
                m8554x.append(Integer.toHexString(System.identityHashCode(this.f854q)));
                m8554x.append("}");
            } else {
                m8554x.append(AnalyticsConstants.NULL);
            }
        }
        m8554x.append("}}");
        return m8554x.toString();
    }

    /* renamed from: u */
    public final void m42886u(Fragment fragment) {
        if (fragment == null || !fragment.equals(m42944I(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    /* renamed from: u0 */
    public final void m42885u0() {
        Iterator it = ((ArrayList) this.f840c.m1138f()).iterator();
        while (it.hasNext()) {
            m42923b0((C26916c0) it.next());
        }
    }

    /* renamed from: v */
    public void m42884v(boolean z) {
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    /* renamed from: v0 */
    public final void m42883v0(RuntimeException runtimeException) {
        runtimeException.getMessage();
        PrintWriter printWriter = new PrintWriter(new C26958t0("FragmentManager"));
        AbstractC26959u<?> abstractC26959u = this.f854q;
        try {
            if (abstractC26959u != null) {
                abstractC26959u.m1068d("  ", null, printWriter, new String[0]);
            } else {
                m42878z("  ", null, printWriter, new String[0]);
            }
        } catch (Exception e) {
        }
        throw runtimeException;
    }

    /* renamed from: w */
    public boolean m42882w(Menu menu) {
        boolean z = false;
        if (this.f853p < 1) {
            return false;
        }
        for (Fragment fragment : this.f840c.m1135i()) {
            if (fragment != null && m42931V(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: w0 */
    public final void m42881w0() {
        synchronized (this.f838a) {
            boolean z = true;
            if (!this.f838a.isEmpty()) {
                this.f845h.setEnabled(true);
                return;
            }
            AbstractC25369b abstractC25369b = this.f845h;
            if (m42940M() <= 0 || !m42930W(this.f856s)) {
                z = false;
            }
            abstractC25369b.setEnabled(z);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: x */
    public final void m42880x(int i) {
        try {
            this.f839b = true;
            for (C26916c0 c26916c0 : this.f840c.f75312b.values()) {
                if (c26916c0 != null) {
                    c26916c0.f75297e = i;
                }
            }
            m42928Y(i, false);
            Iterator it = ((HashSet) m42914g()).iterator();
            while (it.hasNext()) {
                ((AbstractC26960u0) it.next()).m1058e();
            }
            this.f839b = false;
            m42949D(true);
        } catch (Throwable th) {
            this.f839b = false;
            throw th;
        }
    }

    /* renamed from: y */
    public final void m42879y() {
        if (this.f831F) {
            this.f831F = false;
            m42885u0();
        }
    }

    /* renamed from: z */
    public void m42878z(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String m8543z2 = C22128a.m8543z2(str, "    ");
        C26922e0 c26922e0 = this.f840c;
        Objects.requireNonNull(c26922e0);
        String str2 = str + "    ";
        if (!c26922e0.f75312b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C26916c0 c26916c0 : c26922e0.f75312b.values()) {
                printWriter.print(str);
                if (c26916c0 != null) {
                    Fragment fragment = c26916c0.f75295c;
                    printWriter.println(fragment);
                    fragment.dump(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println(AnalyticsConstants.NULL);
                }
            }
        }
        int size3 = c26922e0.f75311a.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(c26922e0.f75311a.get(i).toString());
            }
        }
        ArrayList<Fragment> arrayList = this.f842e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(this.f842e.get(i2).toString());
            }
        }
        ArrayList<C26907a> arrayList2 = this.f841d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                C26907a c26907a = this.f841d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c26907a.toString());
                c26907a.m1182s(m8543z2, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f846i.get());
        synchronized (this.f838a) {
            int size4 = this.f838a.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size4; i4++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println((AbstractC0176m) this.f838a.get(i4));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f854q);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f855r);
        if (this.f856s != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f856s);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f853p);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f828C);
        printWriter.print(" mStopped=");
        printWriter.print(this.f829D);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f830E);
        if (this.f827B) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f827B);
        }
    }
}
