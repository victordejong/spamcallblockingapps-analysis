package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.AbstractC4587b;
import com.google.ads.mediation.AbstractC4595e;
import com.google.android.gms.ads.mediation.AbstractC5760a;
import com.google.android.gms.ads.mediation.AbstractC5773f;
import com.google.android.gms.ads.mediation.customevent.AbstractC5763a;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/p70.class */
public final class p70 extends r70 {

    /* renamed from: d */
    private static final v90 f27887d = new v90();

    /* renamed from: e */
    private Map<Class<?>, ?> f27888e;

    /* renamed from: F6 */
    public final void m12359F6(Map<Class<?>, ?> map) {
        this.f27888e = map;
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: P2 */
    public final boolean mo11104P2(String str) {
        try {
            return AbstractC5760a.class.isAssignableFrom(Class.forName(str, false, p70.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 104);
            sb.append("Could not load custom event implementation class as Adapter: ");
            sb.append(str);
            sb.append(", assuming old custom event implementation.");
            ei0.m15464f(sb.toString());
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: p */
    public final r90 mo11103p(String str) {
        try {
            return new ca0((RtbAdapter) Class.forName(str, false, v90.class.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (Throwable th) {
            throw new RemoteException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.v70] */
    /* JADX WARN: Type inference failed for: r0v22, types: [com.google.android.gms.internal.ads.w80] */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.gms.internal.ads.r80] */
    /* JADX WARN: Type inference failed for: r0v30, types: [com.google.android.gms.internal.ads.r80] */
    /* JADX WARN: Type inference failed for: r0v34, types: [com.google.android.gms.internal.ads.r80] */
    /* JADX WARN: Type inference failed for: r0v60, types: [com.google.android.gms.internal.ads.r80] */
    /* JADX WARN: Type inference failed for: r0v62, types: [com.google.android.gms.internal.ads.r80] */
    /* JADX WARN: Type inference failed for: r0v72, types: [com.google.android.gms.internal.ads.w80] */
    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: r */
    public final v70 mo11102r(String str) {
        RemoteException remoteException;
        boolean equals;
        boolean equals2;
        boolean equals3;
        try {
            Class<?> cls = Class.forName(str, false, p70.class.getClassLoader());
            if (AbstractC4587b.class.isAssignableFrom(cls)) {
                AbstractC4587b abstractC4587b = (AbstractC4587b) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                str = new w80(abstractC4587b, (AbstractC4595e) this.f27888e.get(abstractC4587b.getAdditionalParametersType()));
            } else if (AbstractC5773f.class.isAssignableFrom(cls)) {
                str = new r80((AbstractC5773f) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            } else if (!AbstractC5760a.class.isAssignableFrom(cls)) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 64);
                sb.append("Could not instantiate mediation adapter: ");
                sb.append(str);
                sb.append(" (not a valid adapter).");
                ei0.m15464f(sb.toString());
                throw new RemoteException();
            } else {
                str = new r80((AbstractC5760a) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
            }
        } finally {
            if (equals) {
            }
            return str;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: y */
    public final boolean mo11101y(String str) {
        try {
            return AbstractC5763a.class.isAssignableFrom(Class.forName(str, false, p70.class.getClassLoader()));
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("Could not load custom event implementation class: ");
            sb.append(str);
            sb.append(", trying Adapter implementation class.");
            ei0.m15464f(sb.toString());
            return false;
        }
    }
}
