package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.os.Handler;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
import io.agora.rtc.Constants;
/* renamed from: e.h.a.c.q0.t$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/t$b.class */
public class t$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ CloseImageView f63215a;

    /* renamed from: b */
    public final /* synthetic */ t f63216b;

    /* renamed from: e.h.a.c.q0.t$b$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/t$b$a.class */
    public class RunnableC22804a implements Runnable {
        public RunnableC22804a() {
            t$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            int measuredWidth = t$b.this.f63215a.getMeasuredWidth() / 2;
            t$b t_b = t$b.this;
            t_b.f63215a.setX(t_b.f63216b.h.getRight() - measuredWidth);
            t$b t_b2 = t$b.this;
            t_b2.f63215a.setY(t_b2.f63216b.h.getTop() - measuredWidth);
        }
    }

    /* renamed from: e.h.a.c.q0.t$b$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/t$b$b.class */
    public class RunnableC22805b implements Runnable {
        public RunnableC22805b() {
            t$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            int measuredWidth = t$b.this.f63215a.getMeasuredWidth() / 2;
            t$b t_b = t$b.this;
            t_b.f63215a.setX(t_b.f63216b.h.getRight() - measuredWidth);
            t$b t_b2 = t$b.this;
            t_b2.f63215a.setY(t_b2.f63216b.h.getTop() - measuredWidth);
        }
    }

    /* renamed from: e.h.a.c.q0.t$b$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/t$b$c.class */
    public class RunnableC22806c implements Runnable {
        public RunnableC22806c() {
            t$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            int measuredWidth = t$b.this.f63215a.getMeasuredWidth() / 2;
            t$b t_b = t$b.this;
            t_b.f63215a.setX(t_b.f63216b.h.getRight() - measuredWidth);
            t$b t_b2 = t$b.this;
            t_b2.f63215a.setY(t_b2.f63216b.h.getTop() - measuredWidth);
        }
    }

    public t$b(t tVar, CloseImageView closeImageView) {
        this.f63216b = tVar;
        this.f63215a = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f63216b.h.getLayoutParams();
        t tVar = this.f63216b;
        if (((a) tVar).e.f2348u && tVar.VA()) {
            layoutParams.width = (int) (this.f63216b.h.getMeasuredHeight() * 1.3f);
            layoutParams.gravity = 17;
            this.f63216b.h.setLayoutParams(layoutParams);
            new Handler().post(new RunnableC22806c());
        } else if (this.f63216b.VA()) {
            layoutParams.setMargins(this.f63216b.TA(140), this.f63216b.TA(100), this.f63216b.TA(140), this.f63216b.TA(100));
            int measuredHeight = this.f63216b.h.getMeasuredHeight() - this.f63216b.TA((int) Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED);
            layoutParams.height = measuredHeight;
            layoutParams.width = (int) (measuredHeight * 1.3f);
            layoutParams.gravity = 17;
            this.f63216b.h.setLayoutParams(layoutParams);
            new Handler().post(new RunnableC22804a());
        } else {
            layoutParams.width = (int) (this.f63216b.h.getMeasuredHeight() * 1.3f);
            layoutParams.gravity = 1;
            this.f63216b.h.setLayoutParams(layoutParams);
            new Handler().post(new RunnableC22805b());
        }
        this.f63216b.h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
