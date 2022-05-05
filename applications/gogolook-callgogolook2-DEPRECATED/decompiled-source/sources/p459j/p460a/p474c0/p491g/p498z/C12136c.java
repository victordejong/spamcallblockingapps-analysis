package p459j.p460a.p474c0.p491g.p498z;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p474c0.p499h.C12242z;
/* renamed from: j.a.c0.g.z.c */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/c.class */
public class C12136c {

    @TargetApi(18)
    /* renamed from: j.a.c0.g.z.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/c$a.class */
    public static class C12137a {

        /* renamed from: a */
        public final View f27267a;

        /* renamed from: b */
        public final ViewGroup f27268b;

        /* renamed from: c */
        public final View f27269c;

        /* renamed from: d */
        public final Bitmap f27270d;

        /* renamed from: e */
        public final int f27271e;

        /* renamed from: j.a.c0.g.z.c$a$a */
        /* loaded from: classes2-dex2jar.jar:j/a/c0/g/z/c$a$a.class */
        public class RunnableC12138a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ ViewGroupOverlay f27272a;

            /* renamed from: b */
            public final /* synthetic */ FrameLayout f27273b;

            /* renamed from: c */
            public final /* synthetic */ Drawable f27274c;

            public RunnableC12138a(ViewGroupOverlay viewGroupOverlay, FrameLayout frameLayout, Drawable drawable) {
                this.f27272a = viewGroupOverlay;
                this.f27273b = frameLayout;
                this.f27274c = drawable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f27272a.remove(this.f27273b);
                C12137a.this.f27267a.setBackground(this.f27274c);
                if (C12137a.this.f27270d != null) {
                    C12137a.this.f27270d.recycle();
                }
            }
        }

        public C12137a(View view, ViewGroup viewGroup, boolean z, int i) {
            this.f27267a = view;
            this.f27268b = viewGroup;
            this.f27271e = i;
            if (z) {
                this.f27270d = C12136c.m7046a(view);
                this.f27269c = new View(view.getContext());
                return;
            }
            this.f27269c = null;
            this.f27270d = null;
        }

        /* renamed from: a */
        public void m7044a() {
            float f;
            Context context = this.f27267a.getContext();
            Resources resources = context.getResources();
            View decorView = ((Activity) context).getWindow().getDecorView();
            ViewOverlay overlay = decorView.getOverlay();
            if (overlay instanceof ViewGroupOverlay) {
                ViewGroupOverlay viewGroupOverlay = (ViewGroupOverlay) overlay;
                FrameLayout frameLayout = new FrameLayout(context);
                Drawable background = this.f27267a.getBackground();
                Rect a = C12212s0.m6792a(this.f27268b);
                Rect a2 = C12212s0.m6792a(decorView);
                a.offset(-a2.left, -a2.top);
                frameLayout.setLeft(a.left);
                frameLayout.setTop(a.top);
                frameLayout.setBottom(a.bottom);
                frameLayout.setRight(a.right);
                frameLayout.setBackgroundColor(resources.getColor(R$color.open_conversation_animation_background_shadow));
                if (!(background instanceof ColorDrawable)) {
                    this.f27267a.setBackground(null);
                }
                viewGroupOverlay.add(frameLayout);
                View view = new View(context);
                int dimensionPixelSize = resources.getDimensionPixelSize(R$dimen.explode_animation_highlight_elevation);
                Rect a3 = C12212s0.m6792a(this.f27267a);
                a3.offset((-a.left) - a2.left, (-a.top) - a2.top);
                int height = a3.height() / 2;
                int i = a3.top;
                int height2 = a.height();
                int i2 = a3.bottom;
                if (height == 0) {
                    f = 1.0f;
                } else {
                    float max = Math.max(i, height2 - i2);
                    float f2 = height;
                    f = (max + f2) / f2;
                }
                frameLayout.addView(view);
                view.setLeft(a3.left);
                view.setTop(a3.top);
                view.setBottom(a3.bottom);
                view.setRight(a3.right);
                view.setBackgroundColor(resources.getColor(R$color.conversation_background));
                float f3 = dimensionPixelSize;
                ViewCompat.setElevation(view, f3);
                View view2 = this.f27269c;
                if (view2 != null) {
                    frameLayout.addView(view2);
                    this.f27269c.setLeft(a3.left);
                    this.f27269c.setTop(a3.top);
                    this.f27269c.setBottom(a3.bottom);
                    this.f27269c.setRight(a3.right);
                    this.f27269c.setBackground(new BitmapDrawable(resources, this.f27270d));
                    ViewCompat.setElevation(this.f27269c, f3);
                }
                view.animate().scaleY(f).setDuration(this.f27271e).setInterpolator(C12212s0.f27373e).withEndAction(new RunnableC12138a(viewGroupOverlay, frameLayout, background));
            }
        }
    }

    /* renamed from: a */
    public static Bitmap m7046a(View view) {
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Drawable background = view.getBackground();
        C12242z.m6556a(view, (Drawable) null);
        view.draw(new Canvas(createBitmap));
        C12242z.m6556a(view, background);
        return createBitmap;
    }

    /* renamed from: a */
    public static void m7045a(ViewGroup viewGroup, View view, View view2, boolean z, int i) {
        if (view.getContext() instanceof Activity) {
            new C12137a(view, viewGroup, z, i).m7044a();
        }
    }
}
