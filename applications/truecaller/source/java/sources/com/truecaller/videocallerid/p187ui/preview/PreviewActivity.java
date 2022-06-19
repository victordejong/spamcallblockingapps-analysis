package com.truecaller.videocallerid.p187ui.preview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentManager;
import com.mopub.network.ImpressionData;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.p187ui.view.PreviewVideoType;
import com.truecaller.videocallerid.p187ui.view.PreviewView;
import com.truecaller.videocallerid.upload.VideoUploadService;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1806j0.AbstractC26410a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p916i5.p917e.C15322a;
import p193e.p194a.p947k.p948a.p953d.AbstractC15655l;
import p193e.p194a.p947k.p948a.p953d.C15639a;
import p193e.p194a.p947k.p948a.p953d.C15652i;
import p193e.p194a.p947k.p948a.p958f.AbstractC15691b;
import p193e.p194a.p947k.p948a.p958f.AbstractC15697h;
import p193e.p194a.p947k.p948a.p958f.C15699j;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.C15850r;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p969c.C15993h1;
import p193e.p194a.p947k.p972m.C16128b;
import p193e.p194a.p947k.p972m.C16148v;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018�� u2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001vB\u0007¢\u0006\u0004\bt\u0010\u001fJ\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\f\u0010\rJ+\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010$\u001a\u00020\u000b2\u0006\u0010!\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b$\u0010%J\u0019\u0010'\u001a\u00020&2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u000bH\u0016¢\u0006\u0004\b)\u0010\u001fJ\u0017\u0010,\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010.\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b.\u0010-J\u0017\u0010/\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b/\u0010-J\u0019\u00100\u001a\u00020\u000b2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u000bH\u0016¢\u0006\u0004\b2\u0010\u001fJ\u000f\u00103\u001a\u00020\u000eH\u0016¢\u0006\u0004\b3\u00104J\u0011\u00105\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\u000bH\u0016¢\u0006\u0004\b7\u0010\u001fJ\u000f\u00108\u001a\u00020\u000bH\u0016¢\u0006\u0004\b8\u0010\u001fJ\u000f\u00109\u001a\u00020\u000bH\u0016¢\u0006\u0004\b9\u0010\u001fJ\u000f\u0010:\u001a\u00020\u000bH\u0014¢\u0006\u0004\b:\u0010\u001fJ\u000f\u0010;\u001a\u00020\u000bH\u0016¢\u0006\u0004\b;\u0010\u001fR\u0016\u0010=\u001a\u00020\u000e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0018\u0010<R\"\u0010E\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR$\u0010M\u001a\u0004\u0018\u00010F8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\"\u0010U\u001a\u00020N8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u001d\u0010]\u001a\u00020X8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\R$\u0010b\u001a\u0004\u0018\u00010\u000e8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b^\u0010<\u001a\u0004\b_\u00104\"\u0004\b`\u0010aR\"\u0010j\u001a\u00020c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bd\u0010e\u001a\u0004\bf\u0010g\"\u0004\bh\u0010iR(\u0010o\u001a\u00020>8\u0006@\u0006X\u0087.¢\u0006\u0018\n\u0004\bk\u0010@\u0012\u0004\bn\u0010\u001f\u001a\u0004\bl\u0010B\"\u0004\bm\u0010DR\u0018\u0010s\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010r¨\u0006w"}, d2 = {"Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;", "Ln3/b/a/h;", "Le/a/k/a/f/h;", "Le/a/k/a/d/l;", "", "title", "", "qa", "(I)Ljava/lang/CharSequence;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", AnalyticsConstants.NAME, AnalyticsConstants.PHONE, ImpressionData.COUNTRY, "L3", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Le/a/k/a/k/l;", "videoConfig", "Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;", "previewVideoType", "f", "(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;)V", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", "avatarXConfig", "setAvatarConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "v5", "()V", "Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;", "recordingMode", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "onboardingData", "J", "(Lcom/truecaller/videocallerid/ui/recording/RecordingScreenModes;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)V", "", "O5", "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)Z", "Z9", "Lcom/truecaller/videocallerid/ui/preview/PreviewActions;", "action", "h7", "(Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V", "H", "s8", "m3", "(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;)V", "t", "d7", "()Ljava/lang/String;", "k0", "()Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "E7", "k3", "onBackPressed", "onDestroy", "q3", "Ljava/lang/String;", "screenMode", "Le/a/p5/h0;", "m", "Le/a/p5/h0;", "getResourceProvider", "()Le/a/p5/h0;", "setResourceProvider", "(Le/a/p5/h0;)V", "resourceProvider", "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;", "e", "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;", "k7", "()Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;", "setSelectedPredefinedVideo", "(Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;)V", "selectedPredefinedVideo", "Le/a/k/c/e1;", "j", "Le/a/k/c/e1;", "getRouter", "()Le/a/k/c/e1;", "setRouter", "(Le/a/k/c/e1;)V", "router", "g", "Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;", "Le/a/k/m/b;", "h", "Ls1/g;", "pa", "()Le/a/k/m/b;", "binding", "d", "k9", "setPreviewVideoPath", "(Ljava/lang/String;)V", "previewVideoPath", "Le/a/k/a/f/j;", "i", "Le/a/k/a/f/j;", "getPresenter", "()Le/a/k/a/f/j;", "setPresenter", "(Le/a/k/a/f/j;)V", "presenter", "k", "getThemeProvider", "setThemeProvider", "getThemeProvider$annotations", "themeProvider", "Le/a/b0/a/b/a;", "n", "Le/a/b0/a/b/a;", "avatarPresenter", "<init>", "o", C22021b.f61237c, "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.preview.PreviewActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/preview/PreviewActivity.class */
public final class PreviewActivity extends AbstractC15691b implements AbstractC15697h, AbstractC15655l {

    /* renamed from: o */
    public static final C4734b f16024o = new C4734b(null);

    /* renamed from: d */
    public String f16025d;

    /* renamed from: e */
    public OutgoingVideoDetails f16026e;

    /* renamed from: f */
    public String f16027f;

    /* renamed from: g */
    public OnboardingData f16028g;

    /* renamed from: h */
    public final g f16029h = C25225a.m3982O1(h.c, new C4733a(this));
    @Inject

    /* renamed from: i */
    public C15699j f16030i;
    @Inject

    /* renamed from: j */
    public AbstractC15980e1 f16031j;
    @Inject

    /* renamed from: k */
    public AbstractC19233h0 f16032k;
    @Inject

    /* renamed from: l */
    public C15652i f16033l;
    @Inject

    /* renamed from: m */
    public AbstractC19233h0 f16034m;

    /* renamed from: n */
    public C8243a f16035n;

    /* renamed from: com.truecaller.videocallerid.ui.preview.PreviewActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/preview/PreviewActivity$a.class */
    public static final class C4733a extends m implements a<C16128b> {

        /* renamed from: b */
        public final /* synthetic */ n3.b.a.h f16036b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4733a(n3.b.a.h hVar) {
            super(0);
            this.f16036b = hVar;
        }

        public Object invoke() {
            LayoutInflater layoutInflater = this.f16036b.getLayoutInflater();
            l.d(layoutInflater, "layoutInflater");
            View inflate = layoutInflater.inflate(C4718R.layout.activity_video_caller_id_preview, (ViewGroup) null, false);
            int i = C4718R.C4720id.background;
            AppCompatImageView appCompatImageView = (AppCompatImageView) inflate.findViewById(i);
            if (appCompatImageView != null) {
                i = C4718R.C4720id.cancelText;
                TextView textView = (TextView) inflate.findViewById(i);
                if (textView != null) {
                    i = C4718R.C4720id.closeButton;
                    ImageView imageView = (ImageView) inflate.findViewById(i);
                    if (imageView != null) {
                        i = C4718R.C4720id.confirmButton;
                        Button button = (Button) inflate.findViewById(i);
                        if (button != null) {
                            i = C4718R.C4720id.onboardingInstruction;
                            TextView textView2 = (TextView) inflate.findViewById(i);
                            if (textView2 != null) {
                                i = C4718R.C4720id.onboardingwDescription;
                                TextView textView3 = (TextView) inflate.findViewById(i);
                                if (textView3 != null) {
                                    i = C4718R.C4720id.previewDescription;
                                    TextView textView4 = (TextView) inflate.findViewById(i);
                                    if (textView4 != null) {
                                        i = C4718R.C4720id.previewInstruction;
                                        TextView textView5 = (TextView) inflate.findViewById(i);
                                        if (textView5 != null) {
                                            i = C4718R.C4720id.previewShadow;
                                            View findViewById = inflate.findViewById(i);
                                            if (findViewById != null) {
                                                i = C4718R.C4720id.previewTitle;
                                                TextView textView6 = (TextView) inflate.findViewById(i);
                                                if (textView6 != null) {
                                                    i = C4718R.C4720id.previewView;
                                                    PreviewView previewView = (PreviewView) inflate.findViewById(i);
                                                    if (previewView != null) {
                                                        i = C4718R.C4720id.uploadStateTv;
                                                        TextView textView7 = (TextView) inflate.findViewById(i);
                                                        if (textView7 != null) {
                                                            i = C4718R.C4720id.uploadingProgressBar;
                                                            ProgressBar progressBar = (ProgressBar) inflate.findViewById(i);
                                                            if (progressBar != null) {
                                                                return new C16128b((ConstraintLayout) inflate, appCompatImageView, textView, imageView, button, textView2, textView3, textView4, textView5, findViewById, textView6, previewView, textView7, progressBar);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.preview.PreviewActivity$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/preview/PreviewActivity$b.class */
    public static final class C4734b {
        public C4734b(f fVar) {
        }

        /* renamed from: a */
        public final Intent m34456a(Context context, String str, OnboardingData onboardingData, String str2, OutgoingVideoDetails outgoingVideoDetails) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(str, "screenModes");
            Intent intent = new Intent(context, PreviewActivity.class);
            intent.putExtra("argScreenMode", str);
            if (onboardingData != null) {
                intent.putExtra("onboardingData", onboardingData);
            }
            intent.putExtra("previewVideoPath", str2);
            intent.putExtra("predefinedVideo", outgoingVideoDetails);
            return intent;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: E7 */
    public void mo18508E7() {
        C15699j c15699j = this.f16030i;
        if (c15699j == null) {
            l.l("presenter");
            throw null;
        }
        PreviewModes m18485Lj = c15699j.m18485Lj();
        if (m18485Lj == null) {
            return;
        }
        int title = m18485Lj.getTitle();
        int description = m18485Lj.getDescription();
        int actionButton = m18485Lj.getActionButton();
        C16128b m34458pa = m34458pa();
        TextView textView = m34458pa.f45456k;
        l.d(textView, "previewTitle");
        textView.setText(m34457qa(title));
        if (l.a(mo18502d7(), PreviewModes.ON_BOARDING.name())) {
            TextView textView2 = m34458pa.f45453h;
            l.d(textView2, "previewDescription");
            C19286f.m13683U(textView2, false);
            TextView textView3 = m34458pa.f45452g;
            l.d(textView3, "onboardingwDescription");
            C19286f.m13683U(textView3, true);
            TextView textView4 = m34458pa.f45452g;
            l.d(textView4, "onboardingwDescription");
            textView4.setText(getString(description));
            m34458pa.f45447b.setImageResource(C15322a.m18926b(this, C4718R.attr.vid_onboarding_bg));
        } else {
            TextView textView5 = m34458pa.f45453h;
            l.d(textView5, "previewDescription");
            C19286f.m13683U(textView5, true);
            TextView textView6 = m34458pa.f45452g;
            l.d(textView6, "onboardingwDescription");
            C19286f.m13683U(textView6, false);
            TextView textView7 = m34458pa.f45453h;
            l.d(textView7, "previewDescription");
            textView7.setText(getString(description));
            m34458pa.f45447b.setImageResource(C15322a.m18926b(this, C4718R.attr.vid_preview_bg));
        }
        TextView textView8 = m34458pa.f45452g;
        l.d(textView8, "onboardingwDescription");
        textView8.setText(getString(description));
        Button button = m34458pa.f45450e;
        l.d(button, "confirmButton");
        button.setText(getString(actionButton));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: H */
    public void mo18507H(PreviewActions previewActions) {
        l.e(previewActions, "action");
        C16128b m34458pa = m34458pa();
        TextView textView = m34458pa.f45458m;
        AbstractC19233h0 abstractC19233h0 = this.f16032k;
        if (abstractC19233h0 == null) {
            l.l("themeProvider");
            throw null;
        }
        textView.setTextColor(abstractC19233h0.mo13758l(C4718R.attr.tcx_alertBackgroundRed));
        TextView textView2 = m34458pa.f45458m;
        l.d(textView2, "uploadStateTv");
        textView2.setText(getString(C4718R.string.vid_preview_failed_to_upload));
        TextView textView3 = m34458pa.f45456k;
        l.d(textView3, "previewTitle");
        int i = C4718R.string.vid_preview_failed_video_upload_title;
        int i2 = C4718R.string.video_caller_id;
        textView3.setText(getString(i, new Object[]{getString(i2)}));
        TextView textView4 = m34458pa.f45453h;
        l.d(textView4, "previewDescription");
        textView4.setText(getString(C4718R.string.vid_preview_failed_video_upload_description, new Object[]{getString(i2)}));
        Button button = m34458pa.f45450e;
        l.d(button, "confirmButton");
        button.setText(getString(C4718R.string.vid_preview_retry_to_upload));
        Button button2 = m34458pa.f45450e;
        l.d(button2, "confirmButton");
        button2.setTag(previewActions);
        TextView textView5 = m34458pa.f45454i;
        l.d(textView5, "previewInstruction");
        C19286f.m13689O(textView5);
        TextView textView6 = m34458pa.f45448c;
        l.d(textView6, "cancelText");
        C19286f.m13684T(textView6);
        TextView textView7 = m34458pa.f45458m;
        l.d(textView7, "uploadStateTv");
        C19286f.m13684T(textView7);
        ProgressBar progressBar = m34458pa.f45459n;
        l.d(progressBar, "uploadingProgressBar");
        C19286f.m13689O(progressBar);
        AppCompatImageView appCompatImageView = m34458pa.f45447b;
        l.d(appCompatImageView, "background");
        C19286f.m13689O(appCompatImageView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: J */
    public void mo18506J(RecordingScreenModes recordingScreenModes, OnboardingData onboardingData) {
        l.e(recordingScreenModes, "recordingMode");
        AbstractC15980e1 abstractC15980e1 = this.f16031j;
        if (abstractC15980e1 != null) {
            ((C15993h1) abstractC15980e1).m18020a(this, recordingScreenModes, onboardingData);
        } else {
            l.l("router");
            throw null;
        }
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: L3 */
    public void mo18505L3(String str, String str2, String str3) {
        l.e(str, AnalyticsConstants.NAME);
        String str4 = this.f16027f;
        if (str4 == null) {
            l.l("screenMode");
            throw null;
        } else if (!l.a(str4, PreviewModes.ON_BOARDING.name())) {
            l.e(str, AnalyticsConstants.NAME);
            m34458pa().f45457l.setProfileName(str);
            if (str2 != null) {
                l.e(str2, "number");
                m34458pa().f45457l.setPhoneNumber(str2);
            }
            if (str3 == null) {
                return;
            }
            l.e(str3, ImpressionData.COUNTRY);
            m34458pa().f45457l.setCountry(str3);
        } else {
            AbstractC26410a abstractC26410a = m34458pa().f45457l.f16097t;
            Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
            TextView textView = ((C16148v) abstractC26410a).f45573g;
            l.d(textView, "(binding as ViewVideoCal…wBinding).textProfileName");
            textView.setVisibility(8);
            AbstractC26410a abstractC26410a2 = m34458pa().f45457l.f16097t;
            Objects.requireNonNull(abstractC26410a2, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
            TextView textView2 = ((C16148v) abstractC26410a2).f45571e;
            l.d(textView2, "(binding as ViewVideoCal…eviewBinding).textCountry");
            textView2.setVisibility(8);
            AbstractC26410a abstractC26410a3 = m34458pa().f45457l.f16097t;
            Objects.requireNonNull(abstractC26410a3, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
            TextView textView3 = ((C16148v) abstractC26410a3).f45572f;
            l.d(textView3, "(binding as ViewVideoCal…wBinding).textPhoneNumber");
            textView3.setVisibility(8);
        }
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: O5 */
    public boolean mo18504O5(OnboardingData onboardingData) {
        AbstractC26410a abstractC26410a = m34458pa().f45457l.f16097t;
        Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
        ((C15850r) ((C16148v) abstractC26410a).f45570d.getPresenter$video_caller_id_release()).m18244Oj();
        C15652i c15652i = this.f16033l;
        if (c15652i == null) {
            l.l("communityGuideline");
            throw null;
        }
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        l.d(supportFragmentManager, "supportFragmentManager");
        Objects.requireNonNull(c15652i);
        l.e(supportFragmentManager, "fragmentManager");
        boolean z = false;
        if (!C19291g.m13615K(c15652i.f44194a, "guidelineIsAgreed", false, 2, null)) {
            Objects.requireNonNull(C15639a.f44180j);
            l.e(supportFragmentManager, "fragmentManager");
            C15639a c15639a = new C15639a();
            c15639a.show(supportFragmentManager, C15639a.class.getSimpleName());
            c15639a.setCancelable(false);
            Bundle bundle = new Bundle();
            if (onboardingData != null) {
                bundle.putParcelable("onboardingData", onboardingData);
            }
            c15639a.setArguments(bundle);
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: Z9 */
    public void mo18503Z9() {
        C16128b m34458pa = m34458pa();
        TextView textView = m34458pa.f45458m;
        l.d(textView, "uploadStateTv");
        C19286f.m13689O(textView);
        ProgressBar progressBar = m34458pa.f45459n;
        l.d(progressBar, "uploadingProgressBar");
        C19286f.m13689O(progressBar);
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: d7 */
    public String mo18502d7() {
        String str = this.f16027f;
        if (str != null) {
            return str;
        }
        l.l("screenMode");
        throw null;
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: f */
    public void mo18501f(AbstractC15836l abstractC15836l, PreviewVideoType previewVideoType) {
        l.e(abstractC15836l, "videoConfig");
        l.e(previewVideoType, "previewVideoType");
        m34458pa().f45457l.m34436f1(abstractC15836l, previewVideoType, this.f16035n);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: h7 */
    public void mo18500h7(PreviewActions previewActions) {
        l.e(previewActions, "action");
        C16128b m34458pa = m34458pa();
        C15699j c15699j = this.f16030i;
        if (c15699j == null) {
            l.l("presenter");
            throw null;
        }
        PreviewModes m18485Lj = c15699j.m18485Lj();
        if (m18485Lj == null) {
            return;
        }
        TextView textView = m34458pa.f45458m;
        AbstractC19233h0 abstractC19233h0 = this.f16032k;
        if (abstractC19233h0 == null) {
            l.l("themeProvider");
            throw null;
        }
        textView.setTextColor(abstractC19233h0.mo13758l(C4718R.attr.tcx_textSecondary));
        TextView textView2 = m34458pa.f45458m;
        l.d(textView2, "uploadStateTv");
        textView2.setText(getString(C4718R.string.vid_preview_successfully_uploaded));
        Button button = m34458pa.f45450e;
        l.d(button, "confirmButton");
        button.setText(getString(C4718R.string.vid_preview_got_it));
        Button button2 = m34458pa.f45450e;
        l.d(button2, "confirmButton");
        button2.setTag(previewActions);
        TextView textView3 = m34458pa.f45456k;
        l.d(textView3, "previewTitle");
        textView3.setText(m34457qa(m18485Lj.getTitle()));
        TextView textView4 = m34458pa.f45453h;
        l.d(textView4, "previewDescription");
        textView4.setText(getString(m18485Lj.getDescription()));
        TextView textView5 = m34458pa.f45454i;
        l.d(textView5, "previewInstruction");
        C19286f.m13684T(textView5);
        TextView textView6 = m34458pa.f45448c;
        l.d(textView6, "cancelText");
        C19286f.m13689O(textView6);
        TextView textView7 = m34458pa.f45458m;
        l.d(textView7, "uploadStateTv");
        C19286f.m13684T(textView7);
        ProgressBar progressBar = m34458pa.f45459n;
        l.d(progressBar, "uploadingProgressBar");
        C19286f.m13689O(progressBar);
        AppCompatImageView appCompatImageView = m34458pa.f45447b;
        l.d(appCompatImageView, "background");
        C19286f.m13684T(appCompatImageView);
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: k0 */
    public OnboardingData mo18499k0() {
        return this.f16028g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: k3 */
    public void mo18498k3() {
        C19291g.m13573Y(this).cancel(C4718R.C4720id.vid_upload_service_result_success_notification);
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: k7 */
    public OutgoingVideoDetails mo18497k7() {
        return this.f16026e;
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: k9 */
    public String mo18496k9() {
        return this.f16025d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: m3 */
    public void mo18495m3(OnboardingData onboardingData) {
        VideoUploadService.m34428h(this, onboardingData, this.f16025d);
    }

    public void onBackPressed() {
        PreviewActivity.super.onBackPressed();
        mo18493t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0157  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 505
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.videocallerid.p187ui.preview.PreviewActivity.onCreate(android.os.Bundle):void");
    }

    public void onDestroy() {
        C15699j c15699j = this.f16030i;
        if (c15699j == null) {
            l.l("presenter");
            throw null;
        }
        c15699j.mo9806c();
        PreviewActivity.super.onDestroy();
    }

    /* renamed from: pa */
    public final C16128b m34458pa() {
        return (C16128b) this.f16029h.getValue();
    }

    @Override // p193e.p194a.p947k.p948a.p953d.AbstractC15655l
    /* renamed from: q3 */
    public void mo18547q3() {
        C15699j c15699j = this.f16030i;
        if (c15699j != null) {
            c15699j.m18481Pj(this.f16026e != null);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: qa */
    public final CharSequence m34457qa(int i) {
        String str;
        if (i == C4718R.string.vid_preview_edit_video_title || i == C4718R.string.vid_preview_create_new_video_title || i == C4718R.string.vid_preview_on_boarding_title) {
            str = getString(i, new Object[]{getString(C4718R.string.video_caller_id)});
            l.d(str, "getString(title, getStri….string.video_caller_id))");
        } else {
            str = getString(i);
            l.d(str, "getString(title)");
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: s8 */
    public void mo18494s8(PreviewActions previewActions) {
        l.e(previewActions, "action");
        C16128b m34458pa = m34458pa();
        C15699j c15699j = this.f16030i;
        if (c15699j == null) {
            l.l("presenter");
            throw null;
        }
        PreviewModes m18485Lj = c15699j.m18485Lj();
        if (m18485Lj == null) {
            return;
        }
        TextView textView = m34458pa.f45458m;
        AbstractC19233h0 abstractC19233h0 = this.f16032k;
        if (abstractC19233h0 == null) {
            l.l("themeProvider");
            throw null;
        }
        textView.setTextColor(abstractC19233h0.mo13758l(C4718R.attr.tcx_textSecondary));
        TextView textView2 = m34458pa.f45458m;
        l.d(textView2, "uploadStateTv");
        textView2.setText(getString(C4718R.string.vid_preview_uploading_video));
        TextView textView3 = m34458pa.f45456k;
        l.d(textView3, "previewTitle");
        textView3.setText(m34457qa(m18485Lj.getTitle()));
        TextView textView4 = m34458pa.f45453h;
        l.d(textView4, "previewDescription");
        textView4.setText(getString(m18485Lj.getDescription()));
        Button button = m34458pa.f45450e;
        l.d(button, "confirmButton");
        button.setText(getString(C4718R.string.vid_preview_got_it));
        Button button2 = m34458pa.f45450e;
        l.d(button2, "confirmButton");
        button2.setTag(previewActions);
        TextView textView5 = m34458pa.f45454i;
        l.d(textView5, "previewInstruction");
        C19286f.m13684T(textView5);
        AppCompatImageView appCompatImageView = m34458pa.f45447b;
        l.d(appCompatImageView, "background");
        C19286f.m13684T(appCompatImageView);
        ProgressBar progressBar = m34458pa.f45459n;
        l.d(progressBar, "uploadingProgressBar");
        C19286f.m13684T(progressBar);
        TextView textView6 = m34458pa.f45458m;
        l.d(textView6, "uploadStateTv");
        C19286f.m13684T(textView6);
        TextView textView7 = m34458pa.f45448c;
        l.d(textView7, "cancelText");
        C19286f.m13689O(textView7);
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    public void setAvatarConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, "avatarXConfig");
        AbstractC19233h0 abstractC19233h0 = this.f16034m;
        if (abstractC19233h0 == null) {
            l.l("resourceProvider");
            throw null;
        }
        C8243a c8243a = new C8243a(abstractC19233h0);
        this.f16035n = c8243a;
        C8243a.m28739ok(c8243a, avatarXConfig, false, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: t */
    public void mo18493t() {
        String str = this.f16027f;
        PreviewActions previewActions = null;
        if (str == null) {
            l.l("screenMode");
            throw null;
        }
        if (l.a(str, PreviewModes.PREVIEW.name())) {
            C15699j c15699j = this.f16030i;
            if (c15699j == null) {
                l.l("presenter");
                throw null;
            }
            String str2 = this.f16027f;
            if (str2 == null) {
                l.l("screenMode");
                throw null;
            }
            Button button = m34458pa().f45450e;
            l.d(button, "binding.confirmButton");
            Object tag = button.getTag();
            if (tag instanceof PreviewActions) {
                previewActions = tag;
            }
            c15699j.m18483Nj(str2, previewActions);
        }
        finish();
    }

    @Override // p193e.p194a.p947k.p948a.p958f.AbstractC15697h
    /* renamed from: v5 */
    public void mo18492v5() {
        String mo18502d7 = mo18502d7();
        if (l.a(mo18502d7, PreviewModes.PREVIEW.name()) || l.a(mo18502d7, PreviewModes.UPDATE.name())) {
            TextView textView = m34458pa().f45454i;
            l.d(textView, "binding.previewInstruction");
            C19286f.m13683U(textView, true);
            TextView textView2 = m34458pa().f45451f;
            l.d(textView2, "binding.onboardingInstruction");
            C19286f.m13683U(textView2, false);
        } else if (!l.a(mo18502d7, PreviewModes.ON_BOARDING.name())) {
        } else {
            TextView textView3 = m34458pa().f45454i;
            l.d(textView3, "binding.previewInstruction");
            C19286f.m13683U(textView3, false);
            TextView textView4 = m34458pa().f45451f;
            l.d(textView4, "binding.onboardingInstruction");
            C19286f.m13683U(textView4, true);
        }
    }
}
