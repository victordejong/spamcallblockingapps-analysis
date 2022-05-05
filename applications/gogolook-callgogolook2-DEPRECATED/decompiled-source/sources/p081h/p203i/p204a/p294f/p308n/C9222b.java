package p081h.p203i.p204a.p294f.p308n;

import android.graphics.Outline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
@RequiresApi(21)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.n.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/n/b.class */
public class C9222b extends C9219a {
    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        copyBounds(this.f21077b);
        outline.setOval(this.f21077b);
    }
}
