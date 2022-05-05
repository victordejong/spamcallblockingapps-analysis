package p081h.p119d.p120a.p145w.p147j;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import p081h.p119d.p120a.p124s.p134k.p137g.AbstractC5979b;
/* renamed from: h.d.a.w.j.f */
/* loaded from: classes-dex2jar.jar:h/d/a/w/j/f.class */
public class C6076f {
    /* renamed from: a */
    public <Z> AbstractC6082k<Z> m23915a(ImageView imageView, Class<Z> cls) {
        if (AbstractC5979b.class.isAssignableFrom(cls)) {
            return new C6074d(imageView);
        }
        if (Bitmap.class.equals(cls)) {
            return new C6072b(imageView);
        }
        if (Drawable.class.isAssignableFrom(cls)) {
            return new C6073c(imageView);
        }
        throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
    }
}
