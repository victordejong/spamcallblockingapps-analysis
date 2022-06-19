package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.os.Handler;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.clevertap.android.sdk.C0868R;
import com.clevertap.android.sdk.customviews.CloseImageView;
import io.agora.rtc.Constants;
/* renamed from: e.h.a.c.q0.s$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/s$b.class */
public class s$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f63206a;

    /* renamed from: b */
    public final /* synthetic */ CloseImageView f63207b;

    /* renamed from: c */
    public final /* synthetic */ s f63208c;

    /* renamed from: e.h.a.c.q0.s$b$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/s$b$a.class */
    public class RunnableC22801a implements Runnable {
        public RunnableC22801a() {
            s$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            int measuredWidth = s$b.this.f63207b.getMeasuredWidth() / 2;
            s$b s_b = s$b.this;
            s_b.f63207b.setX(s_b.f63208c.h.getRight() - measuredWidth);
            s$b s_b2 = s$b.this;
            s_b2.f63207b.setY(s_b2.f63208c.h.getTop() - measuredWidth);
        }
    }

    /* renamed from: e.h.a.c.q0.s$b$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/s$b$b.class */
    public class RunnableC22802b implements Runnable {
        public RunnableC22802b() {
            s$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            int measuredWidth = s$b.this.f63207b.getMeasuredWidth() / 2;
            s$b s_b = s$b.this;
            s_b.f63207b.setX(s_b.f63208c.h.getRight() - measuredWidth);
            s$b s_b2 = s$b.this;
            s_b2.f63207b.setY(s_b2.f63208c.h.getTop() - measuredWidth);
        }
    }

    /* renamed from: e.h.a.c.q0.s$b$c */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/q0/s$b$c.class */
    public class RunnableC22803c implements Runnable {
        public RunnableC22803c() {
            s$b.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            int measuredWidth = s$b.this.f63207b.getMeasuredWidth() / 2;
            s$b s_b = s$b.this;
            s_b.f63207b.setX(s_b.f63208c.h.getRight() - measuredWidth);
            s$b s_b2 = s$b.this;
            s_b2.f63207b.setY(s_b2.f63208c.h.getTop() - measuredWidth);
        }
    }

    public s$b(s sVar, FrameLayout frameLayout, CloseImageView closeImageView) {
        this.f63208c = sVar;
        this.f63206a = frameLayout;
        this.f63207b = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        RelativeLayout relativeLayout = (RelativeLayout) this.f63206a.findViewById(C0868R.C0870id.half_interstitial_relative_layout);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        s sVar = this.f63208c;
        if (((a) sVar).e.f2348u && sVar.VA()) {
            layoutParams.width = (int) (relativeLayout.getMeasuredHeight() * 1.3f);
            layoutParams.gravity = 17;
            relativeLayout.setLayoutParams(layoutParams);
            new Handler().post(new RunnableC22803c());
        } else if (this.f63208c.VA()) {
            layoutParams.setMargins(this.f63208c.TA(140), this.f63208c.TA(100), this.f63208c.TA(140), this.f63208c.TA(100));
            int measuredHeight = relativeLayout.getMeasuredHeight() - this.f63208c.TA((int) Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED);
            layoutParams.height = measuredHeight;
            layoutParams.width = (int) (measuredHeight * 1.3f);
            layoutParams.gravity = 17;
            relativeLayout.setLayoutParams(layoutParams);
            new Handler().post(new RunnableC22801a());
        } else {
            layoutParams.width = (int) (relativeLayout.getMeasuredHeight() * 1.3f);
            layoutParams.gravity = 1;
            relativeLayout.setLayoutParams(layoutParams);
            new Handler().post(new RunnableC22802b());
        }
        this.f63208c.h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
