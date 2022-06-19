package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
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
import androidx.activity.AbstractC0124b;
import androidx.activity.AbstractC0125c;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.AbstractC0129a;
import androidx.activity.result.AbstractC0135b;
import androidx.activity.result.AbstractC0136c;
import androidx.activity.result.AbstractC0141d;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.p016a.AbstractC0130a;
import androidx.activity.result.p016a.C0132b;
import androidx.core.p037os.C0856a;
import androidx.fragment.C1028a;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.C1095d;
import androidx.fragment.app.C1108j;
import androidx.fragment.app.C1123t;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC1239ad;
import androidx.lifecycle.AbstractC1253j;
import androidx.lifecycle.AbstractC1261n;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.C1267t;
import androidx.p023b.C0430b;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager.class */
public abstract class FragmentManager {

    /* renamed from: a */
    static boolean f4192a = true;

    /* renamed from: x */
    private static boolean f4193x = false;

    /* renamed from: A */
    private ArrayList<Fragment> f4194A;

    /* renamed from: C */
    private ArrayList<Object> f4196C;

    /* renamed from: J */
    private boolean f4203J;

    /* renamed from: K */
    private boolean f4204K;

    /* renamed from: L */
    private ArrayList<C1071a> f4205L;

    /* renamed from: M */
    private ArrayList<Boolean> f4206M;

    /* renamed from: N */
    private ArrayList<Fragment> f4207N;

    /* renamed from: O */
    private ArrayList<C1066f> f4208O;

    /* renamed from: c */
    public ArrayList<C1071a> f4211c;

    /* renamed from: e */
    OnBackPressedDispatcher f4213e;

    /* renamed from: l */
    AbstractC1105h<?> f4220l;

    /* renamed from: m */
    AbstractC1102e f4221m;

    /* renamed from: n */
    Fragment f4222n;

    /* renamed from: o */
    Fragment f4223o;

    /* renamed from: p */
    AbstractC0135b<Intent> f4224p;

    /* renamed from: q */
    AbstractC0135b<IntentSenderRequest> f4225q;

    /* renamed from: r */
    AbstractC0135b<String[]> f4226r;

    /* renamed from: t */
    boolean f4228t;

    /* renamed from: u */
    boolean f4229u;

    /* renamed from: v */
    public boolean f4230v;

    /* renamed from: w */
    C1111l f4231w;

    /* renamed from: z */
    private boolean f4233z;

    /* renamed from: y */
    private final ArrayList<AbstractC1064d> f4232y = new ArrayList<>();

    /* renamed from: b */
    public final C1120r f4210b = new C1120r();

    /* renamed from: d */
    final LayoutInflater$Factory2C1106i f4212d = new LayoutInflater$Factory2C1106i(this);

    /* renamed from: f */
    final AbstractC0124b f4214f = new AbstractC0124b(false) { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.AbstractC0124b
        /* renamed from: b */
        public final void mo43668b() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.m43733a(true);
            if (fragmentManager.f4214f.f244a) {
                fragmentManager.m43714d();
            } else {
                fragmentManager.f4213e.m46395a();
            }
        }
    };

    /* renamed from: g */
    final AtomicInteger f4215g = new AtomicInteger();

    /* renamed from: h */
    final Map<String, Bundle> f4216h = Collections.synchronizedMap(new HashMap());

    /* renamed from: B */
    private final Map<String, Object> f4195B = Collections.synchronizedMap(new HashMap());

    /* renamed from: i */
    Map<Fragment, HashSet<C0856a>> f4217i = Collections.synchronizedMap(new HashMap());

    /* renamed from: D */
    private final C1123t.AbstractC1130a f4197D = new C1123t.AbstractC1130a() { // from class: androidx.fragment.app.FragmentManager.4
        @Override // androidx.fragment.app.C1123t.AbstractC1130a
        /* renamed from: a */
        public final void mo43502a(Fragment fragment, C0856a c0856a) {
            FragmentManager fragmentManager = FragmentManager.this;
            if (fragmentManager.f4217i.get(fragment) == null) {
                fragmentManager.f4217i.put(fragment, new HashSet<>());
            }
            fragmentManager.f4217i.get(fragment).add(c0856a);
        }

        @Override // androidx.fragment.app.C1123t.AbstractC1130a
        /* renamed from: b */
        public final void mo43501b(Fragment fragment, C0856a c0856a) {
            if (!c0856a.m44303a()) {
                FragmentManager fragmentManager = FragmentManager.this;
                HashSet<C0856a> hashSet = fragmentManager.f4217i.get(fragment);
                if (hashSet == null || !hashSet.remove(c0856a) || !hashSet.isEmpty()) {
                    return;
                }
                fragmentManager.f4217i.remove(fragment);
                if (fragment.mState >= 5) {
                    return;
                }
                fragmentManager.m43712d(fragment);
                fragmentManager.m43708e(fragment);
            }
        }
    };

    /* renamed from: j */
    public final C1108j f4218j = new C1108j(this);

    /* renamed from: E */
    private final CopyOnWriteArrayList<AbstractC1113m> f4198E = new CopyOnWriteArrayList<>();

    /* renamed from: k */
    int f4219k = -1;

    /* renamed from: F */
    private C1104g f4199F = null;

    /* renamed from: G */
    private C1104g f4200G = new C1104g() { // from class: androidx.fragment.app.FragmentManager.5
        @Override // androidx.fragment.app.C1104g
        /* renamed from: c */
        public final Fragment mo43616c(ClassLoader classLoader, String str) {
            return Fragment.instantiate(FragmentManager.this.f4220l.f4360c, str, null);
        }
    };

    /* renamed from: H */
    private AbstractC1072aa f4201H = null;

    /* renamed from: I */
    private AbstractC1072aa f4202I = new AbstractC1072aa() { // from class: androidx.fragment.app.FragmentManager.7
        @Override // androidx.fragment.app.AbstractC1072aa
        /* renamed from: a */
        public final AbstractC1147z mo43640a(ViewGroup viewGroup) {
            return new C1074b(viewGroup);
        }
    };

    /* renamed from: s */
    ArrayDeque<LaunchedFragmentInfo> f4227s = new ArrayDeque<>();

    /* renamed from: P */
    private Runnable f4209P = new Runnable() { // from class: androidx.fragment.app.FragmentManager.8
        @Override // java.lang.Runnable
        public final void run() {
            FragmentManager.this.m43733a(true);
        }
    };

    /* renamed from: androidx.fragment.app.FragmentManager$6 */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$6.class */
    class C10566 implements AbstractC1261n {

        /* renamed from: a */
        final /* synthetic */ String f4242a;

        /* renamed from: b */
        final /* synthetic */ AbstractC1115o f4243b;

        /* renamed from: c */
        final /* synthetic */ AbstractC1253j f4244c;

        C10566(String str, AbstractC1115o abstractC1115o, AbstractC1253j abstractC1253j) {
            FragmentManager.this = r4;
            this.f4242a = str;
            this.f4243b = abstractC1115o;
            this.f4244c = abstractC1253j;
        }

        @Override // androidx.lifecycle.AbstractC1261n
        /* renamed from: a */
        public final void mo39588a(AbstractC1263p abstractC1263p, AbstractC1253j.EnumC1255a enumC1255a) {
            if (enumC1255a == AbstractC1253j.EnumC1255a.ON_START && ((Bundle) FragmentManager.this.f4216h.get(this.f4242a)) != null) {
                FragmentManager fragmentManager = FragmentManager.this;
                fragmentManager.f4216h.remove(this.f4242a);
            }
            if (enumC1255a == AbstractC1253j.EnumC1255a.ON_DESTROY) {
                this.f4244c.removeObserver(this);
                FragmentManager.this.f4195B.remove(this.f4242a);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$LaunchedFragmentInfo.class */
    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new Parcelable.Creator<LaunchedFragmentInfo>() { // from class: androidx.fragment.app.FragmentManager.LaunchedFragmentInfo.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                return new LaunchedFragmentInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ LaunchedFragmentInfo[] newArray(int i) {
                return new LaunchedFragmentInfo[i];
            }
        };
        int mRequestCode;
        String mWho;

        LaunchedFragmentInfo(Parcel parcel) {
            this.mWho = parcel.readString();
            this.mRequestCode = parcel.readInt();
        }

        public LaunchedFragmentInfo(String str, int i) {
            this.mWho = str;
            this.mRequestCode = i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mWho);
            parcel.writeInt(this.mRequestCode);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$a.class */
    public interface AbstractC1061a {
        /* renamed from: g */
        String mo43641g();
    }

    /* renamed from: androidx.fragment.app.FragmentManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$b.class */
    public static final class C1062b extends AbstractC0130a<IntentSenderRequest, ActivityResult> {
        C1062b() {
        }

        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* synthetic */ Intent mo43665a(IntentSenderRequest intentSenderRequest) {
            IntentSenderRequest intentSenderRequest2 = intentSenderRequest;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent fillInIntent = intentSenderRequest2.getFillInIntent();
            IntentSenderRequest intentSenderRequest3 = intentSenderRequest2;
            if (fillInIntent != null) {
                Bundle bundleExtra = fillInIntent.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentSenderRequest3 = intentSenderRequest2;
                if (bundleExtra != null) {
                    intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    fillInIntent.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    intentSenderRequest3 = intentSenderRequest2;
                    if (fillInIntent.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        IntentSenderRequest.C0128a c0128a = new IntentSenderRequest.C0128a(intentSenderRequest2.getIntentSender());
                        c0128a.f250a = null;
                        intentSenderRequest3 = c0128a.m46388a(intentSenderRequest2.getFlagsValues(), intentSenderRequest2.getFlagsMask()).m46389a();
                    }
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest3);
            if (FragmentManager.m43764a(2)) {
                new StringBuilder("CreateIntent created the following intent: ").append(intent);
            }
            return intent;
        }

        @Override // androidx.activity.result.p016a.AbstractC0130a
        /* renamed from: a */
        public final /* synthetic */ ActivityResult mo43666a(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$c.class */
    public static abstract class AbstractC1063c {
        /* renamed from: a */
        public void mo645a(FragmentManager fragmentManager, Fragment fragment) {
        }

        /* renamed from: a */
        public void mo39577a(FragmentManager fragmentManager, Fragment fragment, View view) {
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$d */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$d.class */
    public interface AbstractC1064d {
        /* renamed from: a */
        boolean mo43647a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentManager$e */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$e.class */
    public final class C1065e implements AbstractC1064d {

        /* renamed from: a */
        final String f4252a;

        /* renamed from: b */
        final int f4253b;

        /* renamed from: c */
        final int f4254c;

        C1065e(String str, int i, int i2) {
            FragmentManager.this = r4;
            this.f4252a = str;
            this.f4253b = i;
            this.f4254c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.AbstractC1064d
        /* renamed from: a */
        public final boolean mo43647a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2) {
            if (FragmentManager.this.f4223o == null || this.f4253b >= 0 || this.f4252a != null || !FragmentManager.this.f4223o.getChildFragmentManager().m43714d()) {
                return FragmentManager.this.m43734a(arrayList, arrayList2, this.f4252a, this.f4253b, this.f4254c);
            }
            return false;
        }
    }

    /* renamed from: androidx.fragment.app.FragmentManager$f */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$f.class */
    public static final class C1066f implements Fragment.AbstractC1045c {

        /* renamed from: a */
        final boolean f4256a;

        /* renamed from: b */
        final C1071a f4257b;

        /* renamed from: c */
        int f4258c;

        C1066f(C1071a c1071a, boolean z) {
            this.f4256a = z;
            this.f4257b = c1071a;
        }

        @Override // androidx.fragment.app.Fragment.AbstractC1045c
        /* renamed from: a */
        public final void mo43664a() {
            int i = this.f4258c - 1;
            this.f4258c = i;
            if (i != 0) {
                return;
            }
            this.f4257b.f4271a.m43705g();
        }

        @Override // androidx.fragment.app.Fragment.AbstractC1045c
        /* renamed from: b */
        public final void mo43663b() {
            this.f4258c++;
        }

        /* renamed from: c */
        final void m43662c() {
            boolean z = this.f4258c > 0;
            for (Fragment fragment : this.f4257b.f4271a.f4210b.m43544f()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            this.f4257b.f4271a.m43745a(this.f4257b, this.f4256a, !z, true);
        }

        /* renamed from: d */
        final void m43661d() {
            this.f4257b.f4271a.m43745a(this.f4257b, this.f4256a, false, false);
        }
    }

    /* renamed from: A */
    private boolean m43766A() {
        boolean z = false;
        for (Fragment fragment : this.f4210b.m43543g()) {
            boolean z2 = z;
            if (fragment != null) {
                z2 = m43672w(fragment);
            }
            z = z2;
            if (z2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private int m43735a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, C0430b<Fragment> c0430b) {
        boolean z;
        boolean z2;
        int i3 = i2 - 1;
        int i4 = i2;
        while (true) {
            int i5 = i4;
            if (i3 >= i) {
                C1071a c1071a = arrayList.get(i3);
                boolean booleanValue = arrayList2.get(i3).booleanValue();
                int i6 = 0;
                while (true) {
                    z = true;
                    if (i6 >= c1071a.f4403d.size()) {
                        z2 = false;
                        break;
                    } else if (C1071a.m43652a(c1071a.f4403d.get(i6))) {
                        z2 = true;
                        break;
                    } else {
                        i6++;
                    }
                }
                if (!z2 || c1071a.m43649a(arrayList, i3 + 1, i2)) {
                    z = false;
                }
                int i7 = i5;
                if (z) {
                    if (this.f4208O == null) {
                        this.f4208O = new ArrayList<>();
                    }
                    C1066f c1066f = new C1066f(c1071a, booleanValue);
                    this.f4208O.add(c1066f);
                    c1071a.m43653a(c1066f);
                    if (booleanValue) {
                        c1071a.m43642f();
                    } else {
                        c1071a.m43646a(false);
                    }
                    i7 = i5 - 1;
                    if (i3 != i7) {
                        arrayList.remove(i3);
                        arrayList.add(i7, c1071a);
                    }
                    m43728b(c0430b);
                }
                i3--;
                i4 = i7;
            } else {
                return i5;
            }
        }
    }

    /* renamed from: a */
    public static Fragment m43755a(View view) {
        Object tag = view.getTag(C1028a.C1030b.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    /* renamed from: a */
    private Set<AbstractC1147z> m43738a(ArrayList<C1071a> arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator<AbstractC1121s.C1122a> it2 = arrayList.get(i).f4403d.iterator();
            while (it2.hasNext()) {
                Fragment fragment = it2.next().f4421b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(AbstractC1147z.m43484a(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    /* renamed from: a */
    private static void m43754a(C0430b<Fragment> c0430b) {
        int size = c0430b.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = (Fragment) c0430b.f1709a[i];
            if (!fragment.mAdded) {
                View requireView = fragment.requireView();
                fragment.mPostponedAlpha = requireView.getAlpha();
                requireView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m43752a(androidx.fragment.app.Fragment r7, int r8) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.m43752a(androidx.fragment.app.Fragment, int):void");
    }

    /* renamed from: a */
    private void m43743a(AbstractC1113m abstractC1113m) {
        this.f4198E.add(abstractC1113m);
    }

    /* renamed from: a */
    private void m43741a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new C1146y("FragmentManager"));
        AbstractC1105h<?> abstractC1105h = this.f4220l;
        if (abstractC1105h != null) {
            try {
                abstractC1105h.mo43610a("  ", printWriter, new String[0]);
            } catch (Exception e) {
                Log.e("FragmentManager", "Failed dumping state", e);
            }
        } else {
            try {
                m43739a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        }
        throw runtimeException;
    }

    /* renamed from: a */
    private void m43737a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<C1066f> arrayList3 = this.f4208O;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            int i4 = size;
            if (i3 < i4) {
                C1066f c1066f = this.f4208O.get(i3);
                if (arrayList == null || c1066f.f4256a || (indexOf2 = arrayList.indexOf(c1066f.f4257b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                    if (!(c1066f.f4258c == 0)) {
                        size = i4;
                        i = i3;
                        if (arrayList != null) {
                            size = i4;
                            i = i3;
                            if (!c1066f.f4257b.m43649a(arrayList, 0, arrayList.size())) {
                            }
                        }
                    }
                    this.f4208O.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    if (arrayList == null || c1066f.f4256a || (indexOf = arrayList.indexOf(c1066f.f4257b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                        c1066f.m43662c();
                    } else {
                        c1066f.m43661d();
                    }
                } else {
                    this.f4208O.remove(i3);
                    i = i3 - 1;
                    size = i4 - 1;
                    c1066f.m43661d();
                }
                i2 = i + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    private void m43736a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).f4418s;
        ArrayList<Fragment> arrayList3 = this.f4207N;
        if (arrayList3 == null) {
            this.f4207N = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.f4207N.addAll(this.f4210b.m43544f());
        Fragment fragment = this.f4223o;
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            C1071a c1071a = arrayList.get(i4);
            fragment = !arrayList2.get(i4).booleanValue() ? c1071a.m43648a(this.f4207N, fragment) : c1071a.m43644b(this.f4207N, fragment);
            z2 = z2 || c1071a.f4409j;
        }
        this.f4207N.clear();
        if (!z && this.f4219k > 0) {
            if (f4192a) {
                for (int i5 = i; i5 < i2; i5++) {
                    Iterator<AbstractC1121s.C1122a> it2 = arrayList.get(i5).f4403d.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment2 = it2.next().f4421b;
                        if (fragment2 != null && fragment2.mFragmentManager != null) {
                            this.f4210b.m43560a(m43704g(fragment2));
                        }
                    }
                }
            } else {
                C1123t.m43523a(this.f4220l.f4360c, this.f4221m, arrayList, arrayList2, i, i2, false, this.f4197D);
            }
        }
        m43722b(arrayList, arrayList2, i, i2);
        if (f4192a) {
            boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
            for (int i6 = i; i6 < i2; i6++) {
                C1071a c1071a2 = arrayList.get(i6);
                if (booleanValue) {
                    for (int size = c1071a2.f4403d.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = c1071a2.f4403d.get(size).f4421b;
                        if (fragment3 != null) {
                            m43704g(fragment3).m43580b();
                        }
                    }
                } else {
                    Iterator<AbstractC1121s.C1122a> it3 = c1071a2.f4403d.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment4 = it3.next().f4421b;
                        if (fragment4 != null) {
                            m43704g(fragment4).m43580b();
                        }
                    }
                }
            }
            m43763a(this.f4219k, true);
            for (AbstractC1147z abstractC1147z : m43738a(arrayList, i, i2)) {
                abstractC1147z.f4519c = booleanValue;
                abstractC1147z.m43477b();
                abstractC1147z.m43472d();
            }
        } else {
            if (z) {
                C0430b<Fragment> c0430b = new C0430b<>();
                m43728b(c0430b);
                i3 = m43735a(arrayList, arrayList2, i, i2, c0430b);
                m43754a(c0430b);
            } else {
                i3 = i2;
            }
            if (i3 == i || !z) {
                arrayList2 = arrayList2;
            } else {
                if (this.f4219k > 0) {
                    C1123t.m43523a(this.f4220l.f4360c, this.f4221m, arrayList, arrayList2, i, i3, true, this.f4197D);
                }
                arrayList2 = arrayList2;
                m43763a(this.f4219k, true);
            }
        }
        while (i < i2) {
            C1071a c1071a3 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && c1071a3.f4273c >= 0) {
                c1071a3.f4273c = -1;
            }
            c1071a3.m43655a();
            i++;
        }
        if (z2) {
            m43669z();
        }
    }

    /* renamed from: a */
    public static boolean m43764a(int i) {
        return f4193x || Log.isLoggable("FragmentManager", i);
    }

    /* renamed from: b */
    private void m43728b(C0430b<Fragment> c0430b) {
        int i = this.f4219k;
        if (i <= 0) {
            return;
        }
        int min = Math.min(i, 5);
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment.mState < min) {
                m43752a(fragment, min);
                if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                    c0430b.add(fragment);
                }
            }
        }
    }

    /* renamed from: b */
    private void m43723b(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        m43737a(arrayList, arrayList2);
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
            if (!arrayList.get(i2).f4418s) {
                if (i != i2) {
                    m43736a(arrayList, arrayList2, i, i2);
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
                        if (arrayList.get(i6).f4418s) {
                            break;
                        }
                        i6++;
                    }
                }
                m43736a(arrayList, arrayList2, i2, i5);
                i4 = i5 - 1;
            }
            i2 = i4 + 1;
            i3 = i5;
        }
        if (i == size) {
            return;
        }
        m43736a(arrayList, arrayList2, i, size);
    }

    /* renamed from: b */
    private static void m43722b(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            C1071a c1071a = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                c1071a.m43654a(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                c1071a.m43646a(z);
            } else {
                c1071a.m43654a(1);
                c1071a.m43642f();
            }
            i++;
        }
    }

    /* renamed from: b */
    public static boolean m43727b(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    /* renamed from: c */
    private boolean m43716c(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.f4232y) {
            if (this.f4232y.isEmpty()) {
                return false;
            }
            int size = this.f4232y.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                z |= this.f4232y.get(i).mo43647a(arrayList, arrayList2);
            }
            this.f4232y.clear();
            this.f4220l.f4361d.removeCallbacks(this.f4209P);
            return z;
        }
    }

    /* renamed from: d */
    private void m43711d(boolean z) {
        if (!this.f4233z) {
            if (this.f4220l == null) {
                if (!this.f4230v) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else if (Looper.myLooper() != this.f4220l.f4361d.getLooper()) {
                throw new IllegalStateException("Must be called from main thread of fragment host");
            } else {
                if (!z) {
                    m43679t();
                }
                if (this.f4205L == null) {
                    this.f4205L = new ArrayList<>();
                    this.f4206M = new ArrayList<>();
                }
                this.f4233z = true;
                try {
                    m43737a((ArrayList<C1071a>) null, (ArrayList<Boolean>) null);
                    return;
                } finally {
                    this.f4233z = false;
                }
            }
        }
        throw new IllegalStateException("FragmentManager is already executing transactions");
    }

    /* renamed from: e */
    public static int m43709e(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* renamed from: k */
    public static void m43696k(Fragment fragment) {
        if (m43764a(2)) {
            new StringBuilder("show: ").append(fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    /* renamed from: r */
    private C1111l m43682r(Fragment fragment) {
        C1111l c1111l = this.f4231w;
        C1111l c1111l2 = c1111l.f4371a.get(fragment.mWho);
        C1111l c1111l3 = c1111l2;
        if (c1111l2 == null) {
            c1111l3 = new C1111l(c1111l.f4373c);
            c1111l.f4371a.put(fragment.mWho, c1111l3);
        }
        return c1111l3;
    }

    /* renamed from: s */
    private void m43681s() {
        for (C1116p c1116p : this.f4210b.m43546e()) {
            m43742a(c1116p);
        }
    }

    /* renamed from: s */
    private void m43680s(Fragment fragment) {
        HashSet<C0856a> hashSet = this.f4217i.get(fragment);
        if (hashSet != null) {
            Iterator<C0856a> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                it2.next().m44301b();
            }
            hashSet.clear();
            m43712d(fragment);
            this.f4217i.remove(fragment);
        }
    }

    /* renamed from: t */
    private void m43679t() {
        if (!m43707f()) {
            return;
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    /* renamed from: t */
    private void m43678t(final Fragment fragment) {
        if (fragment.mView != null) {
            C1095d.C1100a m43623a = C1095d.m43623a(this.f4220l.f4360c, fragment, !fragment.mHidden, fragment.getPopDirection());
            if (m43623a == null || m43623a.f4350b == null) {
                if (m43623a != null) {
                    fragment.mView.startAnimation(m43623a.f4349a);
                    m43623a.f4349a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                m43623a.f4350b.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    final ViewGroup viewGroup = fragment.mContainer;
                    final View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    m43623a.f4350b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.FragmentManager.9
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            viewGroup.endViewTransition(view);
                            animator.removeListener(this);
                            if (fragment.mView == null || !fragment.mHidden) {
                                return;
                            }
                            fragment.mView.setVisibility(8);
                        }
                    });
                }
                m43623a.f4350b.start();
            }
        }
        m43684q(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    /* renamed from: u */
    private void m43677u() {
        this.f4233z = false;
        this.f4206M.clear();
        this.f4205L.clear();
    }

    /* renamed from: u */
    private void m43676u(Fragment fragment) {
        ViewGroup m43674v = m43674v(fragment);
        if (m43674v == null || fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() <= 0) {
            return;
        }
        if (m43674v.getTag(C1028a.C1030b.visible_removing_fragment_view_tag) == null) {
            m43674v.setTag(C1028a.C1030b.visible_removing_fragment_view_tag, fragment);
        }
        ((Fragment) m43674v.getTag(C1028a.C1030b.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
    }

    /* renamed from: v */
    private ViewGroup m43674v(Fragment fragment) {
        if (fragment.mContainer != null) {
            return fragment.mContainer;
        }
        if (fragment.mContainerId <= 0 || !this.f4221m.mo43614a()) {
            return null;
        }
        View mo43613a = this.f4221m.mo43613a(fragment.mContainerId);
        if (!(mo43613a instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) mo43613a;
    }

    /* renamed from: v */
    private void m43675v() {
        if (f4192a) {
            for (AbstractC1147z abstractC1147z : m43671x()) {
                abstractC1147z.m43474c();
            }
        } else if (this.f4208O != null) {
            while (!this.f4208O.isEmpty()) {
                this.f4208O.remove(0).m43662c();
            }
        }
    }

    /* renamed from: w */
    private void m43673w() {
        if (f4192a) {
            for (AbstractC1147z abstractC1147z : m43671x()) {
                abstractC1147z.m43470e();
            }
        } else if (!this.f4217i.isEmpty()) {
            for (Fragment fragment : this.f4217i.keySet()) {
                m43680s(fragment);
                m43708e(fragment);
            }
        }
    }

    /* renamed from: w */
    private static boolean m43672w(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.m43766A();
    }

    /* renamed from: x */
    private Set<AbstractC1147z> m43671x() {
        HashSet hashSet = new HashSet();
        for (C1116p c1116p : this.f4210b.m43546e()) {
            ViewGroup viewGroup = c1116p.f4383a.mContainer;
            if (viewGroup != null) {
                hashSet.add(AbstractC1147z.m43483a(viewGroup, m43683r()));
            }
        }
        return hashSet;
    }

    /* renamed from: y */
    private void m43670y() {
        if (this.f4204K) {
            this.f4204K = false;
            m43681s();
        }
    }

    /* renamed from: z */
    private void m43669z() {
        if (this.f4196C != null) {
            for (int i = 0; i < this.f4196C.size(); i++) {
                this.f4196C.get(i);
            }
        }
    }

    /* renamed from: a */
    public final Fragment m43761a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment m43724b = m43724b(string);
        if (m43724b == null) {
            m43741a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return m43724b;
    }

    /* renamed from: a */
    public final Fragment m43740a(String str) {
        return this.f4210b.m43559a(str);
    }

    /* renamed from: a */
    public final AbstractC1121s m43765a() {
        return new C1071a(this);
    }

    /* renamed from: a */
    public final void m43763a(int i, boolean z) {
        AbstractC1105h<?> abstractC1105h;
        if (this.f4220l != null || i == -1) {
            if (!z && i == this.f4219k) {
                return;
            }
            this.f4219k = i;
            if (f4192a) {
                this.f4210b.m43563a();
            } else {
                for (Fragment fragment : this.f4210b.m43544f()) {
                    m43706f(fragment);
                }
                for (C1116p c1116p : this.f4210b.m43546e()) {
                    Fragment fragment2 = c1116p.f4383a;
                    if (!fragment2.mIsNewlyAdded) {
                        m43706f(fragment2);
                    }
                    if (fragment2.mRemoving && !fragment2.isInBackStack()) {
                        this.f4210b.m43553b(c1116p);
                    }
                }
            }
            m43681s();
            if (!this.f4203J || (abstractC1105h = this.f4220l) == null || this.f4219k != 7) {
                return;
            }
            abstractC1105h.mo43607d();
            this.f4203J = false;
            return;
        }
        throw new IllegalStateException("No activity");
    }

    /* renamed from: a */
    public final void m43762a(Configuration configuration) {
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    /* renamed from: a */
    public final void m43760a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            m43741a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    /* renamed from: a */
    public final void m43759a(Parcelable parcelable) {
        C1116p c1116p;
        if (parcelable == null) {
            return;
        }
        FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
        if (fragmentManagerState.mActive == null) {
            return;
        }
        this.f4210b.f4398a.clear();
        Iterator<FragmentState> it2 = fragmentManagerState.mActive.iterator();
        while (it2.hasNext()) {
            FragmentState next = it2.next();
            if (next != null) {
                Fragment m43589a = this.f4231w.m43589a(next.mWho);
                if (m43589a != null) {
                    if (m43764a(2)) {
                        new StringBuilder("restoreSaveState: re-attaching retained ").append(m43589a);
                    }
                    c1116p = new C1116p(this.f4218j, this.f4210b, m43589a, next);
                } else {
                    c1116p = new C1116p(this.f4218j, this.f4210b, this.f4220l.f4360c.getClassLoader(), m43685q(), next);
                }
                Fragment fragment = c1116p.f4383a;
                fragment.mFragmentManager = this;
                if (m43764a(2)) {
                    StringBuilder sb = new StringBuilder("restoreSaveState: active (");
                    sb.append(fragment.mWho);
                    sb.append("): ");
                    sb.append(fragment);
                }
                c1116p.m43581a(this.f4220l.f4360c.getClassLoader());
                this.f4210b.m43560a(c1116p);
                c1116p.f4384b = this.f4219k;
            }
        }
        for (Fragment fragment2 : this.f4231w.m43588b()) {
            if (!this.f4210b.m43552b(fragment2.mWho)) {
                if (m43764a(2)) {
                    StringBuilder sb2 = new StringBuilder("Discarding retained Fragment ");
                    sb2.append(fragment2);
                    sb2.append(" that was not found in the set of active Fragments ");
                    sb2.append(fragmentManagerState.mActive);
                }
                this.f4231w.m43586c(fragment2);
                fragment2.mFragmentManager = this;
                C1116p c1116p2 = new C1116p(this.f4218j, this.f4210b, fragment2);
                c1116p2.f4384b = 1;
                c1116p2.m43580b();
                fragment2.mRemoving = true;
                c1116p2.m43580b();
            }
        }
        this.f4210b.m43557a(fragmentManagerState.mAdded);
        if (fragmentManagerState.mBackStack != null) {
            this.f4211c = new ArrayList<>(fragmentManagerState.mBackStack.length);
            for (int i = 0; i < fragmentManagerState.mBackStack.length; i++) {
                C1071a instantiate = fragmentManagerState.mBackStack[i].instantiate(this);
                if (m43764a(2)) {
                    StringBuilder sb3 = new StringBuilder("restoreAllState: back stack #");
                    sb3.append(i);
                    sb3.append(" (index ");
                    sb3.append(instantiate.f4273c);
                    sb3.append("): ");
                    sb3.append(instantiate);
                    PrintWriter printWriter = new PrintWriter(new C1146y("FragmentManager"));
                    instantiate.m43650a("  ", printWriter, false);
                    printWriter.close();
                }
                this.f4211c.add(instantiate);
            }
        } else {
            this.f4211c = null;
        }
        this.f4215g.set(fragmentManagerState.mBackStackIndex);
        if (fragmentManagerState.mPrimaryNavActiveWho != null) {
            Fragment m43724b = m43724b(fragmentManagerState.mPrimaryNavActiveWho);
            this.f4223o = m43724b;
            m43688o(m43724b);
        }
        ArrayList<String> arrayList = fragmentManagerState.mResultKeys;
        if (arrayList != null) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                this.f4216h.put(arrayList.get(i2), fragmentManagerState.mResults.get(i2));
            }
        }
        this.f4227s = new ArrayDeque<>(fragmentManagerState.mLaunchedFragments);
    }

    /* renamed from: a */
    public final void m43751a(Fragment fragment, AbstractC1253j.EnumC1256b enumC1256b) {
        if (fragment.equals(m43724b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = enumC1256b;
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: a */
    public final void m43750a(Fragment fragment, boolean z) {
        ViewGroup m43674v = m43674v(fragment);
        if (m43674v == null || !(m43674v instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m43674v).f4188a = !z;
    }

    /* renamed from: a */
    public final void m43749a(FragmentContainerView fragmentContainerView) {
        for (C1116p c1116p : this.f4210b.m43546e()) {
            Fragment fragment = c1116p.f4383a;
            if (fragment.mContainerId == fragmentContainerView.getId() && fragment.mView != null && fragment.mView.getParent() == null) {
                fragment.mContainer = fragmentContainerView;
                c1116p.m43564r();
            }
        }
    }

    /* renamed from: a */
    public final void m43748a(AbstractC1063c abstractC1063c, boolean z) {
        this.f4218j.f4366a.add(new C1108j.C1109a(abstractC1063c, z));
    }

    /* renamed from: a */
    public final void m43747a(AbstractC1064d abstractC1064d, boolean z) {
        if (!z) {
            if (this.f4220l == null) {
                if (!this.f4230v) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            m43679t();
        }
        synchronized (this.f4232y) {
            if (this.f4220l == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.f4232y.add(abstractC1064d);
            m43705g();
        }
    }

    /* renamed from: a */
    final void m43745a(C1071a c1071a, boolean z, boolean z2, boolean z3) {
        if (z) {
            c1071a.m43646a(z3);
        } else {
            c1071a.m43642f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(c1071a);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.f4219k > 0) {
            C1123t.m43523a(this.f4220l.f4360c, this.f4221m, arrayList, arrayList2, 0, 1, true, this.f4197D);
        }
        if (z3) {
            m43763a(this.f4219k, true);
        }
        for (Fragment fragment : this.f4210b.m43543g()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && c1071a.m43645b(fragment.mContainerId)) {
                if (fragment.mPostponedAlpha > BitmapDescriptorFactory.HUE_RED) {
                    fragment.mView.setAlpha(fragment.mPostponedAlpha);
                }
                if (z3) {
                    fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                } else {
                    fragment.mPostponedAlpha = -1.0f;
                    fragment.mIsNewlyAdded = false;
                }
            }
        }
    }

    /* renamed from: a */
    public final void m43744a(AbstractC1105h<?> abstractC1105h, AbstractC1102e abstractC1102e, final Fragment fragment) {
        String str;
        if (this.f4220l == null) {
            this.f4220l = abstractC1105h;
            this.f4221m = abstractC1102e;
            this.f4222n = fragment;
            if (fragment != null) {
                m43743a(new AbstractC1113m() { // from class: androidx.fragment.app.FragmentManager.10
                    @Override // androidx.fragment.app.AbstractC1113m
                    /* renamed from: a */
                    public final void mo43585a(Fragment fragment2) {
                        fragment.onAttachFragment(fragment2);
                    }
                });
            } else if (abstractC1105h instanceof AbstractC1113m) {
                m43743a((AbstractC1113m) abstractC1105h);
            }
            if (this.f4222n != null) {
                m43720c();
            }
            if (abstractC1105h instanceof AbstractC0125c) {
                AbstractC0125c abstractC0125c = (AbstractC0125c) abstractC1105h;
                OnBackPressedDispatcher onBackPressedDispatcher = abstractC0125c.getOnBackPressedDispatcher();
                this.f4213e = onBackPressedDispatcher;
                AbstractC0125c abstractC0125c2 = abstractC0125c;
                if (fragment != null) {
                    abstractC0125c2 = fragment;
                }
                onBackPressedDispatcher.m46394a(abstractC0125c2, this.f4214f);
            }
            if (fragment != null) {
                this.f4231w = fragment.mFragmentManager.m43682r(fragment);
            } else if (abstractC1105h instanceof AbstractC1239ad) {
                this.f4231w = C1111l.m43590a(((AbstractC1239ad) abstractC1105h).getViewModelStore());
            } else {
                this.f4231w = new C1111l(false);
            }
            this.f4231w.f4375e = m43707f();
            this.f4210b.f4399b = this.f4231w;
            AbstractC1105h<?> abstractC1105h2 = this.f4220l;
            if (!(abstractC1105h2 instanceof AbstractC0141d)) {
                return;
            }
            AbstractC0136c activityResultRegistry = ((AbstractC0141d) abstractC1105h2).getActivityResultRegistry();
            if (fragment != null) {
                str = fragment.mWho + ":";
            } else {
                str = "";
            }
            String concat = "FragmentManager:".concat(String.valueOf(str));
            this.f4224p = activityResultRegistry.m46380a(concat + "StartActivityForResult", new C0132b.C0134b(), new AbstractC0129a<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.11
                @Override // androidx.activity.result.AbstractC0129a
                /* renamed from: a */
                public final /* synthetic */ void mo43667a(ActivityResult activityResult) {
                    ActivityResult activityResult2 = activityResult;
                    LaunchedFragmentInfo pollFirst = FragmentManager.this.f4227s.pollFirst();
                    if (pollFirst == null) {
                        Log.w("FragmentManager", "No Activities were started for result for ".concat(String.valueOf(this)));
                        return;
                    }
                    String str2 = pollFirst.mWho;
                    int i = pollFirst.mRequestCode;
                    Fragment m43547d = FragmentManager.this.f4210b.m43547d(str2);
                    if (m43547d == null) {
                        Log.w("FragmentManager", "Activity result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                    } else {
                        m43547d.onActivityResult(i, activityResult2.getResultCode(), activityResult2.getData());
                    }
                }
            });
            this.f4225q = activityResultRegistry.m46380a(concat + "StartIntentSenderForResult", new C1062b(), new AbstractC0129a<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.2
                @Override // androidx.activity.result.AbstractC0129a
                /* renamed from: a */
                public final /* synthetic */ void mo43667a(ActivityResult activityResult) {
                    ActivityResult activityResult2 = activityResult;
                    LaunchedFragmentInfo pollFirst = FragmentManager.this.f4227s.pollFirst();
                    if (pollFirst == null) {
                        Log.w("FragmentManager", "No IntentSenders were started for ".concat(String.valueOf(this)));
                        return;
                    }
                    String str2 = pollFirst.mWho;
                    int i = pollFirst.mRequestCode;
                    Fragment m43547d = FragmentManager.this.f4210b.m43547d(str2);
                    if (m43547d == null) {
                        Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                    } else {
                        m43547d.onActivityResult(i, activityResult2.getResultCode(), activityResult2.getData());
                    }
                }
            });
            this.f4226r = activityResultRegistry.m46380a(concat + "RequestPermissions", new C0132b.C0133a(), new AbstractC0129a<Map<String, Boolean>>() { // from class: androidx.fragment.app.FragmentManager.3
                @Override // androidx.activity.result.AbstractC0129a
                /* renamed from: a */
                public final /* synthetic */ void mo43667a(Map<String, Boolean> map) {
                    Map<String, Boolean> map2 = map;
                    String[] strArr = (String[]) map2.keySet().toArray(new String[0]);
                    ArrayList arrayList = new ArrayList(map2.values());
                    int[] iArr = new int[arrayList.size()];
                    for (int i = 0; i < arrayList.size(); i++) {
                        iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
                    }
                    LaunchedFragmentInfo pollFirst = FragmentManager.this.f4227s.pollFirst();
                    if (pollFirst == null) {
                        Log.w("FragmentManager", "No permissions were requested for ".concat(String.valueOf(this)));
                        return;
                    }
                    String str2 = pollFirst.mWho;
                    int i2 = pollFirst.mRequestCode;
                    Fragment m43547d = FragmentManager.this.f4210b.m43547d(str2);
                    if (m43547d == null) {
                        Log.w("FragmentManager", "Permission request result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                    } else {
                        m43547d.onRequestPermissionsResult(i2, strArr, iArr);
                    }
                }
            });
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* renamed from: a */
    public final void m43742a(C1116p c1116p) {
        Fragment fragment = c1116p.f4383a;
        if (fragment.mDeferStart) {
            if (this.f4233z) {
                this.f4204K = true;
                return;
            }
            fragment.mDeferStart = false;
            if (f4192a) {
                c1116p.m43580b();
            } else {
                m43708e(fragment);
            }
        }
    }

    /* renamed from: a */
    public final void m43739a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f4210b.m43558a(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.f4194A;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.f4194A.get(i).toString());
            }
        }
        ArrayList<C1071a> arrayList2 = this.f4211c;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                C1071a c1071a = this.f4211c.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(c1071a.toString());
                c1071a.m43651a(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f4215g.get());
        synchronized (this.f4232y) {
            int size3 = this.f4232y.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i3 = 0; i3 < size3; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.f4232y.get(i3));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f4220l);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f4221m);
        if (this.f4222n != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f4222n);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f4219k);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f4228t);
        printWriter.print(" mStopped=");
        printWriter.print(this.f4229u);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f4230v);
        if (this.f4203J) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f4203J);
        }
    }

    /* renamed from: a */
    public final boolean m43758a(Menu menu) {
        boolean z = false;
        if (this.f4219k <= 0) {
            return false;
        }
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null && m43727b(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m43757a(Menu menu, MenuInflater menuInflater) {
        if (this.f4219k <= 0) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null && m43727b(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.f4194A != null) {
            for (int i = 0; i < this.f4194A.size(); i++) {
                Fragment fragment2 = this.f4194A.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f4194A = arrayList;
        return z;
    }

    /* renamed from: a */
    public final boolean m43756a(MenuItem menuItem) {
        if (this.f4219k <= 0) {
            return false;
        }
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m43753a(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.f4223o) && m43753a(fragmentManager.f4222n);
    }

    /* renamed from: a */
    final boolean m43734a(ArrayList<C1071a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<C1071a> arrayList3 = this.f4211c;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f4211c.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                C1071a c1071a = this.f4211c.get(size2);
                if ((str != null && str.equals(c1071a.f4411l)) || (i >= 0 && i == c1071a.f4273c)) {
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
                    C1071a c1071a2 = this.f4211c.get(i5);
                    if (str != null) {
                        size2 = i5;
                        if (str.equals(c1071a2.f4411l)) {
                            continue;
                        }
                    }
                    i4 = i5;
                    if (i < 0) {
                        break;
                    }
                    i4 = i5;
                    if (i != c1071a2.f4273c) {
                        break;
                    }
                    size2 = i5;
                }
            }
            i3 = i4;
        } else {
            i3 = -1;
        }
        if (i3 == this.f4211c.size() - 1) {
            return false;
        }
        for (int size3 = this.f4211c.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f4211c.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final boolean m43733a(boolean z) {
        m43711d(z);
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            if (!m43716c(this.f4205L, this.f4206M)) {
                m43720c();
                m43670y();
                this.f4210b.m43556b();
                return z3;
            }
            this.f4233z = true;
            try {
                m43723b(this.f4205L, this.f4206M);
                m43677u();
                z2 = true;
            } catch (Throwable th) {
                m43677u();
                throw th;
            }
        }
    }

    /* renamed from: b */
    public final Fragment m43724b(String str) {
        return this.f4210b.m43545e(str);
    }

    /* renamed from: b */
    public final void m43731b(int i) {
        if (i >= 0) {
            m43747a((AbstractC1064d) new C1065e(null, i, 1), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: ".concat(String.valueOf(i)));
    }

    /* renamed from: b */
    public final void m43730b(Menu menu) {
        if (this.f4219k <= 0) {
            return;
        }
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    /* renamed from: b */
    public final void m43726b(AbstractC1064d abstractC1064d, boolean z) {
        if (!z || (this.f4220l != null && !this.f4230v)) {
            m43711d(z);
            if (abstractC1064d.mo43647a(this.f4205L, this.f4206M)) {
                this.f4233z = true;
                try {
                    m43723b(this.f4205L, this.f4206M);
                } finally {
                    m43677u();
                }
            }
            m43720c();
            m43670y();
            this.f4210b.m43556b();
        }
    }

    /* renamed from: b */
    public final void m43721b(boolean z) {
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    /* renamed from: b */
    public final boolean m43732b() {
        boolean m43733a = m43733a(true);
        m43675v();
        return m43733a;
    }

    /* renamed from: b */
    public final boolean m43729b(MenuItem menuItem) {
        if (this.f4219k <= 0) {
            return false;
        }
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public final Fragment.SavedState m43718c(Fragment fragment) {
        Bundle m43569m;
        C1116p m43549c = this.f4210b.m43549c(fragment.mWho);
        if (m43549c == null || !m43549c.f4383a.equals(fragment)) {
            m43741a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (m43549c.f4383a.mState < 0 || (m43569m = m43549c.m43569m()) == null) {
            return null;
        }
        return new Fragment.SavedState(m43569m);
    }

    /* renamed from: c */
    public final Fragment m43719c(int i) {
        return this.f4210b.m43555b(i);
    }

    /* renamed from: c */
    public final void m43720c() {
        synchronized (this.f4232y) {
            boolean z = true;
            if (!this.f4232y.isEmpty()) {
                this.f4214f.f244a = true;
                return;
            }
            AbstractC0124b abstractC0124b = this.f4214f;
            if (m43710e() <= 0 || !m43753a(this.f4222n)) {
                z = false;
            }
            abstractC0124b.f244a = z;
        }
    }

    /* renamed from: c */
    public final void m43715c(boolean z) {
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public final void m43713d(int i) {
        try {
            this.f4233z = true;
            this.f4210b.m43562a(i);
            m43763a(i, false);
            if (f4192a) {
                for (AbstractC1147z abstractC1147z : m43671x()) {
                    abstractC1147z.m43470e();
                }
            }
            this.f4233z = false;
            m43733a(true);
        } catch (Throwable th) {
            this.f4233z = false;
            throw th;
        }
    }

    /* renamed from: d */
    final void m43712d(Fragment fragment) {
        fragment.performDestroyView();
        this.f4218j.m43602a(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.mo43286b((C1267t<AbstractC1263p>) null);
        fragment.mInLayout = false;
    }

    /* renamed from: d */
    final boolean m43714d() {
        m43733a(false);
        m43711d(true);
        Fragment fragment = this.f4223o;
        if (fragment == null || !fragment.getChildFragmentManager().m43714d()) {
            boolean m43734a = m43734a(this.f4205L, this.f4206M, (String) null, -1, 0);
            if (m43734a) {
                this.f4233z = true;
                try {
                    m43723b(this.f4205L, this.f4206M);
                } finally {
                    m43677u();
                }
            }
            m43720c();
            m43670y();
            this.f4210b.m43556b();
            return m43734a;
        }
        return true;
    }

    /* renamed from: e */
    public final int m43710e() {
        ArrayList<C1071a> arrayList = this.f4211c;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    /* renamed from: e */
    public final void m43708e(Fragment fragment) {
        m43752a(fragment, this.f4219k);
    }

    /* renamed from: f */
    public final void m43706f(Fragment fragment) {
        if (!this.f4210b.m43552b(fragment.mWho)) {
            if (!m43764a(3)) {
                return;
            }
            StringBuilder sb = new StringBuilder("Ignoring moving ");
            sb.append(fragment);
            sb.append(" to state ");
            sb.append(this.f4219k);
            sb.append("since it is not added to ");
            sb.append(this);
            return;
        }
        m43708e(fragment);
        if (fragment.mView != null && fragment.mIsNewlyAdded && fragment.mContainer != null) {
            if (fragment.mPostponedAlpha > BitmapDescriptorFactory.HUE_RED) {
                fragment.mView.setAlpha(fragment.mPostponedAlpha);
            }
            fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
            fragment.mIsNewlyAdded = false;
            C1095d.C1100a m43623a = C1095d.m43623a(this.f4220l.f4360c, fragment, true, fragment.getPopDirection());
            if (m43623a != null) {
                if (m43623a.f4349a != null) {
                    fragment.mView.startAnimation(m43623a.f4349a);
                } else {
                    m43623a.f4350b.setTarget(fragment.mView);
                    m43623a.f4350b.start();
                }
            }
        }
        if (!fragment.mHiddenChanged) {
            return;
        }
        m43678t(fragment);
    }

    /* renamed from: f */
    public final boolean m43707f() {
        return this.f4228t || this.f4229u;
    }

    /* renamed from: g */
    public final C1116p m43704g(Fragment fragment) {
        C1116p m43549c = this.f4210b.m43549c(fragment.mWho);
        if (m43549c != null) {
            return m43549c;
        }
        C1116p c1116p = new C1116p(this.f4218j, this.f4210b, fragment);
        c1116p.m43581a(this.f4220l.f4360c.getClassLoader());
        c1116p.f4384b = this.f4219k;
        return c1116p;
    }

    /* renamed from: g */
    final void m43705g() {
        synchronized (this.f4232y) {
            ArrayList<C1066f> arrayList = this.f4208O;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.f4232y.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.f4220l.f4361d.removeCallbacks(this.f4209P);
                this.f4220l.f4361d.post(this.f4209P);
                m43720c();
            }
        }
    }

    /* renamed from: h */
    public final Parcelable m43703h() {
        m43675v();
        m43673w();
        m43733a(true);
        this.f4228t = true;
        this.f4231w.f4375e = true;
        ArrayList<FragmentState> m43551c = this.f4210b.m43551c();
        if (m43551c.isEmpty()) {
            m43764a(2);
            return null;
        }
        ArrayList<String> m43548d = this.f4210b.m43548d();
        ArrayList<C1071a> arrayList = this.f4211c;
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
                    backStackStateArr2[i] = new BackStackState(this.f4211c.get(i));
                    if (m43764a(2)) {
                        StringBuilder sb = new StringBuilder("saveAllState: adding back stack #");
                        sb.append(i);
                        sb.append(": ");
                        sb.append(this.f4211c.get(i));
                    }
                    i++;
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = m43551c;
        fragmentManagerState.mAdded = m43548d;
        fragmentManagerState.mBackStack = backStackStateArr;
        fragmentManagerState.mBackStackIndex = this.f4215g.get();
        Fragment fragment = this.f4223o;
        if (fragment != null) {
            fragmentManagerState.mPrimaryNavActiveWho = fragment.mWho;
        }
        fragmentManagerState.mResultKeys.addAll(this.f4216h.keySet());
        fragmentManagerState.mResults.addAll(this.f4216h.values());
        fragmentManagerState.mLaunchedFragments = new ArrayList<>(this.f4227s);
        return fragmentManagerState;
    }

    /* renamed from: h */
    public final C1116p m43702h(Fragment fragment) {
        if (m43764a(2)) {
            new StringBuilder("add: ").append(fragment);
        }
        C1116p m43704g = m43704g(fragment);
        fragment.mFragmentManager = this;
        this.f4210b.m43560a(m43704g);
        if (!fragment.mDetached) {
            this.f4210b.m43561a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (m43672w(fragment)) {
                this.f4203J = true;
            }
        }
        return m43704g;
    }

    /* renamed from: i */
    public final void m43701i() {
        if (this.f4220l == null) {
            return;
        }
        this.f4228t = false;
        this.f4229u = false;
        this.f4231w.f4375e = false;
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    /* renamed from: i */
    public final void m43700i(Fragment fragment) {
        if (m43764a(2)) {
            StringBuilder sb = new StringBuilder("remove: ");
            sb.append(fragment);
            sb.append(" nesting=");
            sb.append(fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!isInBackStack)) {
            this.f4210b.m43554b(fragment);
            if (m43672w(fragment)) {
                this.f4203J = true;
            }
            fragment.mRemoving = true;
            m43676u(fragment);
        }
    }

    /* renamed from: j */
    public final void m43699j() {
        this.f4228t = false;
        this.f4229u = false;
        this.f4231w.f4375e = false;
        m43713d(1);
    }

    /* renamed from: j */
    public final void m43698j(Fragment fragment) {
        if (m43764a(2)) {
            new StringBuilder("hide: ").append(fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            m43676u(fragment);
        }
    }

    /* renamed from: k */
    public final void m43697k() {
        this.f4228t = false;
        this.f4229u = false;
        this.f4231w.f4375e = false;
        m43713d(4);
    }

    /* renamed from: l */
    public final void m43695l() {
        this.f4228t = false;
        this.f4229u = false;
        this.f4231w.f4375e = false;
        m43713d(5);
    }

    /* renamed from: l */
    public final void m43694l(Fragment fragment) {
        if (m43764a(2)) {
            new StringBuilder("detach: ").append(fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (!fragment.mAdded) {
                return;
            }
            if (m43764a(2)) {
                new StringBuilder("remove from detach: ").append(fragment);
            }
            this.f4210b.m43554b(fragment);
            if (m43672w(fragment)) {
                this.f4203J = true;
            }
            m43676u(fragment);
        }
    }

    /* renamed from: m */
    public final void m43693m() {
        this.f4228t = false;
        this.f4229u = false;
        this.f4231w.f4375e = false;
        m43713d(7);
    }

    /* renamed from: m */
    public final void m43692m(Fragment fragment) {
        if (m43764a(2)) {
            new StringBuilder("attach: ").append(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f4210b.m43561a(fragment);
            if (m43764a(2)) {
                new StringBuilder("add from attach: ").append(fragment);
            }
            if (!m43672w(fragment)) {
                return;
            }
            this.f4203J = true;
        }
    }

    /* renamed from: n */
    public final void m43691n() {
        this.f4229u = true;
        this.f4231w.f4375e = true;
        m43713d(4);
    }

    /* renamed from: n */
    public final void m43690n(Fragment fragment) {
        if (fragment == null || (fragment.equals(m43724b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.f4223o;
            this.f4223o = fragment;
            m43688o(fragment2);
            m43688o(this.f4223o);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: o */
    public final void m43689o() {
        this.f4230v = true;
        m43733a(true);
        m43673w();
        m43713d(-1);
        this.f4220l = null;
        this.f4221m = null;
        this.f4222n = null;
        if (this.f4213e != null) {
            this.f4214f.m46392a();
            this.f4213e = null;
        }
        AbstractC0135b<Intent> abstractC0135b = this.f4224p;
        if (abstractC0135b != null) {
            abstractC0135b.mo43771a();
            this.f4225q.mo43771a();
            this.f4226r.mo43771a();
        }
    }

    /* renamed from: o */
    public final void m43688o(Fragment fragment) {
        if (fragment == null || !fragment.equals(m43724b(fragment.mWho))) {
            return;
        }
        fragment.performPrimaryNavigationFragmentChanged();
    }

    /* renamed from: p */
    public final void m43687p() {
        for (Fragment fragment : this.f4210b.m43544f()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* renamed from: p */
    public final void m43686p(Fragment fragment) {
        Iterator<AbstractC1113m> it2 = this.f4198E.iterator();
        while (it2.hasNext()) {
            it2.next().mo43585a(fragment);
        }
    }

    /* renamed from: q */
    public final C1104g m43685q() {
        FragmentManager fragmentManager = this;
        while (true) {
            FragmentManager fragmentManager2 = fragmentManager;
            C1104g c1104g = fragmentManager2.f4199F;
            if (c1104g != null) {
                return c1104g;
            }
            Fragment fragment = fragmentManager2.f4222n;
            if (fragment == null) {
                return fragmentManager2.f4200G;
            }
            fragmentManager = fragment.mFragmentManager;
        }
    }

    /* renamed from: q */
    public final void m43684q(Fragment fragment) {
        if (!fragment.mAdded || !m43672w(fragment)) {
            return;
        }
        this.f4203J = true;
    }

    /* renamed from: r */
    public final AbstractC1072aa m43683r() {
        FragmentManager fragmentManager = this;
        while (true) {
            FragmentManager fragmentManager2 = fragmentManager;
            AbstractC1072aa abstractC1072aa = fragmentManager2.f4201H;
            if (abstractC1072aa != null) {
                return abstractC1072aa;
            }
            Fragment fragment = fragmentManager2.f4222n;
            if (fragment == null) {
                return fragmentManager2.f4202I;
            }
            fragmentManager = fragment.mFragmentManager;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.f4222n;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f4222n)));
            sb.append("}");
        } else {
            AbstractC1105h<?> abstractC1105h = this.f4220l;
            if (abstractC1105h != null) {
                sb.append(abstractC1105h.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f4220l)));
                sb.append("}");
            } else {
                sb.append(JsonReaderKt.NULL);
            }
        }
        sb.append("}}");
        return sb.toString();
    }
}
