package kotlinx.coroutines.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.internal.a */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/a.class */
public final class C1895a {
    /* renamed from: a */
    public static final <E> void m2674a(E[] eArr, int i, E[] eArr2, int i2, int i3) {
        C1694h.m3117b(eArr, FirebaseAnalytics.Param.SOURCE);
        C1694h.m3117b(eArr2, FirebaseAnalytics.Param.DESTINATION);
        System.arraycopy(eArr, i, eArr2, i2, i3);
    }
}
