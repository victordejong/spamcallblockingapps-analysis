package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import p081h.p203i.p204a.p224e.p259j.p267h.HandlerC7748h;
/* renamed from: h.i.a.e.d.k.q.y2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/y2.class */
public final class C6948y2 extends Fragment implements AbstractC6874h {

    /* renamed from: d */
    public static WeakHashMap<FragmentActivity, WeakReference<C6948y2>> f17033d = new WeakHashMap<>();

    /* renamed from: a */
    public Map<String, LifecycleCallback> f17034a = new ArrayMap();

    /* renamed from: b */
    public int f17035b = 0;

    /* renamed from: c */
    public Bundle f17036c;

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (r0.isRemoving() != false) goto L_0x0037;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2 m21477a(androidx.fragment.app.FragmentActivity r6) {
        /*
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<h.i.a.e.d.k.q.y2>> r0 = p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2.f17033d
            r1 = r6
            java.lang.Object r0 = r0.get(r1)
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            java.lang.Object r0 = r0.get()
            h.i.a.e.d.k.q.y2 r0 = (p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x001d
            r0 = r7
            return r0
        L_0x001d:
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()     // Catch: ClassCastException -> 0x0062
            java.lang.String r1 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.Fragment r0 = r0.findFragmentByTag(r1)     // Catch: ClassCastException -> 0x0062
            h.i.a.e.d.k.q.y2 r0 = (p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2) r0     // Catch: ClassCastException -> 0x0062
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0037
            r0 = r8
            r7 = r0
            r0 = r8
            boolean r0 = r0.isRemoving()
            if (r0 == 0) goto L_0x0050
        L_0x0037:
            h.i.a.e.d.k.q.y2 r0 = new h.i.a.e.d.k.q.y2
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r6
            androidx.fragment.app.FragmentManager r0 = r0.getSupportFragmentManager()
            androidx.fragment.app.FragmentTransaction r0 = r0.beginTransaction()
            r1 = r7
            java.lang.String r2 = "SupportLifecycleFragmentImpl"
            androidx.fragment.app.FragmentTransaction r0 = r0.add(r1, r2)
            int r0 = r0.commitAllowingStateLoss()
        L_0x0050:
            java.util.WeakHashMap<androidx.fragment.app.FragmentActivity, java.lang.ref.WeakReference<h.i.a.e.d.k.q.y2>> r0 = p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2.f17033d
            r1 = r6
            java.lang.ref.WeakReference r2 = new java.lang.ref.WeakReference
            r3 = r2
            r4 = r7
            r3.<init>(r4)
            java.lang.Object r0 = r0.put(r1, r2)
            r0 = r7
            return r0
        L_0x0062:
            r6 = move-exception
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"
            r3 = r6
            r1.<init>(r2, r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p236k.p237q.C6948y2.m21477a(androidx.fragment.app.FragmentActivity):h.i.a.e.d.k.q.y2");
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h
    /* renamed from: a */
    public final <T extends LifecycleCallback> T mo21474a(String str, Class<T> cls) {
        return cls.cast(this.f17034a.get(str));
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h
    /* renamed from: a */
    public final void mo21475a(String str, @NonNull LifecycleCallback lifecycleCallback) {
        if (!this.f17034a.containsKey(str)) {
            this.f17034a.put(str, lifecycleCallback);
            if (this.f17035b > 0) {
                new HandlerC7748h(Looper.getMainLooper()).post(new RunnableC6952z2(this, lifecycleCallback, str));
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("LifecycleCallback with tag ");
        sb.append(str);
        sb.append(" already added to this fragment.");
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p236k.p237q.AbstractC6874h
    /* renamed from: d */
    public final /* synthetic */ Activity mo21472d() {
        return getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        for (LifecycleCallback lifecycleCallback : this.f17034a.values()) {
            lifecycleCallback.mo21684a(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        for (LifecycleCallback lifecycleCallback : this.f17034a.values()) {
            lifecycleCallback.mo21674a(i, i2, intent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f17035b = 1;
        this.f17036c = bundle;
        for (Map.Entry<String, LifecycleCallback> entry : this.f17034a.entrySet()) {
            entry.getValue().mo21673a(bundle != null ? bundle.getBundle(entry.getKey()) : null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.f17035b = 5;
        for (LifecycleCallback lifecycleCallback : this.f17034a.values()) {
            lifecycleCallback.m31969b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        this.f17035b = 3;
        for (LifecycleCallback lifecycleCallback : this.f17034a.values()) {
            lifecycleCallback.mo21526c();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (bundle != null) {
            for (Map.Entry<String, LifecycleCallback> entry : this.f17034a.entrySet()) {
                Bundle bundle2 = new Bundle();
                entry.getValue().mo21671b(bundle2);
                bundle.putBundle(entry.getKey(), bundle2);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        this.f17035b = 2;
        for (LifecycleCallback lifecycleCallback : this.f17034a.values()) {
            lifecycleCallback.mo21525d();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        super.onStop();
        this.f17035b = 4;
        for (LifecycleCallback lifecycleCallback : this.f17034a.values()) {
            lifecycleCallback.mo16034e();
        }
    }
}
