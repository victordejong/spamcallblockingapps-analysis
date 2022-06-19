package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.AbstractC0087b;
import androidx.activity.AbstractC0088c;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.AbstractC0094a;
import androidx.activity.result.AbstractC0095b;
import androidx.activity.result.AbstractC0096c;
import androidx.activity.result.AbstractC0100d;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.p006e.AbstractC0101a;
import androidx.activity.result.p006e.C0103b;
import androidx.activity.result.p006e.C0104c;
import androidx.core.p008os.C0623b;
import androidx.fragment.app.AbstractC0754s;
import androidx.fragment.app.C0728d;
import androidx.fragment.app.C0756t;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0795f;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.AbstractC0819u;
import androidx.lifecycle.C0818t;
import androidx.lifecycle.Lifecycle;
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
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p020b.p036e.C1491b;
import p020b.p061m.C1751b;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager.class */
public abstract class FragmentManager {

    /* renamed from: a */
    private static boolean f3286a = false;

    /* renamed from: b */
    static boolean f3287b = true;

    /* renamed from: B */
    private AbstractC0095b<Intent> f3289B;

    /* renamed from: C */
    private AbstractC0095b<IntentSenderRequest> f3290C;

    /* renamed from: D */
    private AbstractC0095b<String[]> f3291D;

    /* renamed from: F */
    private boolean f3293F;

    /* renamed from: G */
    private boolean f3294G;

    /* renamed from: H */
    private boolean f3295H;

    /* renamed from: I */
    private boolean f3296I;

    /* renamed from: J */
    private boolean f3297J;

    /* renamed from: K */
    private ArrayList<C0706a> f3298K;

    /* renamed from: L */
    private ArrayList<Boolean> f3299L;

    /* renamed from: M */
    private ArrayList<Fragment> f3300M;

    /* renamed from: N */
    private ArrayList<C0696p> f3301N;

    /* renamed from: O */
    private C0744l f3302O;

    /* renamed from: d */
    private boolean f3305d;

    /* renamed from: f */
    ArrayList<C0706a> f3307f;

    /* renamed from: g */
    private ArrayList<Fragment> f3308g;

    /* renamed from: i */
    private OnBackPressedDispatcher f3310i;

    /* renamed from: n */
    private ArrayList<AbstractC0693m> f3315n;

    /* renamed from: t */
    private AbstractC0738h<?> f3321t;

    /* renamed from: u */
    private AbstractC0735e f3322u;

    /* renamed from: v */
    private Fragment f3323v;

    /* renamed from: w */
    Fragment f3324w;

    /* renamed from: c */
    private final ArrayList<AbstractC0694n> f3304c = new ArrayList<>();

    /* renamed from: e */
    private final C0753r f3306e = new C0753r();

    /* renamed from: h */
    private final LayoutInflater$Factory2C0739i f3309h = new LayoutInflater$Factory2C0739i(this);

    /* renamed from: j */
    private final AbstractC0087b f3311j = new C0683c(false);

    /* renamed from: k */
    private final AtomicInteger f3312k = new AtomicInteger();

    /* renamed from: l */
    private final Map<String, Bundle> f3313l = Collections.synchronizedMap(new HashMap());

    /* renamed from: m */
    private final Map<String, ?> f3314m = Collections.synchronizedMap(new HashMap());

    /* renamed from: o */
    private Map<Fragment, HashSet<C0623b>> f3316o = Collections.synchronizedMap(new HashMap());

    /* renamed from: p */
    private final C0756t.AbstractC0763g f3317p = new C0684d();

    /* renamed from: q */
    private final C0741j f3318q = new C0741j(this);

    /* renamed from: r */
    private final CopyOnWriteArrayList<AbstractC0746m> f3319r = new CopyOnWriteArrayList<>();

    /* renamed from: s */
    int f3320s = -1;

    /* renamed from: x */
    private C0737g f3325x = null;

    /* renamed from: y */
    private C0737g f3326y = new C0685e();

    /* renamed from: z */
    private AbstractC0777y f3327z = null;

    /* renamed from: A */
    private AbstractC0777y f3288A = new C0686f();

    /* renamed from: E */
    ArrayDeque<LaunchedFragmentInfo> f3292E = new ArrayDeque<>();

    /* renamed from: P */
    private Runnable f3303P = new RunnableC0687g();

    /* renamed from: androidx.fragment.app.FragmentManager$6 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$6.class */
    class C06796 implements AbstractC0795f {

        /* renamed from: d */
        final /* synthetic */ String f3328d;

        /* renamed from: e */
        final /* synthetic */ AbstractC0748o f3329e;

        /* renamed from: f */
        final /* synthetic */ Lifecycle f3330f;

        /* renamed from: g */
        final /* synthetic */ FragmentManager f3331g;

        @Override // androidx.lifecycle.AbstractC0795f
        /* renamed from: c */
        public void mo30701c(AbstractC0797h abstractC0797h, Lifecycle.Event event) {
            Bundle bundle;
            if (event == Lifecycle.Event.ON_START && (bundle = (Bundle) this.f3331g.f3313l.get(this.f3328d)) != null) {
                this.f3329e.m32557a(this.f3328d, bundle);
                this.f3331g.m32761q(this.f3328d);
            }
            if (event == Lifecycle.Event.ON_DESTROY) {
                this.f3330f.mo32396c(this);
                this.f3331g.f3314m.remove(this.f3328d);
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$LaunchedFragmentInfo.class */
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new C0680a();

        /* renamed from: d */
        String f3332d;

        /* renamed from: e */
        int f3333e;

        /* renamed from: androidx.fragment.app.FragmentManager$LaunchedFragmentInfo$a */
        /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$LaunchedFragmentInfo$a.class */
        class C0680a implements Parcelable.Creator<LaunchedFragmentInfo> {
            C0680a() {
            }

            /* renamed from: a */
            public LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            /* renamed from: b */
            public LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        }

        LaunchedFragmentInfo(Parcel parcel) {
            this.f3332d = parcel.readString();
            this.f3333e = parcel.readInt();
        }

        LaunchedFragmentInfo(String str, int i) {
            this.f3332d = str;
            this.f3333e = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f3332d);
            parcel.writeInt(this.f3333e);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$a.class */
    public class C0681a implements AbstractC0094a<ActivityResult> {
        C0681a() {
            FragmentManager.this = r4;
        }

        /* renamed from: b */
        public void mo32734a(ActivityResult activityResult) {
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f3292E.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No IntentSenders were started for " + this);
                return;
            }
            String str = pollFirst.f3332d;
            int i = pollFirst.f3333e;
            Fragment m32525i = FragmentManager.this.f3306e.m32525i(str);
            if (m32525i != null) {
                m32525i.mo17298w0(i, activityResult.m35747b(), activityResult.m35748a());
                return;
            }
            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$b.class */
    public class C0682b implements AbstractC0094a<Map<String, Boolean>> {
        C0682b() {
            FragmentManager.this = r4;
        }

        @SuppressLint({"SyntheticAccessor"})
        /* renamed from: b */
        public void mo32734a(Map<String, Boolean> map) {
            String[] strArr = (String[]) map.keySet().toArray(new String[0]);
            ArrayList arrayList = new ArrayList(map.values());
            int[] iArr = new int[arrayList.size()];
            for (int i = 0; i < arrayList.size(); i++) {
                iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
            }
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f3292E.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No permissions were requested for " + this);
                return;
            }
            String str = pollFirst.f3332d;
            int i2 = pollFirst.f3333e;
            Fragment m32525i = FragmentManager.this.f3306e.m32525i(str);
            if (m32525i != null) {
                m32525i.m32940X0(i2, strArr, iArr);
                return;
            }
            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$c.class */
    public class C0683c extends AbstractC0087b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0683c(boolean z) {
            super(z);
            FragmentManager.this = r4;
        }

        @Override // androidx.activity.AbstractC0087b
        /* renamed from: b */
        public void mo32735b() {
            FragmentManager.this.m32856C0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$d.class */
    public class C0684d implements C0756t.AbstractC0763g {
        C0684d() {
            FragmentManager.this = r4;
        }

        @Override // androidx.fragment.app.C0756t.AbstractC0763g
        /* renamed from: a */
        public void mo32463a(Fragment fragment, C0623b c0623b) {
            if (!c0623b.m33198b()) {
                FragmentManager.this.m32804b1(fragment, c0623b);
            }
        }

        @Override // androidx.fragment.app.C0756t.AbstractC0763g
        /* renamed from: b */
        public void mo32462b(Fragment fragment, C0623b c0623b) {
            FragmentManager.this.m32794f(fragment, c0623b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentManager$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$e.class */
    public class C0685e extends C0737g {
        C0685e() {
            FragmentManager.this = r4;
        }

        @Override // androidx.fragment.app.C0737g
        /* renamed from: a */
        public Fragment mo32600a(ClassLoader classLoader, String str) {
            return FragmentManager.this.m32750u0().m32625d(FragmentManager.this.m32750u0().m32593h(), str, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentManager$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$f.class */
    public class C0686f implements AbstractC0777y {
        C0686f() {
            FragmentManager.this = r4;
        }

        @Override // androidx.fragment.app.AbstractC0777y
        /* renamed from: a */
        public SpecialEffectsController mo32441a(ViewGroup viewGroup) {
            return new C0707b(viewGroup);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentManager$g */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$g.class */
    public class RunnableC0687g implements Runnable {
        RunnableC0687g() {
            FragmentManager.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.m32808a0(true);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$h */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$h.class */
    public class C0688h extends AnimatorListenerAdapter {

        /* renamed from: a */
        final /* synthetic */ ViewGroup f3341a;

        /* renamed from: b */
        final /* synthetic */ View f3342b;

        /* renamed from: c */
        final /* synthetic */ Fragment f3343c;

        C0688h(ViewGroup viewGroup, View view, Fragment fragment) {
            FragmentManager.this = r4;
            this.f3341a = viewGroup;
            this.f3342b = view;
            this.f3343c = fragment;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f3341a.endViewTransition(this.f3342b);
            animator.removeListener(this);
            Fragment fragment = this.f3343c;
            View view = fragment.f3201L;
            if (view == null || !fragment.f3193D) {
                return;
            }
            view.setVisibility(8);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$i */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$i.class */
    public class C0689i implements AbstractC0746m {

        /* renamed from: d */
        final /* synthetic */ Fragment f3345d;

        C0689i(Fragment fragment) {
            FragmentManager.this = r4;
            this.f3345d = fragment;
        }

        @Override // androidx.fragment.app.AbstractC0746m
        /* renamed from: b */
        public void mo32560b(FragmentManager fragmentManager, Fragment fragment) {
            this.f3345d.m32883z0(fragment);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$j */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$j.class */
    public class C0690j implements AbstractC0094a<ActivityResult> {
        C0690j() {
            FragmentManager.this = r4;
        }

        /* renamed from: b */
        public void mo32734a(ActivityResult activityResult) {
            LaunchedFragmentInfo pollFirst = FragmentManager.this.f3292E.pollFirst();
            if (pollFirst == null) {
                Log.w("FragmentManager", "No Activities were started for result for " + this);
                return;
            }
            String str = pollFirst.f3332d;
            int i = pollFirst.f3333e;
            Fragment m32525i = FragmentManager.this.f3306e.m32525i(str);
            if (m32525i != null) {
                m32525i.mo17298w0(i, activityResult.m35747b(), activityResult.m35748a());
                return;
            }
            Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$k */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$k.class */
    public static class C0691k extends AbstractC0101a<IntentSenderRequest, ActivityResult> {
        C0691k() {
        }

        /* renamed from: d */
        public Intent mo32732a(Context context, IntentSenderRequest intentSenderRequest) {
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent m35743a = intentSenderRequest.m35743a();
            IntentSenderRequest intentSenderRequest2 = intentSenderRequest;
            if (m35743a != null) {
                Bundle bundleExtra = m35743a.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentSenderRequest2 = intentSenderRequest;
                if (bundleExtra != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    m35743a.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    intentSenderRequest2 = intentSenderRequest;
                    if (m35743a.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        intentSenderRequest2 = new IntentSenderRequest.C0093b(intentSenderRequest.m35740d()).m35736b(null).m35735c(intentSenderRequest.m35741c(), intentSenderRequest.m35742b()).m35737a();
                    }
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest2);
            if (FragmentManager.m32848G0(2)) {
                Log.v("FragmentManager", "CreateIntent created the following intent: " + intent);
            }
            return intent;
        }

        /* renamed from: e */
        public ActivityResult mo32731c(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$l */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$l.class */
    public static abstract class AbstractC0692l {
    }

    /* renamed from: androidx.fragment.app.FragmentManager$m */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$m.class */
    public interface AbstractC0693m {
        /* renamed from: a */
        void m32728a();
    }

    /* renamed from: androidx.fragment.app.FragmentManager$n */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$n.class */
    public interface AbstractC0694n {
        /* renamed from: a */
        boolean mo32674a(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.fragment.app.FragmentManager$o */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$o.class */
    public class C0695o implements AbstractC0694n {

        /* renamed from: a */
        final String f3348a;

        /* renamed from: b */
        final int f3349b;

        /* renamed from: c */
        final int f3350c;

        C0695o(String str, int i, int i2) {
            FragmentManager.this = r4;
            this.f3348a = str;
            this.f3349b = i;
            this.f3350c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.AbstractC0694n
        /* renamed from: a */
        public boolean mo32674a(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2) {
            Fragment fragment = FragmentManager.this.f3324w;
            if (fragment == null || this.f3349b >= 0 || this.f3348a != null || !fragment.m32999A().m32816W0()) {
                return FragmentManager.this.m32812Y0(arrayList, arrayList2, this.f3348a, this.f3349b, this.f3350c);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$p */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$p.class */
    public static class C0696p implements Fragment.AbstractC0675g {

        /* renamed from: a */
        final boolean f3352a;

        /* renamed from: b */
        final C0706a f3353b;

        /* renamed from: c */
        private int f3354c;

        C0696p(C0706a c0706a, boolean z) {
            this.f3352a = z;
            this.f3353b = c0706a;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0675g
        /* renamed from: a */
        public void mo32727a() {
            this.f3354c++;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC0675g
        /* renamed from: b */
        public void mo32726b() {
            int i = this.f3354c - 1;
            this.f3354c = i;
            if (i != 0) {
                return;
            }
            this.f3353b.f3418t.m32780j1();
        }

        /* renamed from: c */
        void m32725c() {
            C0706a c0706a = this.f3353b;
            c0706a.f3418t.m32753t(c0706a, this.f3352a, false, false);
        }

        /* renamed from: d */
        void m32724d() {
            boolean z = this.f3354c > 0;
            for (Fragment fragment : this.f3353b.f3418t.m32752t0()) {
                fragment.m32955R1(null);
                if (z && fragment.m32906q0()) {
                    fragment.m32935Z1();
                }
            }
            C0706a c0706a = this.f3353b;
            c0706a.f3418t.m32753t(c0706a, this.f3352a, !z, true);
        }

        /* renamed from: e */
        public boolean m32723e() {
            return this.f3354c == 0;
        }
    }

    /* renamed from: A0 */
    public static Fragment m32860A0(View view) {
        Object tag = view.getTag(C1751b.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    /* renamed from: G0 */
    public static boolean m32848G0(int i) {
        return f3286a || Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: H0 */
    private boolean m32846H0(Fragment fragment) {
        return (fragment.f3197H && fragment.f3198I) || fragment.f3240y.m32770n();
    }

    /* renamed from: L */
    private void m32839L(Fragment fragment) {
        if (fragment == null || !fragment.equals(m32790g0(fragment.f3225j))) {
            return;
        }
        fragment.m32890w1();
    }

    /* renamed from: N0 */
    private void m32834N0(C1491b<Fragment> c1491b) {
        int size = c1491b.size();
        for (int i = 0; i < size; i++) {
            Fragment m29965m = c1491b.m29965m(i);
            if (!m29965m.f3231p) {
                View m32987E1 = m29965m.m32987E1();
                m29965m.f3208S = m32987E1.getAlpha();
                m32987E1.setAlpha(0.0f);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: S */
    private void m32825S(int i) {
        try {
            this.f3305d = true;
            this.f3306e.m32530d(i);
            m32830P0(i, false);
            if (f3287b) {
                for (SpecialEffectsController specialEffectsController : m32758r()) {
                    specialEffectsController.m32703j();
                }
            }
            this.f3305d = false;
            m32808a0(true);
        } catch (Throwable th) {
            this.f3305d = false;
            throw th;
        }
    }

    /* renamed from: V */
    private void m32819V() {
        if (this.f3297J) {
            this.f3297J = false;
            m32762p1();
        }
    }

    /* renamed from: X */
    private void m32815X() {
        if (f3287b) {
            for (SpecialEffectsController specialEffectsController : m32758r()) {
                specialEffectsController.m32703j();
            }
        } else if (!this.f3316o.isEmpty()) {
            for (Fragment fragment : this.f3316o.keySet()) {
                m32773m(fragment);
                m32828Q0(fragment);
            }
        }
    }

    /* renamed from: X0 */
    private boolean m32814X0(String str, int i, int i2) {
        m32808a0(false);
        m32811Z(true);
        Fragment fragment = this.f3324w;
        if (fragment == null || i >= 0 || str != null || !fragment.m32999A().m32816W0()) {
            boolean m32812Y0 = m32812Y0(this.f3298K, this.f3299L, str, i, i2);
            if (m32812Y0) {
                this.f3305d = true;
                try {
                    m32798d1(this.f3298K, this.f3299L);
                } finally {
                    m32764p();
                }
            }
            m32756r1();
            m32819V();
            this.f3306e.m32532b();
            return m32812Y0;
        }
        return true;
    }

    /* renamed from: Z */
    private void m32811Z(boolean z) {
        if (!this.f3305d) {
            if (this.f3321t == null) {
                if (!this.f3296I) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (Looper.myLooper() != this.f3321t.m32592i().getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            } else {
                if (!z) {
                    m32767o();
                }
                if (this.f3298K == null) {
                    this.f3298K = new ArrayList<>();
                    this.f3299L = new ArrayList<>();
                }
                this.f3305d = true;
                try {
                    m32793f0(null, null);
                    return;
                } finally {
                    this.f3305d = false;
                }
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: Z0 */
    private int m32810Z0(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C1491b<Fragment> c1491b) {
        int i3 = i2 - 1;
        int i4 = i2;
        while (true) {
            int i5 = i4;
            if (i3 >= i) {
                C0706a c0706a = arrayList.get(i3);
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                int i6 = i5;
                if (c0706a.m32678E() && !c0706a.m32680C(arrayList, i3 + 1, i2)) {
                    if (this.f3301N == null) {
                        this.f3301N = new ArrayList<>();
                    }
                    C0696p c0696p = new C0696p(c0706a, booleanValue);
                    this.f3301N.add(c0696p);
                    c0706a.m32676G(c0696p);
                    if (booleanValue) {
                        c0706a.m32669x();
                    } else {
                        c0706a.m32668y(false);
                    }
                    i6 = i5 - 1;
                    if (i3 != i6) {
                        arrayList.remove(i3);
                        arrayList.add(i6, c0706a);
                    }
                    m32800d(c1491b);
                }
                i3--;
                i4 = i6;
            } else {
                return i5;
            }
        }
    }

    /* renamed from: c0 */
    private static void m32802c0(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C0706a c0706a = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                c0706a.m32673t(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                c0706a.m32668y(z);
            } else {
                c0706a.m32673t(1);
                c0706a.m32669x();
            }
            i++;
        }
    }

    /* renamed from: d */
    private void m32800d(C1491b<Fragment> c1491b) {
        int i = this.f3320s;
        if (i < 1) {
            return;
        }
        int min = Math.min(i, 5);
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment.f3220e < min) {
                m32826R0(fragment, min);
                if (fragment.f3201L != null && !fragment.f3193D && fragment.f3206Q) {
                    c1491b.add(fragment);
                }
            }
        }
    }

    /* renamed from: d0 */
    private void m32799d0(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f3565r;
        ArrayList<Fragment> arrayList3 = this.f3300M;
        if (arrayList3 == null) {
            this.f3300M = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f3300M.addAll(this.f3306e.m32520n());
        Fragment m32742y0 = m32742y0();
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            C0706a c0706a = arrayList.get(i4);
            m32742y0 = !arrayList2.get(i4).booleanValue() ? c0706a.m32667z(this.f3300M, m32742y0) : c0706a.m32675H(this.f3300M, m32742y0);
            z2 = z2 || c0706a.f3556i;
        }
        this.f3300M.clear();
        if (!z && this.f3320s >= 1) {
            if (f3287b) {
                for (int i5 = i; i5 < i2; i5++) {
                    Iterator<AbstractC0754s.C0755a> it = arrayList.get(i5).f3550c.iterator();
                    while (it.hasNext()) {
                        Fragment fragment = it.next().f3568b;
                        if (fragment != null && fragment.f3238w != null) {
                            this.f3306e.m32518p(m32749v(fragment));
                        }
                    }
                }
            } else {
                C0756t.m32490B(this.f3321t.m32593h(), this.f3322u, arrayList, arrayList2, i, i2, false, this.f3317p);
            }
        }
        m32802c0(arrayList, arrayList2, i, i2);
        if (f3287b) {
            boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
            for (int i6 = i; i6 < i2; i6++) {
                C0706a c0706a2 = arrayList.get(i6);
                if (booleanValue) {
                    for (int size = c0706a2.f3550c.size() - 1; size >= 0; size--) {
                        Fragment fragment2 = c0706a2.f3550c.get(size).f3568b;
                        if (fragment2 != null) {
                            m32749v(fragment2).m32544m();
                        }
                    }
                } else {
                    Iterator<AbstractC0754s.C0755a> it2 = c0706a2.f3550c.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment3 = it2.next().f3568b;
                        if (fragment3 != null) {
                            m32749v(fragment3).m32544m();
                        }
                    }
                }
            }
            m32830P0(this.f3320s, true);
            for (SpecialEffectsController specialEffectsController : m32755s(arrayList, i, i2)) {
                specialEffectsController.m32695r(booleanValue);
                specialEffectsController.m32697p();
                specialEffectsController.m32706g();
            }
        } else {
            if (z) {
                C1491b<Fragment> c1491b = new C1491b<>();
                m32800d(c1491b);
                i3 = m32810Z0(arrayList, arrayList2, i, i2, c1491b);
                m32834N0(c1491b);
            } else {
                i3 = i2;
            }
            if (i3 == i || !z) {
                arrayList2 = arrayList2;
            } else {
                if (this.f3320s >= 1) {
                    C0756t.m32490B(this.f3321t.m32593h(), this.f3322u, arrayList, arrayList2, i, i3, true, this.f3317p);
                }
                arrayList2 = arrayList2;
                m32830P0(this.f3320s, true);
            }
        }
        while (i < i2) {
            C0706a c0706a3 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && c0706a3.f3420v >= 0) {
                c0706a3.f3420v = -1;
            }
            c0706a3.m32677F();
            i++;
        }
        if (z2) {
            m32795e1();
        }
    }

    /* renamed from: d1 */
    private void m32798d1(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m32793f0(arrayList, arrayList2);
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
            if (!arrayList.get(i2).f3565r) {
                if (i != i2) {
                    m32799d0(arrayList, arrayList2, i, i2);
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
                        if (arrayList.get(i6).f3565r) {
                            break;
                        }
                        i6++;
                    }
                }
                m32799d0(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m32799d0(arrayList, arrayList2, i, size);
    }

    /* renamed from: e1 */
    private void m32795e1() {
        if (this.f3315n != null) {
            for (int i = 0; i < this.f3315n.size(); i++) {
                this.f3315n.get(i).m32728a();
            }
        }
    }

    /* renamed from: f0 */
    private void m32793f0(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<C0696p> arrayList3 = this.f3301N;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = size;
            if (i3 < i4) {
                C0696p c0696p = this.f3301N.get(i3);
                if (arrayList == null || c0696p.f3352a || (indexOf2 = arrayList.indexOf(c0696p.f3353b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!c0696p.m32723e()) {
                        size = i4;
                        i = i3;
                        if (arrayList != null) {
                            size = i4;
                            i = i3;
                            if (!c0696p.f3353b.m32680C(arrayList, 0, arrayList.size())) {
                            }
                        }
                    }
                    this.f3301N.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    if (arrayList == null || c0696p.f3352a || (indexOf = arrayList.indexOf(c0696p.f3353b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        c0696p.m32724d();
                    } else {
                        c0696p.m32725c();
                    }
                } else {
                    this.f3301N.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    c0696p.m32725c();
                }
                i2 = i + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: g1 */
    public static int m32789g1(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* renamed from: k0 */
    private void m32778k0() {
        if (f3287b) {
            for (SpecialEffectsController specialEffectsController : m32758r()) {
                specialEffectsController.m32702k();
            }
        } else if (this.f3301N != null) {
            while (!this.f3301N.isEmpty()) {
                this.f3301N.remove(0).m32724d();
            }
        }
    }

    /* renamed from: l0 */
    private boolean m32775l0(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f3304c) {
            if (this.f3304c.isEmpty()) {
                return false;
            }
            int size = this.f3304c.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                z |= this.f3304c.get(i).mo32674a(arrayList, arrayList2);
            }
            this.f3304c.clear();
            this.f3321t.m32592i().removeCallbacks(this.f3303P);
            return z;
        }
    }

    /* renamed from: m */
    private void m32773m(Fragment fragment) {
        HashSet<C0623b> hashSet = this.f3316o.get(fragment);
        if (hashSet != null) {
            Iterator<C0623b> it = hashSet.iterator();
            while (it.hasNext()) {
                it.next().m33199a();
            }
            hashSet.clear();
            m32747w(fragment);
            this.f3316o.remove(fragment);
        }
    }

    /* renamed from: n0 */
    private C0744l m32769n0(Fragment fragment) {
        return this.f3302O.m32568h(fragment);
    }

    /* renamed from: n1 */
    private void m32768n1(Fragment fragment) {
        ViewGroup m32760q0 = m32760q0(fragment);
        if (m32760q0 == null || fragment.m32994C() + fragment.m32986F() + fragment.m32951T() + fragment.m32949U() <= 0) {
            return;
        }
        int i = C1751b.visible_removing_fragment_view_tag;
        if (m32760q0.getTag(i) == null) {
            m32760q0.setTag(i, fragment);
        }
        ((Fragment) m32760q0.getTag(i)).m32952S1(fragment.m32954S());
    }

    /* renamed from: o */
    private void m32767o() {
        if (!m32838L0()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: p */
    private void m32764p() {
        this.f3305d = false;
        this.f3299L.clear();
        this.f3298K.clear();
    }

    /* renamed from: p1 */
    private void m32762p1() {
        for (C0749p c0749p : this.f3306e.m32523k()) {
            m32820U0(c0749p);
        }
    }

    /* renamed from: q0 */
    private ViewGroup m32760q0(Fragment fragment) {
        ViewGroup viewGroup = fragment.f3200K;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.f3191B <= 0 || !this.f3322u.mo32595f()) {
            return null;
        }
        View mo32596e = this.f3322u.mo32596e(fragment.f3191B);
        if (!(mo32596e instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) mo32596e;
    }

    /* renamed from: q1 */
    private void m32759q1(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C0776x("FragmentManager"));
        AbstractC0738h<?> abstractC0738h = this.f3321t;
        if (abstractC0738h != null) {
            try {
                abstractC0738h.mo32591k("  ", null, printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                m32817W("  ", null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    /* renamed from: r */
    private Set<SpecialEffectsController> m32758r() {
        HashSet hashSet = new HashSet();
        for (C0749p c0749p : this.f3306e.m32523k()) {
            ViewGroup viewGroup = c0749p.m32546k().f3200K;
            if (viewGroup != null) {
                hashSet.add(SpecialEffectsController.m32698o(viewGroup, m32740z0()));
            }
        }
        return hashSet;
    }

    /* renamed from: r1 */
    private void m32756r1() {
        synchronized (this.f3304c) {
            boolean z = true;
            if (!this.f3304c.isEmpty()) {
                this.f3311j.m35752f(true);
                return;
            }
            AbstractC0087b abstractC0087b = this.f3311j;
            if (m32772m0() <= 0 || !m32842J0(this.f3323v)) {
                z = false;
            }
            abstractC0087b.m35752f(z);
        }
    }

    /* renamed from: s */
    private Set<SpecialEffectsController> m32755s(ArrayList<C0706a> arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator<AbstractC0754s.C0755a> it = arrayList.get(i).f3550c.iterator();
            while (it.hasNext()) {
                Fragment fragment = it.next().f3568b;
                if (fragment != null && (viewGroup = fragment.f3200K) != null) {
                    hashSet.add(SpecialEffectsController.m32699n(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    /* renamed from: u */
    private void m32751u(Fragment fragment) {
        Animator animator;
        if (fragment.f3201L != null) {
            C0728d.C0733d m32628c = C0728d.m32628c(this.f3321t.m32593h(), fragment, !fragment.f3193D, fragment.m32954S());
            if (m32628c == null || (animator = m32628c.f3497b) == null) {
                if (m32628c != null) {
                    fragment.f3201L.startAnimation(m32628c.f3496a);
                    m32628c.f3496a.start();
                }
                fragment.f3201L.setVisibility((!fragment.f3193D || fragment.m32912n0()) ? 0 : 8);
                if (fragment.m32912n0()) {
                    fragment.m32967N1(false);
                }
            } else {
                animator.setTarget(fragment.f3201L);
                if (!fragment.f3193D) {
                    fragment.f3201L.setVisibility(0);
                } else if (fragment.m32912n0()) {
                    fragment.m32967N1(false);
                } else {
                    ViewGroup viewGroup = fragment.f3200K;
                    View view = fragment.f3201L;
                    viewGroup.startViewTransition(view);
                    m32628c.f3497b.addListener(new C0688h(viewGroup, view, fragment));
                }
                m32628c.f3497b.start();
            }
        }
        m32852E0(fragment);
        fragment.f3207R = false;
        fragment.m32968N0(fragment.f3193D);
    }

    /* renamed from: w */
    private void m32747w(Fragment fragment) {
        fragment.m32913m1();
        this.f3318q.m32572n(fragment, false);
        fragment.f3200K = null;
        fragment.f3201L = null;
        fragment.f3213X = null;
        fragment.f3214Y.mo28960n(null);
        fragment.f3234s = false;
    }

    /* renamed from: A */
    public void m32861A(Configuration configuration) {
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null) {
                fragment.m32925g1(configuration);
            }
        }
    }

    /* renamed from: B */
    public boolean m32859B(MenuItem menuItem) {
        if (this.f3320s < 1) {
            return false;
        }
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null && fragment.m32923h1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: B0 */
    public C0818t m32858B0(Fragment fragment) {
        return this.f3302O.m32565k(fragment);
    }

    /* renamed from: C */
    public void m32857C() {
        this.f3294G = false;
        this.f3295H = false;
        this.f3302O.m32562n(false);
        m32825S(1);
    }

    /* renamed from: C0 */
    void m32856C0() {
        m32808a0(true);
        if (this.f3311j.m35755c()) {
            m32816W0();
        } else {
            this.f3310i.m35757c();
        }
    }

    /* renamed from: D */
    public boolean m32855D(Menu menu, MenuInflater menuInflater) {
        if (this.f3320s < 1) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null && m32844I0(fragment) && fragment.m32918j1(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.f3308g != null) {
            for (int i = 0; i < this.f3308g.size(); i++) {
                Fragment fragment2 = this.f3308g.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.m32978I0();
                }
            }
        }
        this.f3308g = arrayList;
        return z;
    }

    /* renamed from: D0 */
    public void m32854D0(Fragment fragment) {
        if (m32848G0(2)) {
            Log.v("FragmentManager", "hide: " + fragment);
        }
        if (!fragment.f3193D) {
            fragment.f3193D = true;
            fragment.f3207R = true ^ fragment.f3207R;
            m32768n1(fragment);
        }
    }

    /* renamed from: E */
    public void m32853E() {
        this.f3296I = true;
        m32808a0(true);
        m32815X();
        m32825S(-1);
        this.f3321t = null;
        this.f3322u = null;
        this.f3323v = null;
        if (this.f3310i != null) {
            this.f3311j.m35754d();
            this.f3310i = null;
        }
        AbstractC0095b<Intent> abstractC0095b = this.f3289B;
        if (abstractC0095b != null) {
            abstractC0095b.mo35721c();
            this.f3290C.mo35721c();
            this.f3291D.mo35721c();
        }
    }

    /* renamed from: E0 */
    public void m32852E0(Fragment fragment) {
        if (!fragment.f3231p || !m32846H0(fragment)) {
            return;
        }
        this.f3293F = true;
    }

    /* renamed from: F */
    public void m32851F() {
        m32825S(1);
    }

    /* renamed from: F0 */
    public boolean m32850F0() {
        return this.f3296I;
    }

    /* renamed from: G */
    public void m32849G() {
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null) {
                fragment.m32907p1();
            }
        }
    }

    /* renamed from: H */
    public void m32847H(boolean z) {
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null) {
                fragment.m32905q1(z);
            }
        }
    }

    /* renamed from: I */
    public void m32845I(Fragment fragment) {
        Iterator<AbstractC0746m> it = this.f3319r.iterator();
        while (it.hasNext()) {
            it.next().mo32560b(this, fragment);
        }
    }

    /* renamed from: I0 */
    public boolean m32844I0(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.m32908p0();
    }

    /* renamed from: J */
    public boolean m32843J(MenuItem menuItem) {
        if (this.f3320s < 1) {
            return false;
        }
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null && fragment.m32903r1(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: J0 */
    public boolean m32842J0(Fragment fragment) {
        boolean z = true;
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.f3238w;
        if (!fragment.equals(fragmentManager.m32742y0()) || !m32842J0(fragmentManager.f3323v)) {
            z = false;
        }
        return z;
    }

    /* renamed from: K */
    public void m32841K(Menu menu) {
        if (this.f3320s < 1) {
            return;
        }
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null) {
                fragment.m32900s1(menu);
            }
        }
    }

    /* renamed from: K0 */
    public boolean m32840K0(int i) {
        return this.f3320s >= i;
    }

    /* renamed from: L0 */
    public boolean m32838L0() {
        return this.f3294G || this.f3295H;
    }

    /* renamed from: M */
    public void m32837M() {
        m32825S(5);
    }

    /* renamed from: M0 */
    public void m32836M0(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (this.f3289B == null) {
            this.f3321t.m32587o(fragment, intent, i, bundle);
            return;
        }
        this.f3292E.addLast(new LaunchedFragmentInfo(fragment.f3225j, i));
        if (intent != null && bundle != null) {
            intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        this.f3289B.m35734a(intent);
    }

    /* renamed from: N */
    public void m32835N(boolean z) {
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null) {
                fragment.m32894u1(z);
            }
        }
    }

    /* renamed from: O */
    public boolean m32833O(Menu menu) {
        boolean z = false;
        if (this.f3320s < 1) {
            return false;
        }
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null && m32844I0(fragment) && fragment.m32892v1(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: O0 */
    public void m32832O0(Fragment fragment) {
        if (!this.f3306e.m32531c(fragment.f3225j)) {
            if (!m32848G0(3)) {
                return;
            }
            Log.d("FragmentManager", "Ignoring moving " + fragment + " to state " + this.f3320s + "since it is not added to " + this);
            return;
        }
        m32828Q0(fragment);
        View view = fragment.f3201L;
        if (view != null && fragment.f3206Q && fragment.f3200K != null) {
            float f = fragment.f3208S;
            if (f > 0.0f) {
                view.setAlpha(f);
            }
            fragment.f3208S = 0.0f;
            fragment.f3206Q = false;
            C0728d.C0733d m32628c = C0728d.m32628c(this.f3321t.m32593h(), fragment, true, fragment.m32954S());
            if (m32628c != null) {
                Animation animation = m32628c.f3496a;
                if (animation != null) {
                    fragment.f3201L.startAnimation(animation);
                } else {
                    m32628c.f3497b.setTarget(fragment.f3201L);
                    m32628c.f3497b.start();
                }
            }
        }
        if (!fragment.f3207R) {
            return;
        }
        m32751u(fragment);
    }

    /* renamed from: P */
    public void m32831P() {
        m32756r1();
        m32839L(this.f3324w);
    }

    /* renamed from: P0 */
    public void m32830P0(int i, boolean z) {
        AbstractC0738h<?> abstractC0738h;
        if (this.f3321t != null || i == -1) {
            if (!z && i == this.f3320s) {
                return;
            }
            this.f3320s = i;
            if (f3287b) {
                this.f3306e.m32516r();
            } else {
                for (Fragment fragment : this.f3306e.m32520n()) {
                    m32832O0(fragment);
                }
                for (C0749p c0749p : this.f3306e.m32523k()) {
                    Fragment m32546k = c0749p.m32546k();
                    if (!m32546k.f3206Q) {
                        m32832O0(m32546k);
                    }
                    if (m32546k.f3232q && !m32546k.m32910o0()) {
                        this.f3306e.m32517q(c0749p);
                    }
                }
            }
            m32762p1();
            if (!this.f3293F || (abstractC0738h = this.f3321t) == null || this.f3320s != 7) {
                return;
            }
            abstractC0738h.mo32586q();
            this.f3293F = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* renamed from: Q */
    public void m32829Q() {
        this.f3294G = false;
        this.f3295H = false;
        this.f3302O.m32562n(false);
        m32825S(7);
    }

    /* renamed from: Q0 */
    public void m32828Q0(Fragment fragment) {
        m32826R0(fragment, this.f3320s);
    }

    /* renamed from: R */
    public void m32827R() {
        this.f3294G = false;
        this.f3295H = false;
        this.f3302O.m32562n(false);
        m32825S(5);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f4  */
    /* renamed from: R0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void m32826R0(androidx.fragment.app.Fragment r7, int r8) {
        /*
            Method dump skipped, instructions count: 782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.m32826R0(androidx.fragment.app.Fragment, int):void");
    }

    /* renamed from: S0 */
    public void m32824S0() {
        if (this.f3321t == null) {
            return;
        }
        this.f3294G = false;
        this.f3295H = false;
        this.f3302O.m32562n(false);
        for (Fragment fragment : this.f3306e.m32520n()) {
            if (fragment != null) {
                fragment.m32895u0();
            }
        }
    }

    /* renamed from: T */
    public void m32823T() {
        this.f3295H = true;
        this.f3302O.m32562n(true);
        m32825S(4);
    }

    /* renamed from: T0 */
    public void m32822T0(FragmentContainerView fragmentContainerView) {
        View view;
        for (C0749p c0749p : this.f3306e.m32523k()) {
            Fragment m32546k = c0749p.m32546k();
            if (m32546k.f3191B == fragmentContainerView.getId() && (view = m32546k.f3201L) != null && view.getParent() == null) {
                m32546k.f3200K = fragmentContainerView;
                c0749p.m32555b();
            }
        }
    }

    /* renamed from: U */
    public void m32821U() {
        m32825S(2);
    }

    /* renamed from: U0 */
    public void m32820U0(C0749p c0749p) {
        Fragment m32546k = c0749p.m32546k();
        if (m32546k.f3202M) {
            if (this.f3305d) {
                this.f3297J = true;
                return;
            }
            m32546k.f3202M = false;
            if (f3287b) {
                c0749p.m32544m();
            } else {
                m32828Q0(m32546k);
            }
        }
    }

    /* renamed from: V0 */
    public void m32818V0(int i, int i2) {
        if (i >= 0) {
            m32813Y(new C0695o(null, i, i2), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: " + i);
    }

    /* renamed from: W */
    public void m32817W(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f3306e.m32529e(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f3308g;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f3308g.get(i).toString());
            }
        }
        ArrayList<C0706a> arrayList2 = this.f3307f;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                C0706a c0706a = this.f3307f.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(c0706a.toString());
                c0706a.m32671v(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f3312k.get());
        synchronized (this.f3304c) {
            int size3 = this.f3304c.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i3 = 0; i3 < size3; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.f3304c.get(i3));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f3321t);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f3322u);
        if (this.f3323v != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f3323v);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f3320s);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f3294G);
        printWriter.print(" mStopped=");
        printWriter.print(this.f3295H);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f3296I);
        if (this.f3293F) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f3293F);
        }
    }

    /* renamed from: W0 */
    public boolean m32816W0() {
        return m32814X0(null, -1, 0);
    }

    /* renamed from: Y */
    public void m32813Y(AbstractC0694n abstractC0694n, boolean z) {
        if (!z) {
            if (this.f3321t == null) {
                if (!this.f3296I) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            m32767o();
        }
        synchronized (this.f3304c) {
            if (this.f3321t == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f3304c.add(abstractC0694n);
            m32780j1();
        }
    }

    /* renamed from: Y0 */
    boolean m32812Y0(ArrayList<C0706a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<C0706a> arrayList3 = this.f3307f;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f3307f.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                C0706a c0706a = this.f3307f.get(size2);
                if ((str != null && str.equals(c0706a.m32682A())) || (i >= 0 && i == c0706a.f3420v)) {
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
                    C0706a c0706a2 = this.f3307f.get(i5);
                    if (str != null) {
                        size2 = i5;
                        if (str.equals(c0706a2.m32682A())) {
                            continue;
                        }
                    }
                    i4 = i5;
                    if (i < 0) {
                        break;
                    }
                    i4 = i5;
                    if (i != c0706a2.f3420v) {
                        break;
                    }
                    size2 = i5;
                }
            }
            i3 = i4;
        } else {
            i3 = -1;
        }
        if (i3 == this.f3307f.size() - 1) {
            return false;
        }
        for (int size3 = this.f3307f.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f3307f.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a0 */
    public boolean m32808a0(boolean z) {
        m32811Z(z);
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (!m32775l0(this.f3298K, this.f3299L)) {
                m32756r1();
                m32819V();
                this.f3306e.m32532b();
                return z3;
            }
            this.f3305d = true;
            try {
                m32798d1(this.f3298K, this.f3299L);
                m32764p();
                z2 = true;
            } catch (Throwable th) {
                m32764p();
                throw th;
            }
        }
    }

    /* renamed from: a1 */
    public void m32807a1(Bundle bundle, String str, Fragment fragment) {
        if (fragment.f3238w != this) {
            m32759q1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.f3225j);
    }

    /* renamed from: b0 */
    public void m32805b0(AbstractC0694n abstractC0694n, boolean z) {
        if (!z || (this.f3321t != null && !this.f3296I)) {
            m32811Z(z);
            if (abstractC0694n.mo32674a(this.f3298K, this.f3299L)) {
                this.f3305d = true;
                try {
                    m32798d1(this.f3298K, this.f3299L);
                } finally {
                    m32764p();
                }
            }
            m32756r1();
            m32819V();
            this.f3306e.m32532b();
        }
    }

    /* renamed from: b1 */
    void m32804b1(Fragment fragment, C0623b c0623b) {
        HashSet<C0623b> hashSet = this.f3316o.get(fragment);
        if (hashSet == null || !hashSet.remove(c0623b) || !hashSet.isEmpty()) {
            return;
        }
        this.f3316o.remove(fragment);
        if (fragment.f3220e >= 5) {
            return;
        }
        m32747w(fragment);
        m32828Q0(fragment);
    }

    /* renamed from: c1 */
    public void m32801c1(Fragment fragment) {
        if (m32848G0(2)) {
            Log.v("FragmentManager", "remove: " + fragment + " nesting=" + fragment.f3237v);
        }
        boolean m32910o0 = fragment.m32910o0();
        if (!fragment.f3194E || (!m32910o0)) {
            this.f3306e.m32515s(fragment);
            if (m32846H0(fragment)) {
                this.f3293F = true;
            }
            fragment.f3232q = true;
            m32768n1(fragment);
        }
    }

    /* renamed from: e */
    public void m32797e(C0706a c0706a) {
        if (this.f3307f == null) {
            this.f3307f = new ArrayList<>();
        }
        this.f3307f.add(c0706a);
    }

    /* renamed from: e0 */
    public boolean m32796e0() {
        boolean m32808a0 = m32808a0(true);
        m32778k0();
        return m32808a0;
    }

    /* renamed from: f */
    void m32794f(Fragment fragment, C0623b c0623b) {
        if (this.f3316o.get(fragment) == null) {
            this.f3316o.put(fragment, new HashSet<>());
        }
        this.f3316o.get(fragment).add(c0623b);
    }

    /* renamed from: f1 */
    public void m32792f1(Parcelable parcelable) {
        C0749p c0749p;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.f3355d == null) {
            return;
        }
        this.f3306e.m32514t();
        Iterator<FragmentState> it = fragmentManagerState.f3355d.iterator();
        while (it.hasNext()) {
            FragmentState next = it.next();
            if (next != null) {
                Fragment m32569g = this.f3302O.m32569g(next.f3364e);
                if (m32569g != null) {
                    if (m32848G0(2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + m32569g);
                    }
                    c0749p = new C0749p(this.f3318q, this.f3306e, m32569g, next);
                } else {
                    c0749p = new C0749p(this.f3318q, this.f3306e, this.f3321t.m32593h().getClassLoader(), m32757r0(), next);
                }
                Fragment m32546k = c0749p.m32546k();
                m32546k.f3238w = this;
                if (m32848G0(2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + m32546k.f3225j + "): " + m32546k);
                }
                c0749p.m32542o(this.f3321t.m32593h().getClassLoader());
                this.f3306e.m32518p(c0749p);
                c0749p.m32536u(this.f3320s);
            }
        }
        for (Fragment fragment : this.f3302O.m32566j()) {
            if (!this.f3306e.m32531c(fragment.f3225j)) {
                if (m32848G0(2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + fragment + " that was not found in the set of active Fragments " + fragmentManagerState.f3355d);
                }
                this.f3302O.m32563m(fragment);
                fragment.f3238w = this;
                C0749p c0749p2 = new C0749p(this.f3318q, this.f3306e, fragment);
                c0749p2.m32536u(1);
                c0749p2.m32544m();
                fragment.f3232q = true;
                c0749p2.m32544m();
            }
        }
        this.f3306e.m32513u(fragmentManagerState.f3356e);
        if (fragmentManagerState.f3357f != null) {
            this.f3307f = new ArrayList<>(fragmentManagerState.f3357f.length);
            int i = 0;
            while (true) {
                BackStackState[] backStackStateArr = fragmentManagerState.f3357f;
                if (i >= backStackStateArr.length) {
                    break;
                }
                C0706a m33002a = backStackStateArr[i].m33002a(this);
                if (m32848G0(2)) {
                    Log.v("FragmentManager", "restoreAllState: back stack #" + i + " (index " + m33002a.f3420v + "): " + m33002a);
                    PrintWriter printWriter = new PrintWriter(new C0776x("FragmentManager"));
                    m33002a.m32670w("  ", printWriter, false);
                    printWriter.close();
                }
                this.f3307f.add(m33002a);
                i++;
            }
        } else {
            this.f3307f = null;
        }
        this.f3312k.set(fragmentManagerState.f3358g);
        String str = fragmentManagerState.f3359h;
        if (str != null) {
            Fragment m32790g0 = m32790g0(str);
            this.f3324w = m32790g0;
            m32839L(m32790g0);
        }
        ArrayList<String> arrayList = fragmentManagerState.f3360i;
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                Bundle bundle = fragmentManagerState.f3361j.get(i2);
                bundle.setClassLoader(this.f3321t.m32593h().getClassLoader());
                this.f3313l.put(arrayList.get(i2), bundle);
            }
        }
        this.f3292E = new ArrayDeque<>(fragmentManagerState.f3362k);
    }

    /* renamed from: g */
    public C0749p m32791g(Fragment fragment) {
        if (m32848G0(2)) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        C0749p m32749v = m32749v(fragment);
        fragment.f3238w = this;
        this.f3306e.m32518p(m32749v);
        if (!fragment.f3194E) {
            this.f3306e.m32533a(fragment);
            fragment.f3232q = false;
            if (fragment.f3201L == null) {
                fragment.f3207R = false;
            }
            if (m32846H0(fragment)) {
                this.f3293F = true;
            }
        }
        return m32749v;
    }

    /* renamed from: g0 */
    public Fragment m32790g0(String str) {
        return this.f3306e.m32528f(str);
    }

    /* renamed from: h */
    public void m32788h(AbstractC0746m abstractC0746m) {
        this.f3319r.add(abstractC0746m);
    }

    /* renamed from: h0 */
    public Fragment m32787h0(int i) {
        return this.f3306e.m32527g(i);
    }

    /* renamed from: h1 */
    public Parcelable m32786h1() {
        m32778k0();
        m32815X();
        m32808a0(true);
        this.f3294G = true;
        this.f3302O.m32562n(true);
        ArrayList<FragmentState> m32512v = this.f3306e.m32512v();
        if (m32512v.isEmpty()) {
            if (!m32848G0(2)) {
                return null;
            }
            Log.v("FragmentManager", "saveAllState: no fragments!");
            return null;
        }
        ArrayList<String> m32511w = this.f3306e.m32511w();
        ArrayList<C0706a> arrayList = this.f3307f;
        BackStackState[] backStackStateArr = null;
        if (arrayList != null) {
            int size = arrayList.size();
            backStackStateArr = null;
            if (size > 0) {
                BackStackState[] backStackStateArr2 = new BackStackState[size];
                int i = 0;
                while (true) {
                    backStackStateArr = backStackStateArr2;
                    if (i >= size) {
                        break;
                    }
                    backStackStateArr2[i] = new BackStackState(this.f3307f.get(i));
                    if (m32848G0(2)) {
                        Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.f3307f.get(i));
                    }
                    i++;
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f3355d = m32512v;
        fragmentManagerState.f3356e = m32511w;
        fragmentManagerState.f3357f = backStackStateArr;
        fragmentManagerState.f3358g = this.f3312k.get();
        Fragment fragment = this.f3324w;
        if (fragment != null) {
            fragmentManagerState.f3359h = fragment.f3225j;
        }
        fragmentManagerState.f3360i.addAll(this.f3313l.keySet());
        fragmentManagerState.f3361j.addAll(this.f3313l.values());
        fragmentManagerState.f3362k = new ArrayList<>(this.f3292E);
        return fragmentManagerState;
    }

    /* renamed from: i */
    public int m32785i() {
        return this.f3312k.getAndIncrement();
    }

    /* renamed from: i0 */
    public Fragment m32784i0(String str) {
        return this.f3306e.m32526h(str);
    }

    /* renamed from: i1 */
    public Fragment.SavedState m32783i1(Fragment fragment) {
        C0749p m32521m = this.f3306e.m32521m(fragment.f3225j);
        if (m32521m == null || !m32521m.m32546k().equals(fragment)) {
            m32759q1(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        return m32521m.m32539r();
    }

    @SuppressLint({"SyntheticAccessor"})
    /* renamed from: j */
    public void m32782j(AbstractC0738h<?> abstractC0738h, AbstractC0735e abstractC0735e, Fragment fragment) {
        String str;
        if (this.f3321t == null) {
            this.f3321t = abstractC0738h;
            this.f3322u = abstractC0735e;
            this.f3323v = fragment;
            if (fragment != null) {
                m32788h(new C0689i(fragment));
            } else if (abstractC0738h instanceof AbstractC0746m) {
                m32788h((AbstractC0746m) abstractC0738h);
            }
            if (this.f3323v != null) {
                m32756r1();
            }
            if (abstractC0738h instanceof AbstractC0088c) {
                AbstractC0088c abstractC0088c = (AbstractC0088c) abstractC0738h;
                OnBackPressedDispatcher mo32865c = abstractC0088c.mo32865c();
                this.f3310i = mo32865c;
                AbstractC0088c abstractC0088c2 = abstractC0088c;
                if (fragment != null) {
                    abstractC0088c2 = fragment;
                }
                mo32865c.m35759a(abstractC0088c2, this.f3311j);
            }
            if (fragment != null) {
                this.f3302O = fragment.f3238w.m32769n0(fragment);
            } else if (abstractC0738h instanceof AbstractC0819u) {
                this.f3302O = C0744l.m32567i(((AbstractC0819u) abstractC0738h).mo32344p());
            } else {
                this.f3302O = new C0744l(false);
            }
            this.f3302O.m32562n(m32838L0());
            this.f3306e.m32510x(this.f3302O);
            AbstractC0738h<?> abstractC0738h2 = this.f3321t;
            if (!(abstractC0738h2 instanceof AbstractC0100d)) {
                return;
            }
            AbstractC0096c mo32864j = ((AbstractC0100d) abstractC0738h2).mo32864j();
            if (fragment != null) {
                str = fragment.f3225j + ":";
            } else {
                str = "";
            }
            String str2 = "FragmentManager:" + str;
            this.f3289B = mo32864j.m35725i(str2 + "StartActivityForResult", new C0104c(), new C0690j());
            this.f3290C = mo32864j.m35725i(str2 + "StartIntentSenderForResult", new C0691k(), new C0681a());
            this.f3291D = mo32864j.m35725i(str2 + "RequestPermissions", new C0103b(), new C0682b());
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: j0 */
    public Fragment m32781j0(String str) {
        return this.f3306e.m32525i(str);
    }

    /* renamed from: j1 */
    void m32780j1() {
        synchronized (this.f3304c) {
            ArrayList<C0696p> arrayList = this.f3301N;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.f3304c.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.f3321t.m32592i().removeCallbacks(this.f3303P);
                this.f3321t.m32592i().post(this.f3303P);
                m32756r1();
            }
        }
    }

    /* renamed from: k */
    public void m32779k(Fragment fragment) {
        if (m32848G0(2)) {
            Log.v("FragmentManager", "attach: " + fragment);
        }
        if (fragment.f3194E) {
            fragment.f3194E = false;
            if (fragment.f3231p) {
                return;
            }
            this.f3306e.m32533a(fragment);
            if (m32848G0(2)) {
                Log.v("FragmentManager", "add from attach: " + fragment);
            }
            if (!m32846H0(fragment)) {
                return;
            }
            this.f3293F = true;
        }
    }

    /* renamed from: k1 */
    public void m32777k1(Fragment fragment, boolean z) {
        ViewGroup m32760q0 = m32760q0(fragment);
        if (m32760q0 == null || !(m32760q0 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m32760q0).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: l */
    public AbstractC0754s m32776l() {
        return new C0706a(this);
    }

    /* renamed from: l1 */
    public void m32774l1(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(m32790g0(fragment.f3225j)) && (fragment.f3239x == null || fragment.f3238w == this)) {
            fragment.f3211V = state;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: m0 */
    public int m32772m0() {
        ArrayList<C0706a> arrayList = this.f3307f;
        return arrayList != null ? arrayList.size() : 0;
    }

    /* renamed from: m1 */
    public void m32771m1(Fragment fragment) {
        if (fragment == null || (fragment.equals(m32790g0(fragment.f3225j)) && (fragment.f3239x == null || fragment.f3238w == this))) {
            Fragment fragment2 = this.f3324w;
            this.f3324w = fragment;
            m32839L(fragment2);
            m32839L(this.f3324w);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: n */
    boolean m32770n() {
        boolean z = false;
        for (Fragment fragment : this.f3306e.m32522l()) {
            boolean z2 = z;
            if (fragment != null) {
                z2 = m32846H0(fragment);
            }
            z = z2;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: o0 */
    public AbstractC0735e m32766o0() {
        return this.f3322u;
    }

    /* renamed from: o1 */
    public void m32765o1(Fragment fragment) {
        if (m32848G0(2)) {
            Log.v("FragmentManager", "show: " + fragment);
        }
        if (fragment.f3193D) {
            fragment.f3193D = false;
            fragment.f3207R = !fragment.f3207R;
        }
    }

    /* renamed from: p0 */
    public Fragment m32763p0(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment m32790g0 = m32790g0(string);
        if (m32790g0 == null) {
            m32759q1(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return m32790g0;
    }

    /* renamed from: q */
    public final void m32761q(String str) {
        this.f3313l.remove(str);
    }

    /* renamed from: r0 */
    public C0737g m32757r0() {
        C0737g c0737g = this.f3325x;
        if (c0737g != null) {
            return c0737g;
        }
        Fragment fragment = this.f3323v;
        return fragment != null ? fragment.f3238w.m32757r0() : this.f3326y;
    }

    /* renamed from: s0 */
    public C0753r m32754s0() {
        return this.f3306e;
    }

    /* renamed from: t */
    void m32753t(C0706a c0706a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c0706a.m32668y(z3);
        } else {
            c0706a.m32669x();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c0706a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.f3320s >= 1) {
            C0756t.m32490B(this.f3321t.m32593h(), this.f3322u, arrayList, arrayList2, 0, 1, true, this.f3317p);
        }
        if (z3) {
            m32830P0(this.f3320s, true);
        }
        for (Fragment fragment : this.f3306e.m32522l()) {
            if (fragment != null && fragment.f3201L != null && fragment.f3206Q && c0706a.m32681B(fragment.f3191B)) {
                float f = fragment.f3208S;
                if (f > 0.0f) {
                    fragment.f3201L.setAlpha(f);
                }
                if (z3) {
                    fragment.f3208S = 0.0f;
                } else {
                    fragment.f3208S = -1.0f;
                    fragment.f3206Q = false;
                }
            }
        }
    }

    /* renamed from: t0 */
    public List<Fragment> m32752t0() {
        return this.f3306e.m32520n();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f3323v;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f3323v)));
            sb.append("}");
        } else {
            AbstractC0738h<?> abstractC0738h = this.f3321t;
            if (abstractC0738h != null) {
                sb.append(abstractC0738h.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f3321t)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: u0 */
    public AbstractC0738h<?> m32750u0() {
        return this.f3321t;
    }

    /* renamed from: v */
    public C0749p m32749v(Fragment fragment) {
        C0749p m32521m = this.f3306e.m32521m(fragment.f3225j);
        if (m32521m != null) {
            return m32521m;
        }
        C0749p c0749p = new C0749p(this.f3318q, this.f3306e, fragment);
        c0749p.m32542o(this.f3321t.m32593h().getClassLoader());
        c0749p.m32536u(this.f3320s);
        return c0749p;
    }

    /* renamed from: v0 */
    public LayoutInflater.Factory2 m32748v0() {
        return this.f3309h;
    }

    /* renamed from: w0 */
    public C0741j m32746w0() {
        return this.f3318q;
    }

    /* renamed from: x */
    public void m32745x(Fragment fragment) {
        if (m32848G0(2)) {
            Log.v("FragmentManager", "detach: " + fragment);
        }
        if (!fragment.f3194E) {
            fragment.f3194E = true;
            if (!fragment.f3231p) {
                return;
            }
            if (m32848G0(2)) {
                Log.v("FragmentManager", "remove from detach: " + fragment);
            }
            this.f3306e.m32515s(fragment);
            if (m32846H0(fragment)) {
                this.f3293F = true;
            }
            m32768n1(fragment);
        }
    }

    /* renamed from: x0 */
    public Fragment m32744x0() {
        return this.f3323v;
    }

    /* renamed from: y */
    public void m32743y() {
        this.f3294G = false;
        this.f3295H = false;
        this.f3302O.m32562n(false);
        m32825S(4);
    }

    /* renamed from: y0 */
    public Fragment m32742y0() {
        return this.f3324w;
    }

    /* renamed from: z */
    public void m32741z() {
        this.f3294G = false;
        this.f3295H = false;
        this.f3302O.m32562n(false);
        m32825S(0);
    }

    /* renamed from: z0 */
    public AbstractC0777y m32740z0() {
        AbstractC0777y abstractC0777y = this.f3327z;
        if (abstractC0777y != null) {
            return abstractC0777y;
        }
        Fragment fragment = this.f3323v;
        return fragment != null ? fragment.f3238w.m32740z0() : this.f3288A;
    }
}
