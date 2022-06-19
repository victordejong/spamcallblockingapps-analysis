package com.truecaller.callrecording.p154ui.player;

import android.content.Context;
import android.text.format.DateUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.C3624R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p982k0.p985j.C16324b;
import p193e.p194a.p982k0.p989n.p995e.AbstractC16416d;
import p193e.p194a.p982k0.p989n.p995e.AbstractC16418f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0010\u001a\u00020\u00052\b\b\u0001\u0010\u000f\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0007J\u0015\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\u0015\u0010\tR$\u0010\u001b\u001a\u0004\u0018\u00010\u00118��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u0014R\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/k0/n/e/f;", "", VastIconXmlManager.DURATION, "Ls1/s;", "F", "(I)V", "e", "()V", "onAttachedToWindow", "percent", "millis", "Y", "(II)V", "resId", "d", "Le/a/k0/n/e/d;", "mediaPlayerPresenter", "setPresenter", "(Le/a/k0/n/e/d;)V", "onDetachedFromWindow", "t", "Le/a/k0/n/e/d;", "getPresenter$callrecorder_release", "()Le/a/k0/n/e/d;", "setPresenter$callrecorder_release", "presenter", "Le/a/k0/j/b;", "u", "Le/a/k0/j/b;", "binding", "callrecorder_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.callrecording.ui.player.CallRecordingPlayerView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/player/CallRecordingPlayerView.class */
public final class CallRecordingPlayerView extends ConstraintLayout implements AbstractC16418f {

    /* renamed from: t */
    public AbstractC16416d f10822t;

    /* renamed from: u */
    public final C16324b f10823u;

    /* renamed from: com.truecaller.callrecording.ui.player.CallRecordingPlayerView$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/callrecording/ui/player/CallRecordingPlayerView$a.class */
    public static final class C3643a implements SeekBar.OnSeekBarChangeListener {
        public C3643a() {
            CallRecordingPlayerView.this = r4;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            AbstractC16416d presenter$callrecorder_release;
            if (!z || (presenter$callrecorder_release = CallRecordingPlayerView.this.getPresenter$callrecorder_release()) == null) {
                return;
            }
            presenter$callrecorder_release.mo17420W3(i);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallRecordingPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C3624R.layout.view_call_recording_player, this);
        int i = C3624R.C3626id.currentPosition;
        TextView textView = (TextView) findViewById(i);
        if (textView != null) {
            i = C3624R.C3626id.duration;
            TextView textView2 = (TextView) findViewById(i);
            if (textView2 != null) {
                i = C3624R.C3626id.seekBar;
                SeekBar seekBar = (SeekBar) findViewById(i);
                if (seekBar != null) {
                    C16324b c16324b = new C16324b(this, textView, textView2, seekBar);
                    l.d(c16324b, "ViewCallRecordingPlayerB…ater.from(context), this)");
                    this.f10823u = c16324b;
                    C19286f.m13683U(this, false);
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16418f
    /* renamed from: F */
    public void mo17427F(int i) {
        C19286f.m13683U(this, true);
        TextView textView = this.f10823u.f45944c;
        l.d(textView, "binding.duration");
        textView.setText(DateUtils.formatElapsedTime(i / 1000));
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16418f
    /* renamed from: Y */
    public void mo17426Y(int i, int i2) {
        SeekBar seekBar = this.f10823u.f45945d;
        l.d(seekBar, "binding.seekBar");
        seekBar.setProgress(i);
        TextView textView = this.f10823u.f45943b;
        l.d(textView, "binding.currentPosition");
        textView.setText(DateUtils.formatElapsedTime(i2 / 1000));
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16418f
    /* renamed from: d */
    public void mo17425d(int i) {
        Toast.makeText(getContext(), i, 0).show();
    }

    @Override // p193e.p194a.p982k0.p989n.p995e.AbstractC16418f
    /* renamed from: e */
    public void mo17424e() {
        C19286f.m13683U(this, false);
    }

    public final AbstractC16416d getPresenter$callrecorder_release() {
        return this.f10822t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC16416d abstractC16416d = this.f10822t;
        if (abstractC16416d != null) {
            abstractC16416d.mo9029Y0(this);
        }
        this.f10823u.f45945d.setOnSeekBarChangeListener(new C3643a());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC16416d abstractC16416d = this.f10822t;
        if (abstractC16416d != null) {
            abstractC16416d.mo9806c();
        }
    }

    public final void setPresenter(AbstractC16416d abstractC16416d) {
        l.e(abstractC16416d, "mediaPlayerPresenter");
        if (this.f10822t == null) {
            this.f10822t = abstractC16416d;
            if (abstractC16416d == null) {
                return;
            }
            abstractC16416d.mo9029Y0(this);
        }
    }

    public final void setPresenter$callrecorder_release(AbstractC16416d abstractC16416d) {
        this.f10822t = abstractC16416d;
    }
}
