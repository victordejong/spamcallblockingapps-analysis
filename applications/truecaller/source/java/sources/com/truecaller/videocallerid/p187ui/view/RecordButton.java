package com.truecaller.videocallerid.p187ui.view;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p966l.C15906b;
import p193e.p194a.p947k.p972m.C16150x;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR%\u0010\u0010\u001a\n \u000b*\u0004\u0018\u00010\n0\n8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/truecaller/videocallerid/ui/view/RecordButton;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Ls1/s;", "onDetachedFromWindow", "()V", "g1", "Le/a/k/m/x;", "t", "Le/a/k/m/x;", "binding", "Landroid/animation/ObjectAnimator;", "kotlin.jvm.PlatformType", "u", "Ls1/g;", "getCountDownAnimator", "()Landroid/animation/ObjectAnimator;", "countDownAnimator", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.view.RecordButton */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/view/RecordButton.class */
public final class RecordButton extends ConstraintLayout {

    /* renamed from: v */
    public static final /* synthetic */ int f16099v = 0;

    /* renamed from: t */
    public final C16150x f16100t;

    /* renamed from: u */
    public final g f16101u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RecordButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C4718R.layout.view_video_caller_id_record_button, this);
        int i = C4718R.C4720id.progressBar;
        RecordingProgressView recordingProgressView = (RecordingProgressView) findViewById(i);
        if (recordingProgressView != null) {
            i = C4718R.C4720id.recordImageView;
            ImageView imageView = (ImageView) findViewById(i);
            if (imageView != null) {
                i = C4718R.C4720id.stopIconImageView;
                ImageView imageView2 = (ImageView) findViewById(i);
                if (imageView2 != null) {
                    C16150x c16150x = new C16150x(this, recordingProgressView, imageView, imageView2);
                    l.d(c16150x, "ViewVideoCallerIdRecordB…ater.from(context), this)");
                    this.f16100t = c16150x;
                    this.f16101u = C25225a.m3978P1(new C15906b(this));
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    public final ObjectAnimator getCountDownAnimator() {
        return (ObjectAnimator) this.f16101u.getValue();
    }

    /* renamed from: g1 */
    public final void m34433g1() {
        getCountDownAnimator().cancel();
        C16150x c16150x = this.f16100t;
        RecordingProgressView recordingProgressView = c16150x.f45582b;
        Animator animator = recordingProgressView.f16107f;
        if (animator != null) {
            animator.cancel();
        }
        recordingProgressView.setProgress(0.0f);
        recordingProgressView.f16106e = recordingProgressView.getResources().getDimension(C4718R.dimen.vid_recording_progress_bg_padding_start);
        recordingProgressView.m34432a();
        Context context = recordingProgressView.getContext();
        int i = C4718R.color.video_caller_id_recording_progress_bg_start;
        Object obj = C26467a.f74235a;
        recordingProgressView.f16103b.setColor(C26467a.C26471d.m1787a(context, i));
        recordingProgressView.invalidate();
        ImageView imageView = c16150x.f45583c;
        imageView.animate().cancel();
        imageView.setScaleX(0.0f);
        imageView.setScaleY(0.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        getCountDownAnimator().cancel();
        super.onDetachedFromWindow();
    }
}
