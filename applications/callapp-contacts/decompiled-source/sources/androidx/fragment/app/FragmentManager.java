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
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.a.b;
import androidx.fragment.a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import androidx.fragment.app.j;
import androidx.fragment.app.s;
import androidx.fragment.app.t;
import androidx.lifecycle.ad;
import androidx.lifecycle.j;
import androidx.lifecycle.n;
import androidx.lifecycle.p;
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

    /* renamed from: a  reason: collision with root package name */
    static boolean f2185a = true;
    private static boolean x = false;
    private ArrayList<Fragment> A;
    private ArrayList<Object> C;
    private boolean J;
    private boolean K;
    private ArrayList<androidx.fragment.app.a> L;
    private ArrayList<Boolean> M;
    private ArrayList<Fragment> N;
    private ArrayList<f> O;

    /* renamed from: c  reason: collision with root package name */
    public ArrayList<androidx.fragment.app.a> f2187c;
    OnBackPressedDispatcher e;
    h<?> l;
    androidx.fragment.app.e m;
    Fragment n;
    Fragment o;
    androidx.activity.result.b<Intent> p;
    androidx.activity.result.b<IntentSenderRequest> q;
    androidx.activity.result.b<String[]> r;
    boolean t;
    boolean u;
    public boolean v;
    l w;
    private boolean z;
    private final ArrayList<d> y = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    public final r f2186b = new r();

    /* renamed from: d  reason: collision with root package name */
    final i f2188d = new i(this);
    final androidx.activity.b f = new androidx.activity.b(false) { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.b
        public final void b() {
            FragmentManager fragmentManager = FragmentManager.this;
            fragmentManager.a(true);
            if (fragmentManager.f.f535a) {
                fragmentManager.d();
            } else {
                fragmentManager.e.a();
            }
        }
    };
    final AtomicInteger g = new AtomicInteger();
    final Map<String, Bundle> h = Collections.synchronizedMap(new HashMap());
    private final Map<String, Object> B = Collections.synchronizedMap(new HashMap());
    Map<Fragment, HashSet<androidx.core.os.a>> i = Collections.synchronizedMap(new HashMap());
    private final t.a D = new t.a() { // from class: androidx.fragment.app.FragmentManager.4
        @Override // androidx.fragment.app.t.a
        public final void a(Fragment fragment, androidx.core.os.a aVar) {
            FragmentManager fragmentManager = FragmentManager.this;
            if (fragmentManager.i.get(fragment) == null) {
                fragmentManager.i.put(fragment, new HashSet<>());
            }
            fragmentManager.i.get(fragment).add(aVar);
        }

        @Override // androidx.fragment.app.t.a
        public final void b(Fragment fragment, androidx.core.os.a aVar) {
            if (!aVar.a()) {
                FragmentManager fragmentManager = FragmentManager.this;
                HashSet<androidx.core.os.a> hashSet = fragmentManager.i.get(fragment);
                if (hashSet != null && hashSet.remove(aVar) && hashSet.isEmpty()) {
                    fragmentManager.i.remove(fragment);
                    if (fragment.mState < 5) {
                        fragmentManager.d(fragment);
                        fragmentManager.e(fragment);
                    }
                }
            }
        }
    };
    public final j j = new j(this);
    private final CopyOnWriteArrayList<m> E = new CopyOnWriteArrayList<>();
    int k = -1;
    private g F = null;
    private g G = new g() { // from class: androidx.fragment.app.FragmentManager.5
        @Override // androidx.fragment.app.g
        public final Fragment c(ClassLoader classLoader, String str) {
            return Fragment.instantiate(FragmentManager.this.l.f2291c, str, null);
        }
    };
    private aa H = null;
    private aa I = new aa() { // from class: androidx.fragment.app.FragmentManager.7
        @Override // androidx.fragment.app.aa
        public final z a(ViewGroup viewGroup) {
            return new androidx.fragment.app.b(viewGroup);
        }
    };
    ArrayDeque<LaunchedFragmentInfo> s = new ArrayDeque<>();
    private Runnable P = new Runnable() { // from class: androidx.fragment.app.FragmentManager.8
        @Override // java.lang.Runnable
        public final void run() {
            FragmentManager.this.a(true);
        }
    };

    /* renamed from: androidx.fragment.app.FragmentManager$6  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$6.class */
    class AnonymousClass6 implements n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f2197a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o f2198b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ j f2199c;

        AnonymousClass6(String str, o oVar, j jVar) {
            this.f2197a = str;
            this.f2198b = oVar;
            this.f2199c = jVar;
        }

        @Override // androidx.lifecycle.n
        public final void a(p pVar, j.a aVar) {
            if (aVar == j.a.ON_START && ((Bundle) FragmentManager.this.h.get(this.f2197a)) != null) {
                FragmentManager fragmentManager = FragmentManager.this;
                fragmentManager.h.remove(this.f2197a);
            }
            if (aVar == j.a.ON_DESTROY) {
                this.f2199c.removeObserver(this);
                FragmentManager.this.B.remove(this.f2197a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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

        /* JADX INFO: Access modifiers changed from: package-private */
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

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$a.class */
    public interface a {
        String g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$b.class */
    public static final class b extends androidx.activity.result.a.a<IntentSenderRequest, ActivityResult> {
        b() {
        }

        @Override // androidx.activity.result.a.a
        public final /* synthetic */ Intent a(IntentSenderRequest intentSenderRequest) {
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
                        IntentSenderRequest.a aVar = new IntentSenderRequest.a(intentSenderRequest2.getIntentSender());
                        aVar.f541a = null;
                        intentSenderRequest3 = aVar.a(intentSenderRequest2.getFlagsValues(), intentSenderRequest2.getFlagsMask()).a();
                    }
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest3);
            if (FragmentManager.a(2)) {
                new StringBuilder("CreateIntent created the following intent: ").append(intent);
            }
            return intent;
        }

        @Override // androidx.activity.result.a.a
        public final /* synthetic */ ActivityResult a(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$c.class */
    public static abstract class c {
        public void a(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void a(FragmentManager fragmentManager, Fragment fragment, View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$d.class */
    public interface d {
        boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$e.class */
    final class e implements d {

        /* renamed from: a  reason: collision with root package name */
        final String f2207a;

        /* renamed from: b  reason: collision with root package name */
        final int f2208b;

        /* renamed from: c  reason: collision with root package name */
        final int f2209c;

        e(String str, int i, int i2) {
            this.f2207a = str;
            this.f2208b = i;
            this.f2209c = i2;
        }

        @Override // androidx.fragment.app.FragmentManager.d
        public final boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
            if (FragmentManager.this.o == null || this.f2208b >= 0 || this.f2207a != null || !FragmentManager.this.o.getChildFragmentManager().d()) {
                return FragmentManager.this.a(arrayList, arrayList2, this.f2207a, this.f2208b, this.f2209c);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentManager$f.class */
    public static final class f implements Fragment.c {

        /* renamed from: a  reason: collision with root package name */
        final boolean f2211a;

        /* renamed from: b  reason: collision with root package name */
        final androidx.fragment.app.a f2212b;

        /* renamed from: c  reason: collision with root package name */
        int f2213c;

        f(androidx.fragment.app.a aVar, boolean z) {
            this.f2211a = z;
            this.f2212b = aVar;
        }

        @Override // androidx.fragment.app.Fragment.c
        public final void a() {
            int i = this.f2213c - 1;
            this.f2213c = i;
            if (i == 0) {
                this.f2212b.f2222a.g();
            }
        }

        @Override // androidx.fragment.app.Fragment.c
        public final void b() {
            this.f2213c++;
        }

        final void c() {
            boolean z = this.f2213c > 0;
            for (Fragment fragment : this.f2212b.f2222a.f2186b.f()) {
                fragment.setOnStartEnterTransitionListener(null);
                if (z && fragment.isPostponed()) {
                    fragment.startPostponedEnterTransition();
                }
            }
            this.f2212b.f2222a.a(this.f2212b, this.f2211a, !z, true);
        }

        final void d() {
            this.f2212b.f2222a.a(this.f2212b, this.f2211a, false, false);
        }
    }

    private boolean A() {
        boolean z = false;
        for (Fragment fragment : this.f2186b.g()) {
            if (fragment != null) {
                z = w(fragment);
            }
            z = z;
            if (z) {
                return true;
            }
        }
        return false;
    }

    private int a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2, androidx.b.b<Fragment> bVar) {
        boolean z;
        boolean z2;
        int i3 = i2;
        for (int i4 = i2 - 1; i4 >= i; i4--) {
            androidx.fragment.app.a aVar = arrayList.get(i4);
            boolean booleanValue = arrayList2.get(i4).booleanValue();
            int i5 = 0;
            while (true) {
                z = true;
                if (i5 >= aVar.f2324d.size()) {
                    z2 = false;
                    break;
                } else if (androidx.fragment.app.a.a(aVar.f2324d.get(i5))) {
                    z2 = true;
                    break;
                } else {
                    i5++;
                }
            }
            if (!z2 || aVar.a(arrayList, i4 + 1, i2)) {
                z = false;
            }
            i3 = i3;
            if (z) {
                if (this.O == null) {
                    this.O = new ArrayList<>();
                }
                f fVar = new f(aVar, booleanValue);
                this.O.add(fVar);
                aVar.a(fVar);
                if (booleanValue) {
                    aVar.f();
                } else {
                    aVar.a(false);
                }
                i3--;
                if (i4 != i3) {
                    arrayList.remove(i4);
                    arrayList.add(i3, aVar);
                }
                b(bVar);
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Fragment a(View view) {
        Object tag = view.getTag(a.b.fragment_container_view_tag);
        if (tag instanceof Fragment) {
            return (Fragment) tag;
        }
        return null;
    }

    private Set<z> a(ArrayList<androidx.fragment.app.a> arrayList, int i, int i2) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            Iterator<s.a> it2 = arrayList.get(i).f2324d.iterator();
            while (it2.hasNext()) {
                Fragment fragment = it2.next().f2326b;
                if (!(fragment == null || (viewGroup = fragment.mContainer) == null)) {
                    hashSet.add(z.a(viewGroup, this));
                }
            }
            i++;
        }
        return hashSet;
    }

    private static void a(androidx.b.b<Fragment> bVar) {
        int size = bVar.size();
        for (int i = 0; i < size; i++) {
            Fragment fragment = (Fragment) bVar.f1160a[i];
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(androidx.fragment.app.Fragment r7, int r8) {
        /*
            Method dump skipped, instructions count: 733
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.FragmentManager.a(androidx.fragment.app.Fragment, int):void");
    }

    private void a(m mVar) {
        this.E.add(mVar);
    }

    private void a(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new y("FragmentManager"));
        h<?> hVar = this.l;
        if (hVar != null) {
            try {
                hVar.a("  ", printWriter, new String[0]);
            } catch (Exception e2) {
                Log.e("FragmentManager", "Failed dumping state", e2);
            }
        } else {
            try {
                a("  ", (FileDescriptor) null, printWriter, new String[0]);
            } catch (Exception e3) {
                Log.e("FragmentManager", "Failed dumping state", e3);
            }
        }
        throw runtimeException;
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        int i;
        int indexOf;
        int indexOf2;
        ArrayList<f> arrayList3 = this.O;
        int size = arrayList3 == null ? 0 : arrayList3.size();
        int i2 = 0;
        while (i2 < size) {
            f fVar = this.O.get(i2);
            if (arrayList == null || fVar.f2211a || (indexOf2 = arrayList.indexOf(fVar.f2212b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf2).booleanValue()) {
                if (!(fVar.f2213c == 0)) {
                    size = size;
                    i = i2;
                    if (arrayList != null) {
                        size = size;
                        i = i2;
                        if (!fVar.f2212b.a(arrayList, 0, arrayList.size())) {
                        }
                    }
                }
                this.O.remove(i2);
                i = i2 - 1;
                size--;
                if (arrayList == null || fVar.f2211a || (indexOf = arrayList.indexOf(fVar.f2212b)) == -1 || arrayList2 == null || !arrayList2.get(indexOf).booleanValue()) {
                    fVar.c();
                } else {
                    fVar.d();
                }
            } else {
                this.O.remove(i2);
                i = i2 - 1;
                size--;
                fVar.d();
            }
            i2 = i + 1;
        }
    }

    private void a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        int i3;
        boolean z = arrayList.get(i).s;
        ArrayList<Fragment> arrayList3 = this.N;
        if (arrayList3 == null) {
            this.N = new ArrayList<>();
        } else {
            arrayList3.clear();
        }
        this.N.addAll(this.f2186b.f());
        Fragment fragment = this.o;
        boolean z2 = false;
        for (int i4 = i; i4 < i2; i4++) {
            androidx.fragment.app.a aVar = arrayList.get(i4);
            fragment = !arrayList2.get(i4).booleanValue() ? aVar.a(this.N, fragment) : aVar.b(this.N, fragment);
            z2 = z2 || aVar.j;
        }
        this.N.clear();
        if (!z && this.k > 0) {
            if (f2185a) {
                for (int i5 = i; i5 < i2; i5++) {
                    Iterator<s.a> it2 = arrayList.get(i5).f2324d.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment2 = it2.next().f2326b;
                        if (!(fragment2 == null || fragment2.mFragmentManager == null)) {
                            this.f2186b.a(g(fragment2));
                        }
                    }
                }
            } else {
                t.a(this.l.f2291c, this.m, arrayList, arrayList2, i, i2, false, this.D);
            }
        }
        b(arrayList, arrayList2, i, i2);
        if (f2185a) {
            boolean booleanValue = arrayList2.get(i2 - 1).booleanValue();
            for (int i6 = i; i6 < i2; i6++) {
                androidx.fragment.app.a aVar2 = arrayList.get(i6);
                if (booleanValue) {
                    for (int size = aVar2.f2324d.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = aVar2.f2324d.get(size).f2326b;
                        if (fragment3 != null) {
                            g(fragment3).b();
                        }
                    }
                } else {
                    Iterator<s.a> it3 = aVar2.f2324d.iterator();
                    while (it3.hasNext()) {
                        Fragment fragment4 = it3.next().f2326b;
                        if (fragment4 != null) {
                            g(fragment4).b();
                        }
                    }
                }
            }
            a(this.k, true);
            for (z zVar : a(arrayList, i, i2)) {
                zVar.f2391c = booleanValue;
                zVar.b();
                zVar.d();
            }
        } else {
            if (z) {
                androidx.b.b<Fragment> bVar = new androidx.b.b<>();
                b(bVar);
                i3 = a(arrayList, arrayList2, i, i2, bVar);
                a(bVar);
            } else {
                i3 = i2;
            }
            if (i3 == i || !z) {
                arrayList2 = arrayList2;
            } else {
                if (this.k > 0) {
                    t.a(this.l.f2291c, this.m, arrayList, arrayList2, i, i3, true, this.D);
                }
                arrayList2 = arrayList2;
                a(this.k, true);
            }
        }
        while (i < i2) {
            androidx.fragment.app.a aVar3 = arrayList.get(i);
            if (arrayList2.get(i).booleanValue() && aVar3.f2224c >= 0) {
                aVar3.f2224c = -1;
            }
            aVar3.a();
            i++;
        }
        if (z2) {
            z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(int i) {
        return x || Log.isLoggable("FragmentManager", i);
    }

    private void b(androidx.b.b<Fragment> bVar) {
        int i = this.k;
        if (i > 0) {
            int min = Math.min(i, 5);
            for (Fragment fragment : this.f2186b.f()) {
                if (fragment.mState < min) {
                    a(fragment, min);
                    if (fragment.mView != null && !fragment.mHidden && fragment.mIsNewlyAdded) {
                        bVar.add(fragment);
                    }
                }
            }
        }
    }

    private void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        if (!arrayList.isEmpty()) {
            if (arrayList.size() == arrayList2.size()) {
                a(arrayList, arrayList2);
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i < size) {
                    int i3 = i;
                    i2 = i2;
                    if (!arrayList.get(i).s) {
                        if (i2 != i) {
                            a(arrayList, arrayList2, i2, i);
                        }
                        int i4 = i + 1;
                        i2 = i4;
                        if (arrayList2.get(i).booleanValue()) {
                            while (true) {
                                i2 = i4;
                                if (i4 >= size) {
                                    break;
                                }
                                i2 = i4;
                                if (!arrayList2.get(i4).booleanValue()) {
                                    break;
                                }
                                i2 = i4;
                                if (arrayList.get(i4).s) {
                                    break;
                                }
                                i4++;
                            }
                        }
                        a(arrayList, arrayList2, i, i2);
                        i3 = i2 - 1;
                    }
                    i = i3 + 1;
                }
                if (i2 != size) {
                    a(arrayList, arrayList2, i2, size);
                    return;
                }
                return;
            }
            throw new IllegalStateException("Internal error with the back stack records");
        }
    }

    private static void b(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, int i, int i2) {
        while (i < i2) {
            androidx.fragment.app.a aVar = arrayList.get(i);
            boolean z = true;
            if (arrayList2.get(i).booleanValue()) {
                aVar.a(-1);
                if (i != i2 - 1) {
                    z = false;
                }
                aVar.a(z);
            } else {
                aVar.a(1);
                aVar.f();
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        return fragment.isMenuVisible();
    }

    private boolean c(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2) {
        synchronized (this.y) {
            if (this.y.isEmpty()) {
                return false;
            }
            int size = this.y.size();
            boolean z = false;
            for (int i = 0; i < size; i++) {
                z |= this.y.get(i).a(arrayList, arrayList2);
            }
            this.y.clear();
            this.l.f2292d.removeCallbacks(this.P);
            return z;
        }
    }

    private void d(boolean z) {
        if (this.z) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        } else if (this.l == null) {
            if (this.v) {
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            throw new IllegalStateException("FragmentManager has not been attached to a host.");
        } else if (Looper.myLooper() == this.l.f2292d.getLooper()) {
            if (!z) {
                t();
            }
            if (this.L == null) {
                this.L = new ArrayList<>();
                this.M = new ArrayList<>();
            }
            this.z = true;
            try {
                a((ArrayList<androidx.fragment.app.a>) null, (ArrayList<Boolean>) null);
            } finally {
                this.z = false;
            }
        } else {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(int i) {
        int i2 = 8194;
        if (i != 4097) {
            i2 = i != 4099 ? i != 8194 ? 0 : 4097 : 4099;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(Fragment fragment) {
        if (a(2)) {
            new StringBuilder("show: ").append(fragment);
        }
        if (fragment.mHidden) {
            fragment.mHidden = false;
            fragment.mHiddenChanged = !fragment.mHiddenChanged;
        }
    }

    private l r(Fragment fragment) {
        l lVar = this.w;
        l lVar2 = lVar.f2300a.get(fragment.mWho);
        l lVar3 = lVar2;
        if (lVar2 == null) {
            lVar3 = new l(lVar.f2302c);
            lVar.f2300a.put(fragment.mWho, lVar3);
        }
        return lVar3;
    }

    private void s() {
        for (p pVar : this.f2186b.e()) {
            a(pVar);
        }
    }

    private void s(Fragment fragment) {
        HashSet<androidx.core.os.a> hashSet = this.i.get(fragment);
        if (hashSet != null) {
            Iterator<androidx.core.os.a> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
            hashSet.clear();
            d(fragment);
            this.i.remove(fragment);
        }
    }

    private void t() {
        if (f()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private void t(final Fragment fragment) {
        if (fragment.mView != null) {
            d.a a2 = androidx.fragment.app.d.a(this.l.f2291c, fragment, !fragment.mHidden, fragment.getPopDirection());
            if (a2 == null || a2.f2282b == null) {
                if (a2 != null) {
                    fragment.mView.startAnimation(a2.f2281a);
                    a2.f2281a.start();
                }
                fragment.mView.setVisibility((!fragment.mHidden || fragment.isHideReplaced()) ? 0 : 8);
                if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                }
            } else {
                a2.f2282b.setTarget(fragment.mView);
                if (!fragment.mHidden) {
                    fragment.mView.setVisibility(0);
                } else if (fragment.isHideReplaced()) {
                    fragment.setHideReplaced(false);
                } else {
                    final ViewGroup viewGroup = fragment.mContainer;
                    final View view = fragment.mView;
                    viewGroup.startViewTransition(view);
                    a2.f2282b.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.FragmentManager.9
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            viewGroup.endViewTransition(view);
                            animator.removeListener(this);
                            if (fragment.mView != null && fragment.mHidden) {
                                fragment.mView.setVisibility(8);
                            }
                        }
                    });
                }
                a2.f2282b.start();
            }
        }
        q(fragment);
        fragment.mHiddenChanged = false;
        fragment.onHiddenChanged(fragment.mHidden);
    }

    private void u() {
        this.z = false;
        this.M.clear();
        this.L.clear();
    }

    private void u(Fragment fragment) {
        ViewGroup v = v(fragment);
        if (v != null && fragment.getEnterAnim() + fragment.getExitAnim() + fragment.getPopEnterAnim() + fragment.getPopExitAnim() > 0) {
            if (v.getTag(a.b.visible_removing_fragment_view_tag) == null) {
                v.setTag(a.b.visible_removing_fragment_view_tag, fragment);
            }
            ((Fragment) v.getTag(a.b.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
        }
    }

    private ViewGroup v(Fragment fragment) {
        if (fragment.mContainer != null) {
            return fragment.mContainer;
        }
        if (fragment.mContainerId <= 0 || !this.m.a()) {
            return null;
        }
        View a2 = this.m.a(fragment.mContainerId);
        if (a2 instanceof ViewGroup) {
            return (ViewGroup) a2;
        }
        return null;
    }

    private void v() {
        if (f2185a) {
            for (z zVar : x()) {
                zVar.c();
            }
        } else if (this.O != null) {
            while (!this.O.isEmpty()) {
                this.O.remove(0).c();
            }
        }
    }

    private void w() {
        if (f2185a) {
            for (z zVar : x()) {
                zVar.e();
            }
        } else if (!this.i.isEmpty()) {
            for (Fragment fragment : this.i.keySet()) {
                s(fragment);
                e(fragment);
            }
        }
    }

    private static boolean w(Fragment fragment) {
        return (fragment.mHasMenu && fragment.mMenuVisible) || fragment.mChildFragmentManager.A();
    }

    private Set<z> x() {
        HashSet hashSet = new HashSet();
        for (p pVar : this.f2186b.e()) {
            ViewGroup viewGroup = pVar.f2308a.mContainer;
            if (viewGroup != null) {
                hashSet.add(z.a(viewGroup, r()));
            }
        }
        return hashSet;
    }

    private void y() {
        if (this.K) {
            this.K = false;
            s();
        }
    }

    private void z() {
        if (this.C != null) {
            for (int i = 0; i < this.C.size(); i++) {
                this.C.get(i);
            }
        }
    }

    public final Fragment a(Bundle bundle, String str) {
        String string = bundle.getString(str);
        if (string == null) {
            return null;
        }
        Fragment b2 = b(string);
        if (b2 == null) {
            a(new IllegalStateException("Fragment no longer exists for key " + str + ": unique id " + string));
        }
        return b2;
    }

    public final Fragment a(String str) {
        return this.f2186b.a(str);
    }

    public final s a() {
        return new androidx.fragment.app.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(int i, boolean z) {
        h<?> hVar;
        if (this.l == null && i != -1) {
            throw new IllegalStateException("No activity");
        } else if (z || i != this.k) {
            this.k = i;
            if (f2185a) {
                this.f2186b.a();
            } else {
                for (Fragment fragment : this.f2186b.f()) {
                    f(fragment);
                }
                for (p pVar : this.f2186b.e()) {
                    Fragment fragment2 = pVar.f2308a;
                    if (!fragment2.mIsNewlyAdded) {
                        f(fragment2);
                    }
                    if (fragment2.mRemoving && !fragment2.isInBackStack()) {
                        this.f2186b.b(pVar);
                    }
                }
            }
            s();
            if (this.J && (hVar = this.l) != null && this.k == 7) {
                hVar.d();
                this.J = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Configuration configuration) {
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
            }
        }
    }

    public final void a(Bundle bundle, String str, Fragment fragment) {
        if (fragment.mFragmentManager != this) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        bundle.putString(str, fragment.mWho);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Parcelable parcelable) {
        p pVar;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.mActive != null) {
                this.f2186b.f2319a.clear();
                Iterator<FragmentState> it2 = fragmentManagerState.mActive.iterator();
                while (it2.hasNext()) {
                    FragmentState next = it2.next();
                    if (next != null) {
                        Fragment a2 = this.w.a(next.mWho);
                        if (a2 != null) {
                            if (a(2)) {
                                new StringBuilder("restoreSaveState: re-attaching retained ").append(a2);
                            }
                            pVar = new p(this.j, this.f2186b, a2, next);
                        } else {
                            pVar = new p(this.j, this.f2186b, this.l.f2291c.getClassLoader(), q(), next);
                        }
                        Fragment fragment = pVar.f2308a;
                        fragment.mFragmentManager = this;
                        if (a(2)) {
                            StringBuilder sb = new StringBuilder("restoreSaveState: active (");
                            sb.append(fragment.mWho);
                            sb.append("): ");
                            sb.append(fragment);
                        }
                        pVar.a(this.l.f2291c.getClassLoader());
                        this.f2186b.a(pVar);
                        pVar.f2309b = this.k;
                    }
                }
                for (Fragment fragment2 : this.w.b()) {
                    if (!this.f2186b.b(fragment2.mWho)) {
                        if (a(2)) {
                            StringBuilder sb2 = new StringBuilder("Discarding retained Fragment ");
                            sb2.append(fragment2);
                            sb2.append(" that was not found in the set of active Fragments ");
                            sb2.append(fragmentManagerState.mActive);
                        }
                        this.w.c(fragment2);
                        fragment2.mFragmentManager = this;
                        p pVar2 = new p(this.j, this.f2186b, fragment2);
                        pVar2.f2309b = 1;
                        pVar2.b();
                        fragment2.mRemoving = true;
                        pVar2.b();
                    }
                }
                this.f2186b.a(fragmentManagerState.mAdded);
                if (fragmentManagerState.mBackStack != null) {
                    this.f2187c = new ArrayList<>(fragmentManagerState.mBackStack.length);
                    for (int i = 0; i < fragmentManagerState.mBackStack.length; i++) {
                        androidx.fragment.app.a instantiate = fragmentManagerState.mBackStack[i].instantiate(this);
                        if (a(2)) {
                            StringBuilder sb3 = new StringBuilder("restoreAllState: back stack #");
                            sb3.append(i);
                            sb3.append(" (index ");
                            sb3.append(instantiate.f2224c);
                            sb3.append("): ");
                            sb3.append(instantiate);
                            PrintWriter printWriter = new PrintWriter(new y("FragmentManager"));
                            instantiate.a("  ", printWriter, false);
                            printWriter.close();
                        }
                        this.f2187c.add(instantiate);
                    }
                } else {
                    this.f2187c = null;
                }
                this.g.set(fragmentManagerState.mBackStackIndex);
                if (fragmentManagerState.mPrimaryNavActiveWho != null) {
                    Fragment b2 = b(fragmentManagerState.mPrimaryNavActiveWho);
                    this.o = b2;
                    o(b2);
                }
                ArrayList<String> arrayList = fragmentManagerState.mResultKeys;
                if (arrayList != null) {
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        this.h.put(arrayList.get(i2), fragmentManagerState.mResults.get(i2));
                    }
                }
                this.s = new ArrayDeque<>(fragmentManagerState.mLaunchedFragments);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment, j.b bVar) {
        if (!fragment.equals(b(fragment.mWho)) || !(fragment.mHost == null || fragment.mFragmentManager == this)) {
            throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
        }
        fragment.mMaxState = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Fragment fragment, boolean z) {
        ViewGroup v = v(fragment);
        if (v != null && (v instanceof FragmentContainerView)) {
            ((FragmentContainerView) v).f2181a = !z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(FragmentContainerView fragmentContainerView) {
        for (p pVar : this.f2186b.e()) {
            Fragment fragment = pVar.f2308a;
            if (fragment.mContainerId == fragmentContainerView.getId() && fragment.mView != null && fragment.mView.getParent() == null) {
                fragment.mContainer = fragmentContainerView;
                pVar.r();
            }
        }
    }

    public final void a(c cVar, boolean z) {
        this.j.f2296a.add(new j.a(cVar, z));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(d dVar, boolean z) {
        if (!z) {
            if (this.l != null) {
                t();
            } else if (this.v) {
                throw new IllegalStateException("FragmentManager has been destroyed");
            } else {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
        }
        synchronized (this.y) {
            if (this.l != null) {
                this.y.add(dVar);
                g();
            } else if (!z) {
                throw new IllegalStateException("Activity has been destroyed");
            }
        }
    }

    final void a(androidx.fragment.app.a aVar, boolean z, boolean z2, boolean z3) {
        if (z) {
            aVar.a(z3);
        } else {
            aVar.f();
        }
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        arrayList.add(aVar);
        arrayList2.add(Boolean.valueOf(z));
        if (z2 && this.k > 0) {
            t.a(this.l.f2291c, this.m, arrayList, arrayList2, 0, 1, true, this.D);
        }
        if (z3) {
            a(this.k, true);
        }
        for (Fragment fragment : this.f2186b.g()) {
            if (fragment != null && fragment.mView != null && fragment.mIsNewlyAdded && aVar.b(fragment.mContainerId)) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(h<?> hVar, androidx.fragment.app.e eVar, final Fragment fragment) {
        String str;
        if (this.l == null) {
            this.l = hVar;
            this.m = eVar;
            this.n = fragment;
            if (fragment != null) {
                a(new m() { // from class: androidx.fragment.app.FragmentManager.10
                    @Override // androidx.fragment.app.m
                    public final void a(Fragment fragment2) {
                        fragment.onAttachFragment(fragment2);
                    }
                });
            } else if (hVar instanceof m) {
                a((m) hVar);
            }
            if (this.n != null) {
                c();
            }
            if (hVar instanceof androidx.activity.c) {
                androidx.activity.c cVar = (androidx.activity.c) hVar;
                OnBackPressedDispatcher onBackPressedDispatcher = cVar.getOnBackPressedDispatcher();
                this.e = onBackPressedDispatcher;
                p pVar = cVar;
                if (fragment != null) {
                    pVar = fragment;
                }
                onBackPressedDispatcher.a(pVar, this.f);
            }
            if (fragment != null) {
                this.w = fragment.mFragmentManager.r(fragment);
            } else if (hVar instanceof ad) {
                this.w = l.a(((ad) hVar).getViewModelStore());
            } else {
                this.w = new l(false);
            }
            this.w.e = f();
            this.f2186b.f2320b = this.w;
            h<?> hVar2 = this.l;
            if (hVar2 instanceof androidx.activity.result.d) {
                androidx.activity.result.c activityResultRegistry = ((androidx.activity.result.d) hVar2).getActivityResultRegistry();
                if (fragment != null) {
                    str = fragment.mWho + ":";
                } else {
                    str = "";
                }
                String concat = "FragmentManager:".concat(String.valueOf(str));
                this.p = activityResultRegistry.a(concat + "StartActivityForResult", new b.C0017b(), new androidx.activity.result.a<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.11
                    @Override // androidx.activity.result.a
                    public final /* synthetic */ void a(ActivityResult activityResult) {
                        ActivityResult activityResult2 = activityResult;
                        LaunchedFragmentInfo pollFirst = FragmentManager.this.s.pollFirst();
                        if (pollFirst == null) {
                            Log.w("FragmentManager", "No Activities were started for result for ".concat(String.valueOf(this)));
                            return;
                        }
                        String str2 = pollFirst.mWho;
                        int i = pollFirst.mRequestCode;
                        Fragment d2 = FragmentManager.this.f2186b.d(str2);
                        if (d2 == null) {
                            Log.w("FragmentManager", "Activity result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                        } else {
                            d2.onActivityResult(i, activityResult2.getResultCode(), activityResult2.getData());
                        }
                    }
                });
                this.q = activityResultRegistry.a(concat + "StartIntentSenderForResult", new b(), new androidx.activity.result.a<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.2
                    @Override // androidx.activity.result.a
                    public final /* synthetic */ void a(ActivityResult activityResult) {
                        ActivityResult activityResult2 = activityResult;
                        LaunchedFragmentInfo pollFirst = FragmentManager.this.s.pollFirst();
                        if (pollFirst == null) {
                            Log.w("FragmentManager", "No IntentSenders were started for ".concat(String.valueOf(this)));
                            return;
                        }
                        String str2 = pollFirst.mWho;
                        int i = pollFirst.mRequestCode;
                        Fragment d2 = FragmentManager.this.f2186b.d(str2);
                        if (d2 == null) {
                            Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                        } else {
                            d2.onActivityResult(i, activityResult2.getResultCode(), activityResult2.getData());
                        }
                    }
                });
                this.r = activityResultRegistry.a(concat + "RequestPermissions", new b.a(), new androidx.activity.result.a<Map<String, Boolean>>() { // from class: androidx.fragment.app.FragmentManager.3
                    @Override // androidx.activity.result.a
                    public final /* synthetic */ void a(Map<String, Boolean> map) {
                        Map<String, Boolean> map2 = map;
                        String[] strArr = (String[]) map2.keySet().toArray(new String[0]);
                        ArrayList arrayList = new ArrayList(map2.values());
                        int[] iArr = new int[arrayList.size()];
                        for (int i = 0; i < arrayList.size(); i++) {
                            iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
                        }
                        LaunchedFragmentInfo pollFirst = FragmentManager.this.s.pollFirst();
                        if (pollFirst == null) {
                            Log.w("FragmentManager", "No permissions were requested for ".concat(String.valueOf(this)));
                            return;
                        }
                        String str2 = pollFirst.mWho;
                        int i2 = pollFirst.mRequestCode;
                        Fragment d2 = FragmentManager.this.f2186b.d(str2);
                        if (d2 == null) {
                            Log.w("FragmentManager", "Permission request result delivered for unknown Fragment ".concat(String.valueOf(str2)));
                        } else {
                            d2.onRequestPermissionsResult(i2, strArr, iArr);
                        }
                    }
                });
                return;
            }
            return;
        }
        throw new IllegalStateException("Already attached");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(p pVar) {
        Fragment fragment = pVar.f2308a;
        if (!fragment.mDeferStart) {
            return;
        }
        if (this.z) {
            this.K = true;
            return;
        }
        fragment.mDeferStart = false;
        if (f2185a) {
            pVar.b();
        } else {
            e(fragment);
        }
    }

    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String str2 = str + "    ";
        this.f2186b.a(str, fileDescriptor, printWriter, strArr);
        ArrayList<Fragment> arrayList = this.A;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i = 0; i < size2; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(this.A.get(i).toString());
            }
        }
        ArrayList<androidx.fragment.app.a> arrayList2 = this.f2187c;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i2 = 0; i2 < size; i2++) {
                androidx.fragment.app.a aVar = this.f2187c.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(aVar.toString());
                aVar.a(str2, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.g.get());
        synchronized (this.y) {
            int size3 = this.y.size();
            if (size3 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i3 = 0; i3 < size3; i3++) {
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i3);
                    printWriter.print(": ");
                    printWriter.println(this.y.get(i3));
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.l);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.m);
        if (this.n != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.n);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.k);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.t);
        printWriter.print(" mStopped=");
        printWriter.print(this.u);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.v);
        if (this.J) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.J);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Menu menu) {
        boolean z = false;
        if (this.k <= 0) {
            return false;
        }
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null && b(fragment) && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Menu menu, MenuInflater menuInflater) {
        if (this.k <= 0) {
            return false;
        }
        ArrayList<Fragment> arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null && b(fragment) && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                ArrayList<Fragment> arrayList2 = arrayList;
                if (arrayList == null) {
                    arrayList2 = new ArrayList<>();
                }
                arrayList2.add(fragment);
                z = true;
                arrayList = arrayList2;
            }
        }
        if (this.A != null) {
            for (int i = 0; i < this.A.size(); i++) {
                Fragment fragment2 = this.A.get(i);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.A = arrayList;
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(MenuItem menuItem) {
        if (this.k <= 0) {
            return false;
        }
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.o) && a(fragmentManager.n);
    }

    final boolean a(ArrayList<androidx.fragment.app.a> arrayList, ArrayList<Boolean> arrayList2, String str, int i, int i2) {
        int i3;
        ArrayList<androidx.fragment.app.a> arrayList3 = this.f2187c;
        if (arrayList3 == null) {
            return false;
        }
        if (str == null && i < 0 && (i2 & 1) == 0) {
            int size = arrayList3.size() - 1;
            if (size < 0) {
                return false;
            }
            arrayList.add(this.f2187c.remove(size));
            arrayList2.add(Boolean.TRUE);
            return true;
        }
        if (str != null || i >= 0) {
            int size2 = arrayList3.size() - 1;
            while (size2 >= 0) {
                androidx.fragment.app.a aVar = this.f2187c.get(size2);
                if ((str != null && str.equals(aVar.l)) || (i >= 0 && i == aVar.f2224c)) {
                    break;
                }
                size2--;
            }
            if (size2 < 0) {
                return false;
            }
            i3 = size2;
            if ((i2 & 1) != 0) {
                while (true) {
                    int i4 = size2 - 1;
                    i3 = i4;
                    if (i4 < 0) {
                        break;
                    }
                    androidx.fragment.app.a aVar2 = this.f2187c.get(i4);
                    if (str != null) {
                        size2 = i4;
                        if (str.equals(aVar2.l)) {
                            continue;
                        }
                    }
                    i3 = i4;
                    if (i < 0) {
                        break;
                    }
                    i3 = i4;
                    if (i != aVar2.f2224c) {
                        break;
                    }
                    size2 = i4;
                }
            }
        } else {
            i3 = -1;
        }
        if (i3 == this.f2187c.size() - 1) {
            return false;
        }
        for (int size3 = this.f2187c.size() - 1; size3 > i3; size3--) {
            arrayList.add(this.f2187c.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final boolean a(boolean z) {
        d(z);
        boolean z2 = false;
        while (c(this.L, this.M)) {
            this.z = true;
            try {
                b(this.L, this.M);
                u();
                z2 = true;
            } catch (Throwable th) {
                u();
                throw th;
            }
        }
        c();
        y();
        this.f2186b.b();
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Fragment b(String str) {
        return this.f2186b.e(str);
    }

    public final void b(int i) {
        if (i >= 0) {
            a((d) new e(null, i, 1), false);
            return;
        }
        throw new IllegalArgumentException("Bad id: ".concat(String.valueOf(i)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(Menu menu) {
        if (this.k > 0) {
            for (Fragment fragment : this.f2186b.f()) {
                if (fragment != null) {
                    fragment.performOptionsMenuClosed(menu);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(d dVar, boolean z) {
        if (!z || (this.l != null && !this.v)) {
            d(z);
            if (dVar.a(this.L, this.M)) {
                this.z = true;
                try {
                    b(this.L, this.M);
                } finally {
                    u();
                }
            }
            c();
            y();
            this.f2186b.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(boolean z) {
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
            }
        }
    }

    public final boolean b() {
        boolean a2 = a(true);
        v();
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(MenuItem menuItem) {
        if (this.k <= 0) {
            return false;
        }
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final Fragment.SavedState c(Fragment fragment) {
        Bundle m;
        p c2 = this.f2186b.c(fragment.mWho);
        if (c2 == null || !c2.f2308a.equals(fragment)) {
            a(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        }
        if (c2.f2308a.mState < 0 || (m = c2.m()) == null) {
            return null;
        }
        return new Fragment.SavedState(m);
    }

    public final Fragment c(int i) {
        return this.f2186b.b(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        synchronized (this.y) {
            boolean z = true;
            if (!this.y.isEmpty()) {
                this.f.f535a = true;
                return;
            }
            androidx.activity.b bVar = this.f;
            if (e() <= 0 || !a(this.n)) {
                z = false;
            }
            bVar.f535a = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(boolean z) {
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Finally extract failed */
    public final void d(int i) {
        try {
            this.z = true;
            this.f2186b.a(i);
            a(i, false);
            if (f2185a) {
                for (z zVar : x()) {
                    zVar.e();
                }
            }
            this.z = false;
            a(true);
        } catch (Throwable th) {
            this.z = false;
            throw th;
        }
    }

    final void d(Fragment fragment) {
        fragment.performDestroyView();
        this.j.a(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.b((androidx.lifecycle.t<p>) null);
        fragment.mInLayout = false;
    }

    final boolean d() {
        a(false);
        d(true);
        Fragment fragment = this.o;
        if (fragment != null && fragment.getChildFragmentManager().d()) {
            return true;
        }
        boolean a2 = a(this.L, this.M, (String) null, -1, 0);
        if (a2) {
            this.z = true;
            try {
                b(this.L, this.M);
            } finally {
                u();
            }
        }
        c();
        y();
        this.f2186b.b();
        return a2;
    }

    public final int e() {
        ArrayList<androidx.fragment.app.a> arrayList = this.f2187c;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(Fragment fragment) {
        a(fragment, this.k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(Fragment fragment) {
        if (this.f2186b.b(fragment.mWho)) {
            e(fragment);
            if (!(fragment.mView == null || !fragment.mIsNewlyAdded || fragment.mContainer == null)) {
                if (fragment.mPostponedAlpha > BitmapDescriptorFactory.HUE_RED) {
                    fragment.mView.setAlpha(fragment.mPostponedAlpha);
                }
                fragment.mPostponedAlpha = BitmapDescriptorFactory.HUE_RED;
                fragment.mIsNewlyAdded = false;
                d.a a2 = androidx.fragment.app.d.a(this.l.f2291c, fragment, true, fragment.getPopDirection());
                if (a2 != null) {
                    if (a2.f2281a != null) {
                        fragment.mView.startAnimation(a2.f2281a);
                    } else {
                        a2.f2282b.setTarget(fragment.mView);
                        a2.f2282b.start();
                    }
                }
            }
            if (fragment.mHiddenChanged) {
                t(fragment);
            }
        } else if (a(3)) {
            StringBuilder sb = new StringBuilder("Ignoring moving ");
            sb.append(fragment);
            sb.append(" to state ");
            sb.append(this.k);
            sb.append("since it is not added to ");
            sb.append(this);
        }
    }

    public final boolean f() {
        return this.t || this.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p g(Fragment fragment) {
        p c2 = this.f2186b.c(fragment.mWho);
        if (c2 != null) {
            return c2;
        }
        p pVar = new p(this.j, this.f2186b, fragment);
        pVar.a(this.l.f2291c.getClassLoader());
        pVar.f2309b = this.k;
        return pVar;
    }

    final void g() {
        synchronized (this.y) {
            ArrayList<f> arrayList = this.O;
            boolean z = false;
            boolean z2 = arrayList != null && !arrayList.isEmpty();
            if (this.y.size() == 1) {
                z = true;
            }
            if (z2 || z) {
                this.l.f2292d.removeCallbacks(this.P);
                this.l.f2292d.post(this.P);
                c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Parcelable h() {
        v();
        w();
        a(true);
        this.t = true;
        this.w.e = true;
        ArrayList<FragmentState> c2 = this.f2186b.c();
        if (c2.isEmpty()) {
            a(2);
            return null;
        }
        ArrayList<String> d2 = this.f2186b.d();
        ArrayList<androidx.fragment.app.a> arrayList = this.f2187c;
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
                    backStackStateArr2[i] = new BackStackState(this.f2187c.get(i));
                    if (a(2)) {
                        StringBuilder sb = new StringBuilder("saveAllState: adding back stack #");
                        sb.append(i);
                        sb.append(": ");
                        sb.append(this.f2187c.get(i));
                    }
                    i++;
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.mActive = c2;
        fragmentManagerState.mAdded = d2;
        fragmentManagerState.mBackStack = backStackStateArr;
        fragmentManagerState.mBackStackIndex = this.g.get();
        Fragment fragment = this.o;
        if (fragment != null) {
            fragmentManagerState.mPrimaryNavActiveWho = fragment.mWho;
        }
        fragmentManagerState.mResultKeys.addAll(this.h.keySet());
        fragmentManagerState.mResults.addAll(this.h.values());
        fragmentManagerState.mLaunchedFragments = new ArrayList<>(this.s);
        return fragmentManagerState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p h(Fragment fragment) {
        if (a(2)) {
            new StringBuilder("add: ").append(fragment);
        }
        p g = g(fragment);
        fragment.mFragmentManager = this;
        this.f2186b.a(g);
        if (!fragment.mDetached) {
            this.f2186b.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (w(fragment)) {
                this.J = true;
            }
        }
        return g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        if (this.l != null) {
            this.t = false;
            this.u = false;
            this.w.e = false;
            for (Fragment fragment : this.f2186b.f()) {
                if (fragment != null) {
                    fragment.noteStateNotSaved();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(Fragment fragment) {
        if (a(2)) {
            StringBuilder sb = new StringBuilder("remove: ");
            sb.append(fragment);
            sb.append(" nesting=");
            sb.append(fragment.mBackStackNesting);
        }
        boolean isInBackStack = fragment.isInBackStack();
        if (!fragment.mDetached || (!isInBackStack)) {
            this.f2186b.b(fragment);
            if (w(fragment)) {
                this.J = true;
            }
            fragment.mRemoving = true;
            u(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j() {
        this.t = false;
        this.u = false;
        this.w.e = false;
        d(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(Fragment fragment) {
        if (a(2)) {
            new StringBuilder("hide: ").append(fragment);
        }
        if (!fragment.mHidden) {
            fragment.mHidden = true;
            fragment.mHiddenChanged = true ^ fragment.mHiddenChanged;
            u(fragment);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.t = false;
        this.u = false;
        this.w.e = false;
        d(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        this.t = false;
        this.u = false;
        this.w.e = false;
        d(5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(Fragment fragment) {
        if (a(2)) {
            new StringBuilder("detach: ").append(fragment);
        }
        if (!fragment.mDetached) {
            fragment.mDetached = true;
            if (fragment.mAdded) {
                if (a(2)) {
                    new StringBuilder("remove from detach: ").append(fragment);
                }
                this.f2186b.b(fragment);
                if (w(fragment)) {
                    this.J = true;
                }
                u(fragment);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m() {
        this.t = false;
        this.u = false;
        this.w.e = false;
        d(7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(Fragment fragment) {
        if (a(2)) {
            new StringBuilder("attach: ").append(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (!fragment.mAdded) {
                this.f2186b.a(fragment);
                if (a(2)) {
                    new StringBuilder("add from attach: ").append(fragment);
                }
                if (w(fragment)) {
                    this.J = true;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n() {
        this.u = true;
        this.w.e = true;
        d(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n(Fragment fragment) {
        if (fragment == null || (fragment.equals(b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this))) {
            Fragment fragment2 = this.o;
            this.o = fragment;
            o(fragment2);
            o(this.o);
            return;
        }
        throw new IllegalArgumentException("Fragment " + fragment + " is not an active fragment of FragmentManager " + this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o() {
        this.v = true;
        a(true);
        w();
        d(-1);
        this.l = null;
        this.m = null;
        this.n = null;
        if (this.e != null) {
            this.f.a();
            this.e = null;
        }
        androidx.activity.result.b<Intent> bVar = this.p;
        if (bVar != null) {
            bVar.a();
            this.q.a();
            this.r.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(Fragment fragment) {
        if (fragment != null && fragment.equals(b(fragment.mWho))) {
            fragment.performPrimaryNavigationFragmentChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p() {
        for (Fragment fragment : this.f2186b.f()) {
            if (fragment != null) {
                fragment.performLowMemory();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p(Fragment fragment) {
        Iterator<m> it2 = this.E.iterator();
        while (it2.hasNext()) {
            it2.next().a(fragment);
        }
    }

    public final g q() {
        FragmentManager fragmentManager = this;
        while (true) {
            g gVar = fragmentManager.F;
            if (gVar != null) {
                return gVar;
            }
            Fragment fragment = fragmentManager.n;
            if (fragment == null) {
                return fragmentManager.G;
            }
            fragmentManager = fragment.mFragmentManager;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q(Fragment fragment) {
        if (fragment.mAdded && w(fragment)) {
            this.J = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aa r() {
        FragmentManager fragmentManager = this;
        while (true) {
            aa aaVar = fragmentManager.H;
            if (aaVar != null) {
                return aaVar;
            }
            Fragment fragment = fragmentManager.n;
            if (fragment == null) {
                return fragmentManager.I;
            }
            fragmentManager = fragment.mFragmentManager;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.n;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.n)));
            sb.append("}");
        } else {
            h<?> hVar = this.l;
            if (hVar != null) {
                sb.append(hVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.l)));
                sb.append("}");
            } else {
                sb.append(JsonReaderKt.NULL);
            }
        }
        sb.append("}}");
        return sb.toString();
    }
}
