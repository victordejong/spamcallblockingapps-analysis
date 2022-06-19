package p000;

import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import com.truecaller.callbubbles.C3590R;
import com.truecaller.callbubbles.CallBubblesContainerView;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: u2 */
/* loaded from: classes5-dex2jar.jar:u2.class */
public final class C27622u2 extends m implements a<Float> {

    /* renamed from: b */
    public final /* synthetic */ int f77863b;

    /* renamed from: c */
    public final /* synthetic */ Object f77864c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27622u2(int i, Object obj) {
        super(0);
        this.f77863b = i;
        this.f77864c = obj;
    }

    public final Object invoke() {
        int i = this.f77863b;
        if (i != 0) {
            if (i != 1) {
                throw null;
            }
            return Float.valueOf(((Context) this.f77864c).getResources().getDimension(C3590R.dimen.call_bubbles_bubble_shadow_padding));
        }
        Resources resources = ((CallBubblesContainerView) this.f77864c).getResources();
        l.d(resources, "resources");
        return Float.valueOf(TypedValue.applyDimension(1, 256.0f, resources.getDisplayMetrics()));
    }
}
