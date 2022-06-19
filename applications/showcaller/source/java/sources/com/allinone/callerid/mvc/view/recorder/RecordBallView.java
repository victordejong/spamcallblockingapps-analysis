package com.allinone.callerid.mvc.view.recorder;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.bean.recorder.RecordCall;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.service.C3613b;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import com.allinone.callerid.util.recorder.C3820b;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/RecordBallView.class */
public class RecordBallView extends RelativeLayout {

    /* renamed from: d */
    private Context f11429d;

    /* renamed from: e */
    public WindowManager.LayoutParams f11430e;

    /* renamed from: f */
    private WindowManager f11431f;

    /* renamed from: g */
    private float f11432g;

    /* renamed from: h */
    private float f11433h;

    /* renamed from: i */
    private float f11434i;

    /* renamed from: j */
    private float f11435j;

    /* renamed from: k */
    private ImageView f11436k;

    /* renamed from: l */
    private FrameLayout f11437l;

    /* renamed from: m */
    private TextView f11438m;

    /* renamed from: n */
    private ImageView f11439n;

    /* renamed from: o */
    private FrameLayout f11440o;

    /* renamed from: q */
    private int f11442q;

    /* renamed from: r */
    private int f11443r;

    /* renamed from: t */
    private int f11445t;

    /* renamed from: u */
    private int f11446u;

    /* renamed from: v */
    private String f11447v;

    /* renamed from: x */
    private Handler f11449x;

    /* renamed from: y */
    private Runnable f11450y;

    /* renamed from: p */
    private int f11441p = C3774j.m24169a(EZCallApplication.m26146c(), 62.0f);

    /* renamed from: s */
    private boolean f11444s = true;

    /* renamed from: w */
    private long f11448w = 0;

    /* renamed from: com.allinone.callerid.mvc.view.recorder.RecordBallView$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/RecordBallView$a.class */
    public class RunnableC3567a implements Runnable {
        RunnableC3567a() {
            RecordBallView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecordBallView.m24982b(RecordBallView.this);
            RecordBallView recordBallView = RecordBallView.this;
            RecordBallView.this.f11438m.setText(recordBallView.m24973k(recordBallView.f11448w));
            RecordBallView.this.f11449x.postDelayed(this, 1000L);
        }
    }

    /* renamed from: com.allinone.callerid.mvc.view.recorder.RecordBallView$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/mvc/view/recorder/RecordBallView$b.class */
    public class animationAnimation$AnimationListenerC3568b implements Animation.AnimationListener {
        animationAnimation$AnimationListenerC3568b() {
            RecordBallView.this = r4;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public RecordBallView(Context context, int i, int i2) {
        super(context);
        this.f11429d = context;
        this.f11442q = i;
        this.f11443r = i2;
        m24976h();
    }

    public RecordBallView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11429d = context;
        m24976h();
    }

    public RecordBallView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f11429d = context;
        m24976h();
    }

    /* renamed from: b */
    static /* synthetic */ long m24982b(RecordBallView recordBallView) {
        long j = recordBallView.f11448w;
        recordBallView.f11448w = 1 + j;
        return j;
    }

    /* renamed from: g */
    private void m24977g() {
        this.f11449x = new Handler();
        RunnableC3567a runnableC3567a = new RunnableC3567a();
        this.f11450y = runnableC3567a;
        this.f11449x.post(runnableC3567a);
    }

    /* renamed from: h */
    private void m24976h() {
        View inflate = RelativeLayout.inflate(this.f11429d, R$layout.recording_ball, this);
        this.f11431f = (WindowManager) getContext().getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f11430e = layoutParams;
        if (Build.VERSION.SDK_INT >= 26) {
            layoutParams.type = 2038;
        } else {
            layoutParams.type = 2010;
        }
        layoutParams.height = -2;
        layoutParams.width = -2;
        layoutParams.gravity = 51;
        layoutParams.format = 1;
        layoutParams.y = this.f11443r + this.f11441p;
        layoutParams.x = C3774j.m24169a(EZCallApplication.m26146c(), 294.0f);
        this.f11430e.flags = 524328;
        this.f11436k = (ImageView) inflate.findViewById(R$id.record_view);
        this.f11437l = (FrameLayout) inflate.findViewById(R$id.record_ball_start_fl);
        this.f11438m = (TextView) inflate.findViewById(R$id.record_ball_start_time);
        this.f11439n = (ImageView) inflate.findViewById(R$id.record_ball_start_stop);
        this.f11440o = (FrameLayout) inflate.findViewById(R$id.record_ripple_fl);
        if (!C3820b.m24031e()) {
            setVisibility(8);
        } else if (this.f11445t != 10002) {
        } else {
            m24977g();
        }
    }

    /* renamed from: k */
    public String m24973k(long j) {
        return new SimpleDateFormat("mm:ss", Locale.ENGLISH).format(new Date(j * 1000));
    }

    /* renamed from: l */
    private void m24972l(View view) {
        Animation loadAnimation = AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_translation_left);
        loadAnimation.setAnimationListener(new animationAnimation$AnimationListenerC3568b());
        view.startAnimation(loadAnimation);
    }

    /* renamed from: f */
    public void m24978f() {
        this.f11431f.addView(this, this.f11430e);
    }

    public int getCall_status() {
        return this.f11446u;
    }

    public int getStatus() {
        return this.f11445t;
    }

    public String getTel_phone() {
        return this.f11447v;
    }

    /* renamed from: i */
    public void m24975i() {
        this.f11440o.setVisibility(8);
        this.f11437l.setVisibility(0);
        this.f11438m.setVisibility(0);
        m24972l(this.f11438m);
    }

    /* renamed from: j */
    public void m24974j() {
        try {
            Handler handler = this.f11449x;
            if (handler != null) {
                Runnable runnable = this.f11450y;
                if (runnable != null) {
                    handler.removeCallbacks(runnable);
                    this.f11450y = null;
                }
                this.f11449x = null;
            }
            this.f11431f.removeView(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    public void m24971m(int i, int i2) {
        WindowManager.LayoutParams layoutParams = this.f11430e;
        layoutParams.x = i;
        layoutParams.y = i2;
        this.f11431f.updateViewLayout(this, layoutParams);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Runnable runnable;
        if (this.f11444s) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f11432g = ((int) motionEvent.getRawX()) - (getMeasuredWidth() / 2);
                this.f11433h = ((int) motionEvent.getRawY()) - (getMeasuredHeight() / 2);
                return false;
            } else if (action != 1) {
                if (action != 2) {
                    return false;
                }
                this.f11430e.x = ((int) motionEvent.getRawX()) - (getMeasuredWidth() / 2);
                this.f11430e.y = ((int) motionEvent.getRawY()) - (getMeasuredHeight() / 2);
                if (Math.abs(this.f11430e.y - this.f11433h) <= 10.0f && Math.abs(this.f11430e.x - this.f11432g) <= 10.0f) {
                    return false;
                }
                this.f11431f.updateViewLayout(this, this.f11430e);
                return false;
            } else {
                this.f11435j = ((int) motionEvent.getRawY()) - (getMeasuredHeight() / 2);
                this.f11434i = ((int) motionEvent.getRawX()) - (getMeasuredWidth() / 2);
                if (Math.abs(this.f11435j - this.f11433h) > 10.0f || Math.abs(this.f11434i - this.f11432g) > 10.0f) {
                    this.f11431f.updateViewLayout(this, this.f11430e);
                    return false;
                }
                int i = this.f11445t;
                if (i == 10001) {
                    this.f11439n.setImageResource(R$drawable.recording_play);
                    this.f11445t = 10002;
                    RecordCall recordCall = new RecordCall();
                    recordCall.setNumber(this.f11447v);
                    if (this.f11446u == 1) {
                        recordCall.setPhonestatus(110);
                    } else {
                        recordCall.setPhonestatus(111);
                    }
                    C3613b.m24800f().m24795k(recordCall);
                    m24977g();
                    m24975i();
                    C3810q.m24071b().m24070c("recorder_floatingball_click");
                    return false;
                } else if (i == 10002) {
                    this.f11445t = 10003;
                    C3613b.m24800f().m24793m(false);
                    this.f11439n.setImageResource(R$drawable.recording_pause);
                    this.f11438m.setText("00:00");
                    this.f11448w = 0L;
                    Handler handler = this.f11449x;
                    if (handler != null && (runnable = this.f11450y) != null) {
                        handler.removeCallbacks(runnable);
                    }
                    this.f11449x = null;
                    this.f11450y = null;
                    return false;
                } else if (i != 10003) {
                    return false;
                } else {
                    this.f11445t = 10002;
                    this.f11439n.setImageResource(R$drawable.recording_play);
                    RecordCall recordCall2 = new RecordCall();
                    recordCall2.setNumber(this.f11447v);
                    if (this.f11446u == 1) {
                        recordCall2.setPhonestatus(110);
                    } else {
                        recordCall2.setPhonestatus(111);
                    }
                    C3613b.m24800f().m24795k(recordCall2);
                    m24977g();
                    return false;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCall_status(int i) {
        this.f11446u = i;
    }

    public void setInitTime() {
        m24977g();
    }

    public void setIsonTouch(boolean z) {
        this.f11444s = z;
    }

    public void setLayoutParams(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f11440o.getLayoutParams();
        layoutParams.width = C3774j.m24169a(this.f11429d, i);
        layoutParams.height = C3774j.m24169a(this.f11429d, i2);
        this.f11440o.setLayoutParams(layoutParams);
    }

    public void setStatus(int i) {
        this.f11445t = i;
    }

    public void setTel_phone(String str) {
        this.f11447v = str;
    }
}
