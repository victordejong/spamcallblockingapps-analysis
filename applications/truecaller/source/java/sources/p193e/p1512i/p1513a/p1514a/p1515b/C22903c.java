package p193e.p1512i.p1513a.p1514a.p1515b;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LevelListDrawable;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
/* renamed from: e.i.a.a.b.c */
/* loaded from: classes-dex2jar.jar:e/i/a/a/b/c.class */
public class C22903c extends LevelListDrawable {

    /* renamed from: a */
    public final ImageView f63569a;

    /* renamed from: d */
    public int f63572d = 0;

    /* renamed from: b */
    public final Handler f63570b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public long f63571c = 100;

    public C22903c(ImageView imageView) {
        this.f63569a = imageView;
    }

    /* renamed from: a */
    public final void m7633a() {
        Drawable drawable = this.f63569a.getDrawable();
        Drawable current = getCurrent();
        if ((current == null || current != drawable) && drawable != null) {
            int i = this.f63572d;
            addLevel(i, i, drawable);
            setLevel(this.f63572d);
            this.f63572d++;
        }
        this.f63570b.removeCallbacksAndMessages(null);
        this.f63570b.postDelayed(new RunnableC22902b(this), 100L);
    }

    @Override // android.graphics.drawable.DrawableContainer, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        m7633a();
        super.draw(canvas);
    }
}
