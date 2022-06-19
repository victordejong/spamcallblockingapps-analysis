package cn.jzvd;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes-dex2jar.jar:cn/jzvd/JzvdStd.class */
public class JzvdStd extends Jzvd {

    /* renamed from: c0 */
    public static long f7323c0 = 0;

    /* renamed from: d0 */
    public static int f7324d0 = 70;

    /* renamed from: e0 */
    protected static Timer f7325e0;

    /* renamed from: A0 */
    protected ProgressBar f7326A0;

    /* renamed from: B0 */
    protected TextView f7327B0;

    /* renamed from: C0 */
    protected ImageView f7328C0;

    /* renamed from: D0 */
    protected Dialog f7329D0;

    /* renamed from: E0 */
    protected ProgressBar f7330E0;

    /* renamed from: F0 */
    protected TextView f7331F0;

    /* renamed from: G0 */
    private BroadcastReceiver f7332G0 = new C2106a();

    /* renamed from: f0 */
    public ImageView f7333f0;

    /* renamed from: g0 */
    public ProgressBar f7334g0;

    /* renamed from: h0 */
    public ProgressBar f7335h0;

    /* renamed from: i0 */
    public TextView f7336i0;

    /* renamed from: j0 */
    public ImageView f7337j0;

    /* renamed from: k0 */
    public ImageView f7338k0;

    /* renamed from: l0 */
    public LinearLayout f7339l0;

    /* renamed from: m0 */
    public ImageView f7340m0;

    /* renamed from: n0 */
    public TextView f7341n0;

    /* renamed from: o0 */
    public TextView f7342o0;

    /* renamed from: p0 */
    public TextView f7343p0;

    /* renamed from: q0 */
    public PopupWindow f7344q0;

    /* renamed from: r0 */
    public TextView f7345r0;

    /* renamed from: s0 */
    public LinearLayout f7346s0;

    /* renamed from: t0 */
    protected C2107b f7347t0;

    /* renamed from: u0 */
    protected Dialog f7348u0;

    /* renamed from: v0 */
    protected ProgressBar f7349v0;

    /* renamed from: w0 */
    protected TextView f7350w0;

    /* renamed from: x0 */
    protected TextView f7351x0;

    /* renamed from: y0 */
    protected ImageView f7352y0;

    /* renamed from: z0 */
    protected Dialog f7353z0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cn.jzvd.JzvdStd$a */
    /* loaded from: classes-dex2jar.jar:cn/jzvd/JzvdStd$a.class */
    public class C2106a extends BroadcastReceiver {
        C2106a() {
            JzvdStd.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                JzvdStd.f7324d0 = (intent.getIntExtra("level", 0) * 100) / intent.getIntExtra("scale", 100);
                JzvdStd.this.setBatteryLevel();
                try {
                    JzvdStd.this.getContext().unregisterReceiver(JzvdStd.this.f7332G0);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* renamed from: cn.jzvd.JzvdStd$b */
    /* loaded from: classes-dex2jar.jar:cn/jzvd/JzvdStd$b.class */
    public class C2107b extends TimerTask {
        public C2107b() {
            JzvdStd.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            JzvdStd.this.m27971h0();
        }
    }

    public JzvdStd(Context context) {
        super(context);
    }

    public JzvdStd(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: i0 */
    public /* synthetic */ void m27969j0() {
        this.f7292H.setVisibility(4);
        this.f7291G.setVisibility(4);
        this.f7285A.setVisibility(4);
        PopupWindow popupWindow = this.f7344q0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    /* renamed from: k0 */
    public /* synthetic */ void m27967l0(LinearLayout linearLayout, View view) {
        mo27973e(((Integer) view.getTag()).intValue(), getCurrentPositionWhenPlaying());
        this.f7343p0.setText(this.f7312q.m27954b().toString());
        for (int i = 0; i < linearLayout.getChildCount(); i++) {
            if (i == this.f7312q.f7387a) {
                ((TextView) linearLayout.getChildAt(i)).setTextColor(Color.parseColor("#fff85959"));
            } else {
                ((TextView) linearLayout.getChildAt(i)).setTextColor(Color.parseColor("#ffffff"));
            }
        }
        PopupWindow popupWindow = this.f7344q0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    /* renamed from: m0 */
    public /* synthetic */ void m27965n0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        mo27462U();
        Jzvd.f7280j = true;
    }

    /* renamed from: o0 */
    public /* synthetic */ void m27962p0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        m27990j();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: C */
    public void mo27983C(int i, long j, long j2) {
        super.mo27983C(i, j, j2);
        if (i != 0) {
            this.f7334g0.setProgress(i);
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: E */
    public void mo27469E() {
        super.mo27469E();
        mo27461Y();
        m27975W();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: F */
    public void mo27468F() {
        super.mo27468F();
        mo27460Z();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: G */
    public void mo27467G() {
        super.mo27467G();
        mo27459a0();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: H */
    public void mo27466H() {
        super.mo27466H();
        mo27457c0();
        m27975W();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: I */
    public void mo27465I() {
        super.mo27465I();
        mo27456d0();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: J */
    public void mo27464J() {
        super.mo27464J();
        mo27454f0();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: M */
    public void mo27982M() {
        super.mo27982M();
        m27975W();
        PopupWindow popupWindow = this.f7344q0;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: O */
    public void mo27981O() {
        super.mo27981O();
        this.f7334g0.setProgress(0);
        this.f7334g0.setSecondaryProgress(0);
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: P */
    public void mo27980P(int i) {
        int i2;
        super.mo27980P(i);
        if (this.f7329D0 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(C2135z.jz_dialog_brightness, (ViewGroup) null);
            this.f7331F0 = (TextView) inflate.findViewById(C2134y.tv_brightness);
            this.f7330E0 = (ProgressBar) inflate.findViewById(C2134y.brightness_progressbar);
            this.f7329D0 = m27972g0(inflate);
        }
        if (!this.f7329D0.isShowing()) {
            this.f7329D0.show();
        }
        if (i > 100) {
            i2 = 100;
        } else {
            i2 = i;
            if (i < 0) {
                i2 = 0;
            }
        }
        this.f7331F0.setText(i2 + "%");
        this.f7330E0.setProgress(i2);
        m27960q0();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: Q */
    public void mo27979Q(float f, String str, long j, String str2, long j2) {
        super.mo27979Q(f, str, j, str2, j2);
        if (this.f7348u0 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(C2135z.jz_dialog_progress, (ViewGroup) null);
            this.f7349v0 = (ProgressBar) inflate.findViewById(C2134y.duration_progressbar);
            this.f7350w0 = (TextView) inflate.findViewById(C2134y.tv_current);
            this.f7351x0 = (TextView) inflate.findViewById(C2134y.tv_duration);
            this.f7352y0 = (ImageView) inflate.findViewById(C2134y.duration_image_tip);
            this.f7348u0 = m27972g0(inflate);
        }
        if (!this.f7348u0.isShowing()) {
            this.f7348u0.show();
        }
        this.f7350w0.setText(str);
        TextView textView = this.f7351x0;
        textView.setText(" / " + str2);
        this.f7349v0.setProgress(j2 <= 0 ? 0 : (int) ((j * 100) / j2));
        if (f > 0.0f) {
            this.f7352y0.setBackgroundResource(C2133x.jz_forward_icon);
        } else {
            this.f7352y0.setBackgroundResource(C2133x.jz_backward_icon);
        }
        m27960q0();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: R */
    public void mo27978R(float f, int i) {
        int i2;
        super.mo27978R(f, i);
        if (this.f7353z0 == null) {
            View inflate = LayoutInflater.from(getContext()).inflate(C2135z.jz_dialog_volume, (ViewGroup) null);
            this.f7328C0 = (ImageView) inflate.findViewById(C2134y.volume_image_tip);
            this.f7327B0 = (TextView) inflate.findViewById(C2134y.tv_volume);
            this.f7326A0 = (ProgressBar) inflate.findViewById(C2134y.volume_progressbar);
            this.f7353z0 = m27972g0(inflate);
        }
        if (!this.f7353z0.isShowing()) {
            this.f7353z0.show();
        }
        if (i <= 0) {
            this.f7328C0.setBackgroundResource(C2133x.jz_close_volume);
        } else {
            this.f7328C0.setBackgroundResource(C2133x.jz_add_volume);
        }
        if (i > 100) {
            i2 = 100;
        } else {
            i2 = i;
            if (i < 0) {
                i2 = 0;
            }
        }
        this.f7327B0.setText(i2 + "%");
        this.f7326A0.setProgress(i2);
        m27960q0();
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: S */
    public void mo27977S() {
        super.mo27977S();
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(getResources().getString(C2109a0.tips_not_wifi));
        builder.setPositiveButton(getResources().getString(C2109a0.tips_not_wifi_confirm), new DialogInterface.OnClickListener() { // from class: cn.jzvd.q
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                JzvdStd.this.m27965n0(dialogInterface, i);
            }
        });
        builder.setNegativeButton(getResources().getString(C2109a0.tips_not_wifi_cancel), new DialogInterface.OnClickListener() { // from class: cn.jzvd.p
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                JzvdStd.this.m27962p0(dialogInterface, i);
            }
        });
        builder.setOnCancelListener(DialogInterface$OnCancelListenerC2128s.f7386d);
        builder.create().show();
    }

    /* renamed from: W */
    public void m27975W() {
        Timer timer = f7325e0;
        if (timer != null) {
            timer.cancel();
        }
        C2107b c2107b = this.f7347t0;
        if (c2107b != null) {
            c2107b.cancel();
        }
    }

    /* renamed from: X */
    public void m27974X(int i) {
        ViewGroup.LayoutParams layoutParams = this.f7285A.getLayoutParams();
        layoutParams.height = i;
        layoutParams.width = i;
        ViewGroup.LayoutParams layoutParams2 = this.f7335h0.getLayoutParams();
        layoutParams2.height = i;
        layoutParams2.width = i;
    }

    /* renamed from: Y */
    public void mo27461Y() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
            m27957t0();
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
            m27957t0();
        }
    }

    /* renamed from: Z */
    public void mo27460Z() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(4, 4, 0, 4, 4, 4, 0);
            m27957t0();
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(0, 4, 0, 4, 4, 4, 0);
            m27957t0();
        }
    }

    /* renamed from: a0 */
    public void mo27459a0() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
            m27957t0();
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(0, 4, 0, 4, 0, 4, 4);
            m27957t0();
        }
    }

    /* renamed from: b0 */
    public void mo27458b0() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
        }
    }

    /* renamed from: c0 */
    public void mo27457c0() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
            m27957t0();
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
            m27957t0();
        }
    }

    /* renamed from: d0 */
    public void mo27456d0() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(4, 4, 4, 4, 4, 0, 4);
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: e */
    public void mo27973e(int i, long j) {
        super.mo27973e(i, j);
        this.f7285A.setVisibility(4);
        this.f7342o0.setVisibility(8);
        this.f7346s0.setVisibility(8);
    }

    /* renamed from: e0 */
    public void mo27455e0() {
        int i = this.f7311p;
        if (i == 0) {
            setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
            m27957t0();
        } else if (i != 1) {
        } else {
            setAllControlsVisiblity(0, 0, 0, 4, 4, 4, 4);
            m27957t0();
        }
    }

    /* renamed from: f0 */
    public void mo27454f0() {
        int i = this.f7311p;
        if (i == 0 || i == 1) {
            setAllControlsVisiblity(4, 4, 4, 0, 0, 4, 4);
            m27957t0();
        }
    }

    /* renamed from: g0 */
    public Dialog m27972g0(View view) {
        Dialog dialog = new Dialog(getContext(), C2111b0.jz_style_dialog_progress);
        dialog.setContentView(view);
        Window window = dialog.getWindow();
        window.addFlags(8);
        window.addFlags(32);
        window.addFlags(16);
        window.setLayout(-2, -2);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.gravity = 17;
        window.setAttributes(attributes);
        return dialog;
    }

    @Override // cn.jzvd.Jzvd
    public int getLayoutId() {
        return C2135z.jz_layout_std;
    }

    /* renamed from: h0 */
    public void m27971h0() {
        int i = this.f7310o;
        if (i == 0 || i == 7 || i == 6) {
            return;
        }
        post(new Runnable() { // from class: cn.jzvd.r
            @Override // java.lang.Runnable
            public final void run() {
                JzvdStd.this.m27969j0();
            }
        });
    }

    @Override // cn.jzvd.Jzvd, android.view.View.OnClickListener
    public void onClick(View view) {
        super.onClick(view);
        int id = view.getId();
        if (id == C2134y.thumb) {
            C2129t c2129t = this.f7312q;
            if (c2129t == null || c2129t.f7388b.isEmpty() || this.f7312q.m27953c() == null) {
                Toast.makeText(getContext(), getResources().getString(C2109a0.no_url), 0).show();
                return;
            }
            int i = this.f7310o;
            if (i != 0) {
                if (i != 6) {
                    return;
                }
                mo27453r0();
            } else if (this.f7312q.m27953c().toString().startsWith("file") || this.f7312q.m27953c().toString().startsWith("/") || C2131v.m27945f(getContext()) || Jzvd.f7280j) {
                mo27462U();
            } else {
                mo27977S();
            }
        } else if (id == C2134y.surface_container) {
            m27958s0();
        } else if (id == C2134y.back) {
            Jzvd.m27993b();
        } else if (id == C2134y.back_tiny) {
            m27990j();
        } else if (id != C2134y.clarity) {
            if (id != C2134y.retry_btn) {
                return;
            }
            if (this.f7312q.f7388b.isEmpty() || this.f7312q.m27953c() == null) {
                Toast.makeText(getContext(), getResources().getString(C2109a0.no_url), 0).show();
            } else if (this.f7312q.m27953c().toString().startsWith("file") || this.f7312q.m27953c().toString().startsWith("/") || C2131v.m27945f(getContext()) || Jzvd.f7280j) {
                m27994a();
                mo27464J();
            } else {
                mo27977S();
            }
        } else {
            final LinearLayout linearLayout = (LinearLayout) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(C2135z.jz_layout_clarity, (ViewGroup) null);
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: cn.jzvd.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    JzvdStd.this.m27967l0(linearLayout, view2);
                }
            };
            for (int i2 = 0; i2 < this.f7312q.f7388b.size(); i2++) {
                String m27952d = this.f7312q.m27952d(i2);
                TextView textView = (TextView) View.inflate(getContext(), C2135z.jz_layout_clarity_item, null);
                textView.setText(m27952d);
                textView.setTag(Integer.valueOf(i2));
                linearLayout.addView(textView, i2);
                textView.setOnClickListener(onClickListener);
                if (i2 == this.f7312q.f7387a) {
                    textView.setTextColor(Color.parseColor("#fff85959"));
                }
            }
            PopupWindow popupWindow = new PopupWindow((View) linearLayout, -2, -2, true);
            this.f7344q0 = popupWindow;
            popupWindow.setContentView(linearLayout);
            this.f7344q0.showAsDropDown(this.f7343p0);
            linearLayout.measure(0, 0);
            this.f7344q0.update(this.f7343p0, -(this.f7343p0.getMeasuredWidth() / 3), -(this.f7343p0.getMeasuredHeight() / 3), Math.round(linearLayout.getMeasuredWidth() * 2), linearLayout.getMeasuredHeight());
        }
    }

    @Override // cn.jzvd.Jzvd, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        super.onStartTrackingTouch(seekBar);
        m27975W();
    }

    @Override // cn.jzvd.Jzvd, android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        super.onStopTrackingTouch(seekBar);
        m27958s0();
    }

    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    @Override // cn.jzvd.Jzvd, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int id = view.getId();
        if (id == C2134y.surface_container) {
            if (motionEvent.getAction() == 1) {
                m27958s0();
                if (this.f7303S) {
                    ?? duration = getDuration();
                    long j = this.f7308a0;
                    char c = duration;
                    if (duration == 0) {
                        c = 1;
                    }
                    this.f7334g0.setProgress((int) ((j * 100) / c));
                }
                if (!this.f7303S && !this.f7302R) {
                    mo27453r0();
                }
            }
        } else if (id == C2134y.bottom_seek_progress) {
            int action = motionEvent.getAction();
            if (action == 0) {
                m27975W();
            } else if (action == 1) {
                m27958s0();
            }
        }
        return super.onTouch(view, motionEvent);
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: p */
    public void mo27963p() {
        super.mo27963p();
        Dialog dialog = this.f7329D0;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: q */
    public void mo27961q() {
        super.mo27961q();
        Dialog dialog = this.f7348u0;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: q0 */
    public void m27960q0() {
        int i = this.f7310o;
        if (i == 1) {
            if (this.f7292H.getVisibility() != 0) {
                return;
            }
            mo27454f0();
        } else if (i == 4) {
            if (this.f7292H.getVisibility() != 0) {
                return;
            }
            mo27456d0();
        } else if (i == 5) {
            if (this.f7292H.getVisibility() != 0) {
                return;
            }
            mo27458b0();
        } else if (i != 6 || this.f7292H.getVisibility() != 0) {
        } else {
            mo27461Y();
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: r */
    public void mo27959r() {
        super.mo27959r();
        Dialog dialog = this.f7353z0;
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    /* renamed from: r0 */
    public void mo27453r0() {
        if (this.f7292H.getVisibility() != 0) {
            setSystemTimeAndBattery();
            this.f7343p0.setText(this.f7312q.m27954b().toString());
        }
        int i = this.f7310o;
        if (i == 1) {
            mo27454f0();
            if (this.f7292H.getVisibility() == 0) {
                return;
            }
            setSystemTimeAndBattery();
        } else if (i == 4) {
            if (this.f7292H.getVisibility() == 0) {
                mo27456d0();
            } else {
                mo27455e0();
            }
        } else if (i != 5) {
        } else {
            if (this.f7292H.getVisibility() == 0) {
                mo27458b0();
            } else {
                mo27457c0();
            }
        }
    }

    /* renamed from: s0 */
    public void m27958s0() {
        m27975W();
        f7325e0 = new Timer();
        C2107b c2107b = new C2107b();
        this.f7347t0 = c2107b;
        f7325e0.schedule(c2107b, 2500L);
    }

    public void setAllControlsVisiblity(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f7291G.setVisibility(i);
        this.f7292H.setVisibility(i2);
        this.f7285A.setVisibility(i3);
        this.f7335h0.setVisibility(i4);
        this.f7337j0.setVisibility(i5);
        this.f7334g0.setVisibility(8);
        this.f7346s0.setVisibility(i7);
    }

    public void setBatteryLevel() {
        int i = f7324d0;
        if (i < 15) {
            this.f7340m0.setBackgroundResource(C2133x.jz_battery_level_10);
        } else if (i >= 15 && i < 40) {
            this.f7340m0.setBackgroundResource(C2133x.jz_battery_level_30);
        } else if (i >= 40 && i < 60) {
            this.f7340m0.setBackgroundResource(C2133x.jz_battery_level_50);
        } else if (i >= 60 && i < 80) {
            this.f7340m0.setBackgroundResource(C2133x.jz_battery_level_70);
        } else if (i >= 80 && i < 95) {
            this.f7340m0.setBackgroundResource(C2133x.jz_battery_level_90);
        } else if (i < 95 || i > 100) {
        } else {
            this.f7340m0.setBackgroundResource(C2133x.jz_battery_level_100);
        }
    }

    @Override // cn.jzvd.Jzvd
    public void setBufferProgress(int i) {
        super.setBufferProgress(i);
        if (i != 0) {
            this.f7334g0.setSecondaryProgress(i);
        }
    }

    @Override // cn.jzvd.Jzvd
    public void setScreenFullscreen() {
        super.setScreenFullscreen();
        this.f7287C.setImageResource(C2133x.jz_shrink);
        this.f7333f0.setVisibility(0);
        this.f7338k0.setVisibility(4);
        this.f7339l0.setVisibility(0);
        if (this.f7312q.f7388b.size() == 1) {
            this.f7343p0.setVisibility(8);
        } else {
            this.f7343p0.setText(this.f7312q.m27954b().toString());
            this.f7343p0.setVisibility(0);
        }
        m27974X((int) getResources().getDimension(C2132w.jz_start_button_w_h_fullscreen));
        setSystemTimeAndBattery();
    }

    @Override // cn.jzvd.Jzvd
    public void setScreenNormal() {
        super.setScreenNormal();
        this.f7287C.setImageResource(C2133x.jz_enlarge);
        this.f7333f0.setVisibility(8);
        this.f7338k0.setVisibility(4);
        m27974X((int) getResources().getDimension(C2132w.jz_start_button_w_h_normal));
        this.f7339l0.setVisibility(8);
        this.f7343p0.setVisibility(8);
    }

    @Override // cn.jzvd.Jzvd
    public void setScreenTiny() {
        super.setScreenTiny();
        this.f7338k0.setVisibility(0);
        setAllControlsVisiblity(4, 4, 4, 4, 4, 4, 4);
        this.f7339l0.setVisibility(8);
        this.f7343p0.setVisibility(8);
    }

    public void setSystemTimeAndBattery() {
        this.f7341n0.setText(new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date()));
        if (System.currentTimeMillis() - f7323c0 <= 30000) {
            setBatteryLevel();
            return;
        }
        f7323c0 = System.currentTimeMillis();
        getContext().registerReceiver(this.f7332G0, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    }

    @Override // cn.jzvd.Jzvd
    public void setUp(C2129t c2129t, int i, Class cls) {
        super.setUp(c2129t, i, cls);
        this.f7336i0.setText(c2129t.f7389c);
        setScreen(i);
    }

    /* renamed from: t0 */
    public void m27957t0() {
        int i = this.f7310o;
        if (i == 4) {
            this.f7285A.setVisibility(0);
            this.f7285A.setImageResource(C2133x.jz_click_pause_selector);
            this.f7342o0.setVisibility(8);
        } else if (i == 7) {
            this.f7285A.setVisibility(4);
            this.f7342o0.setVisibility(8);
        } else if (i != 6) {
            this.f7285A.setImageResource(C2133x.jz_click_play_selector);
            this.f7342o0.setVisibility(8);
        } else {
            this.f7285A.setVisibility(0);
            this.f7285A.setImageResource(C2133x.jz_click_replay_selector);
            this.f7342o0.setVisibility(0);
        }
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: x */
    public void mo27450x(Context context) {
        super.mo27450x(context);
        this.f7339l0 = (LinearLayout) findViewById(C2134y.battery_time_layout);
        this.f7334g0 = (ProgressBar) findViewById(C2134y.bottom_progress);
        this.f7336i0 = (TextView) findViewById(C2134y.title);
        this.f7333f0 = (ImageView) findViewById(C2134y.back);
        this.f7337j0 = (ImageView) findViewById(C2134y.thumb);
        this.f7335h0 = (ProgressBar) findViewById(C2134y.loading);
        this.f7338k0 = (ImageView) findViewById(C2134y.back_tiny);
        this.f7340m0 = (ImageView) findViewById(C2134y.battery_level);
        this.f7341n0 = (TextView) findViewById(C2134y.video_current_time);
        this.f7342o0 = (TextView) findViewById(C2134y.replay_text);
        this.f7343p0 = (TextView) findViewById(C2134y.clarity);
        this.f7345r0 = (TextView) findViewById(C2134y.retry_btn);
        this.f7346s0 = (LinearLayout) findViewById(C2134y.retry_layout);
        this.f7337j0.setOnClickListener(this);
        this.f7333f0.setOnClickListener(this);
        this.f7338k0.setOnClickListener(this);
        this.f7343p0.setOnClickListener(this);
        this.f7345r0.setOnClickListener(this);
    }

    @Override // cn.jzvd.Jzvd
    /* renamed from: y */
    public void mo27956y() {
        super.mo27956y();
        m27975W();
    }
}
