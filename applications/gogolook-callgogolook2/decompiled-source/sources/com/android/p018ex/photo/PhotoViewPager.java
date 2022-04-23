package com.android.p018ex.photo;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.MotionEventCompat;
import androidx.viewpager.widget.ViewPager;
/* renamed from: com.android.ex.photo.PhotoViewPager */
/* loaded from: classes-dex2jar.jar:com/android/ex/photo/PhotoViewPager.class */
public class PhotoViewPager extends ViewPager {

    /* renamed from: a */
    public float f1049a;

    /* renamed from: b */
    public int f1050b;

    /* renamed from: c */
    public float f1051c;

    /* renamed from: d */
    public float f1052d;

    /* renamed from: e */
    public AbstractC1564c f1053e;

    /* renamed from: com.android.ex.photo.PhotoViewPager$a */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/PhotoViewPager$a.class */
    public class C1562a implements ViewPager.PageTransformer {
        public C1562a(PhotoViewPager photoViewPager) {
        }

        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        public void transformPage(View view, float f) {
            if (f < 0.0f || f >= 1.0f) {
                view.setTranslationX(0.0f);
                view.setAlpha(1.0f);
                view.setScaleX(1.0f);
                view.setScaleY(1.0f);
                return;
            }
            view.setTranslationX((-f) * view.getWidth());
            view.setAlpha(Math.max(0.0f, 1.0f - f));
            float max = Math.max(0.0f, 1.0f - (f * 0.3f));
            view.setScaleX(max);
            view.setScaleY(max);
        }
    }

    /* renamed from: com.android.ex.photo.PhotoViewPager$b */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/PhotoViewPager$b.class */
    public enum EnumC1563b {
        NONE,
        LEFT,
        RIGHT,
        BOTH
    }

    /* renamed from: com.android.ex.photo.PhotoViewPager$c */
    /* loaded from: classes-dex2jar.jar:com/android/ex/photo/PhotoViewPager$c.class */
    public interface AbstractC1564c {
        /* renamed from: a */
        EnumC1563b mo24982a(float f, float f2);
    }

    public PhotoViewPager(Context context) {
        super(context);
        m36670a();
    }

    public PhotoViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36670a();
    }

    /* renamed from: a */
    public final void m36670a() {
        setPageTransformer(true, new C1562a(this));
    }

    /* renamed from: a */
    public void m36669a(AbstractC1564c cVar) {
        this.f1053e = cVar;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int i;
        AbstractC1564c cVar = this.f1053e;
        EnumC1563b a = cVar != null ? cVar.mo24982a(this.f1051c, this.f1052d) : EnumC1563b.NONE;
        int i2 = 1;
        boolean z = a == EnumC1563b.BOTH || a == EnumC1563b.LEFT;
        boolean z2 = a == EnumC1563b.BOTH || a == EnumC1563b.RIGHT;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.f1050b = -1;
        }
        if (action == 0) {
            this.f1049a = motionEvent.getX();
            this.f1051c = motionEvent.getRawX();
            this.f1052d = motionEvent.getRawY();
            this.f1050b = MotionEventCompat.getPointerId(motionEvent, 0);
        } else if (action != 2) {
            if (action == 6) {
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.f1050b) {
                    if (actionIndex != 0) {
                        i2 = 0;
                    }
                    this.f1049a = MotionEventCompat.getX(motionEvent, i2);
                    this.f1050b = MotionEventCompat.getPointerId(motionEvent, i2);
                }
            }
        } else if ((z || z2) && (i = this.f1050b) != -1) {
            float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, i));
            if (z && z2) {
                this.f1049a = x;
                return false;
            } else if (z && x > this.f1049a) {
                this.f1049a = x;
                return false;
            } else if (z2 && x < this.f1049a) {
                this.f1049a = x;
                return false;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
