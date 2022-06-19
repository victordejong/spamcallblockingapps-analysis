package com.truecaller.videocallerid.p187ui.settings;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.Group;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.manageincomingvideo.ManageIncomingVideoSettingsActivity;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.p187ui.view.PreviewVideoType;
import com.truecaller.videocallerid.utils.ReceiveVideoPreferences;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p948a.p962i.AbstractC15790a;
import p193e.p194a.p947k.p948a.p962i.AbstractC15791b;
import p193e.p194a.p947k.p948a.p962i.AbstractC15792c;
import p193e.p194a.p947k.p948a.p962i.C15794e;
import p193e.p194a.p947k.p948a.p962i.C15795f;
import p193e.p194a.p947k.p948a.p962i.C15801h;
import p193e.p194a.p947k.p948a.p962i.C15802i;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p969c.C15993h1;
import p193e.p194a.p947k.p972m.C16151y;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.h;
import s1.k;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u000e\u0010\u0005J\u001f\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\tJ\u0017\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\tJ\u000f\u0010\u001b\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u001f\u0010!\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0015\u0010$\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u0006¢\u0006\u0004\b$\u0010\tJ\u001f\u0010(\u001a\u00020\u00032\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0003H\u0014¢\u0006\u0004\b*\u0010\u0005R\u001d\u00100\u001a\u00020+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/R\"\u00108\u001a\u0002018��@��X\u0081.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u0010@\u001a\u0002098��@��X\u0081.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?¨\u0006A"}, d2 = {"Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/k/a/i/c;", "Ls1/s;", "onAttachedToWindow", "()V", "", "visible", "b0", "(Z)V", "", "stringRes", "setReceiveVideoDescription", "(I)V", "I0", "Landroid/view/View;", "changedView", RemoteMessageConst.Notification.VISIBILITY, "onVisibilityChanged", "(Landroid/view/View;I)V", "enabled", "setVideoCallerIdInitialSetting", "Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;", "type", "setConfigureButtonType", "(Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;)V", "setEnableConfigureButton", "L", "i0", "Le/a/k/a/k/l;", "videoConfig", "Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;", "previewVideoType", "f", "(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;)V", AnalyticsConstants.SHOW, "setShouldShowRecommendation", "", "receiveVideoSettings", "receiveVideoSettingsDesc", AbstractC2405c.f7629a, "(Ljava/lang/String;Ljava/lang/String;)V", "onDetachedFromWindow", "Le/a/k/m/y;", "x", "Ls1/g;", "getBinding", "()Le/a/k/m/y;", "binding", "Le/a/k/a/i/b;", "v", "Le/a/k/a/i/b;", "getPresenter$video_caller_id_release", "()Le/a/k/a/i/b;", "setPresenter$video_caller_id_release", "(Le/a/k/a/i/b;)V", "presenter", "Le/a/k/c/e1;", "w", "Le/a/k/c/e1;", "getVideoCallerIdRouter$video_caller_id_release", "()Le/a/k/c/e1;", "setVideoCallerIdRouter$video_caller_id_release", "(Le/a/k/c/e1;)V", "videoCallerIdRouter", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingsView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView.class */
public final class VideoCallerIdSettingsView extends AbstractC15790a implements AbstractC15792c {
    @Inject

    /* renamed from: v */
    public AbstractC15791b f16051v;
    @Inject

    /* renamed from: w */
    public AbstractC15980e1 f16052w;

    /* renamed from: x */
    public final g f16053x;

    /* renamed from: com.truecaller.videocallerid.ui.settings.VideoCallerIdSettingsView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView$a.class */
    public static final class C4736a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4736a() {
            super(0);
            VideoCallerIdSettingsView.this = r4;
        }

        public Object invoke() {
            C15795f c15795f = (C15795f) VideoCallerIdSettingsView.this.getPresenter$video_caller_id_release();
            if (c15795f.f44554e.isAvailable()) {
                d.w2(c15795f, (f) null, (j0) null, new C15794e(c15795f, null), 3, (Object) null);
            }
            ReceiveVideoPreferences mo18004e = c15795f.f44557h.mo18004e();
            k kVar = (!c15795f.f44554e.mo17918k() || mo18004e != ReceiveVideoPreferences.Everyone) ? (!c15795f.f44554e.isAvailable() || mo18004e != ReceiveVideoPreferences.Contacts) ? new k(Integer.valueOf(C4718R.string.vid_settings_no_one), Integer.valueOf(C4718R.string.vid_settings_no_one_desc)) : new k(Integer.valueOf(C4718R.string.vid_settings_contacts), Integer.valueOf(C4718R.string.vid_settings_contacts_desc)) : new k(Integer.valueOf(C4718R.string.vid_settings_everyone), Integer.valueOf(C4718R.string.vid_settings_everyone_desc));
            AbstractC19223c0 abstractC19223c0 = c15795f.f44560k;
            AbstractC15792c abstractC15792c = (AbstractC15792c) c15795f.f57683a;
            if (abstractC15792c != null) {
                String mo13768b = abstractC19223c0.mo13768b(((Number) kVar.a).intValue(), new Object[0]);
                l.d(mo13768b, "getString(receiveVideoSettings.first)");
                String mo13768b2 = abstractC19223c0.mo13768b(((Number) kVar.b).intValue(), abstractC19223c0.mo13768b(C4718R.string.video_caller_id, new Object[0]));
                l.d(mo13768b2, "getString(receiveVideoSe….string.video_caller_id))");
                abstractC15792c.mo18305c(mo13768b, mo13768b2);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoCallerIdSettingsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f16053x = C25225a.m3982O1(h.c, new C15801h(this, context));
        SwitchCompat switchCompat = getBinding().f45593j;
        l.d(switchCompat, "binding.settingSwitch");
        switchCompat.setText(context.getString(C4718R.string.vid_show_video_caller_id, context.getString(C4718R.string.video_caller_id)));
    }

    public final C16151y getBinding() {
        return (C16151y) this.f16053x.getValue();
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    /* renamed from: I0 */
    public void mo18308I0() {
        AbstractC15980e1 abstractC15980e1 = this.f16052w;
        if (abstractC15980e1 == null) {
            l.l("videoCallerIdRouter");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        Objects.requireNonNull((C15993h1) abstractC15980e1);
        l.e(context, AnalyticsConstants.CONTEXT);
        context.startActivity(new Intent(context, ManageIncomingVideoSettingsActivity.class));
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    /* renamed from: L */
    public void mo18307L() {
        AbstractC15980e1 abstractC15980e1 = this.f16052w;
        if (abstractC15980e1 == null) {
            l.l("videoCallerIdRouter");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        ((C15993h1) abstractC15980e1).m18020a(context, RecordingScreenModes.EDIT, new OnboardingData(null, OnboardingContext.SETTINGS, 1, null));
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    /* renamed from: b0 */
    public void mo18306b0(boolean z) {
        Group group = getBinding().f45594k;
        l.d(group, "binding.showYourVideoSettingGroup");
        C19286f.m13683U(group, z);
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    /* renamed from: c */
    public void mo18305c(String str, String str2) {
        l.e(str, "receiveVideoSettings");
        l.e(str2, "receiveVideoSettingsDesc");
        C16151y binding = getBinding();
        TextView textView = binding.f45592i;
        l.d(textView, "selectedPreferences");
        textView.setText(str);
        TextView textView2 = binding.f45589f;
        l.d(textView2, "receiveVideoDescription");
        textView2.setText(str2);
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    /* renamed from: f */
    public void mo18304f(AbstractC15836l abstractC15836l, PreviewVideoType previewVideoType) {
        l.e(abstractC15836l, "videoConfig");
        l.e(previewVideoType, "previewVideoType");
        getBinding().f45588e.m34436f1(abstractC15836l, previewVideoType, null);
    }

    public final AbstractC15791b getPresenter$video_caller_id_release() {
        AbstractC15791b abstractC15791b = this.f16051v;
        if (abstractC15791b != null) {
            return abstractC15791b;
        }
        l.l("presenter");
        throw null;
    }

    public final AbstractC15980e1 getVideoCallerIdRouter$video_caller_id_release() {
        AbstractC15980e1 abstractC15980e1 = this.f16052w;
        if (abstractC15980e1 != null) {
            return abstractC15980e1;
        }
        l.l("videoCallerIdRouter");
        throw null;
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    /* renamed from: i0 */
    public void mo18303i0() {
        AbstractC15980e1 abstractC15980e1 = this.f16052w;
        if (abstractC15980e1 == null) {
            l.l("videoCallerIdRouter");
            throw null;
        }
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        C19291g.m13643A1(abstractC15980e1, context, PreviewModes.ON_BOARDING, new OnboardingData(null, OnboardingContext.SETTINGS, 1, null), null, null, 24, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC15791b abstractC15791b = this.f16051v;
        if (abstractC15791b == null) {
            l.l("presenter");
            throw null;
        }
        ((C15795f) abstractC15791b).mo9029Y0(this);
        C16151y binding = getBinding();
        binding.f45593j.setOnCheckedChangeListener(new C15802i(this));
        binding.f45585b.setOnClickListener(new y(0, this));
        TextView textView = binding.f45590g;
        l.d(textView, "receiveVideoSetting");
        Context context = getContext();
        int i = C4718R.string.vid_settings_receive_video;
        Context context2 = getContext();
        int i2 = C4718R.string.video_caller_id;
        textView.setText(context.getString(i, context2.getString(i2)));
        TextView textView2 = binding.f45589f;
        l.d(textView2, "receiveVideoDescription");
        textView2.setText(getContext().getString(C4718R.string.vid_settings_receive_video_description, getContext().getString(i2)));
        binding.f45587d.setOnClickListener(new y(1, this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        AbstractC15791b abstractC15791b = this.f16051v;
        if (abstractC15791b == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC15791b).mo9806c();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        l.e(view, "changedView");
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            C19286f.m13656w(this, new C4736a());
        }
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    public void setConfigureButtonType(ConfigureButtonType configureButtonType) {
        l.e(configureButtonType, "type");
        Button button = getBinding().f45585b;
        button.setText(button.getContext().getString(configureButtonType.getButtonTextResource(), button.getContext().getString(C4718R.string.video_caller_id)));
        button.setTag(configureButtonType);
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    public void setEnableConfigureButton(boolean z) {
        Button button = getBinding().f45585b;
        l.d(button, "binding.configureButton");
        button.setEnabled(z);
    }

    public final void setPresenter$video_caller_id_release(AbstractC15791b abstractC15791b) {
        l.e(abstractC15791b, "<set-?>");
        this.f16051v = abstractC15791b;
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    public void setReceiveVideoDescription(int i) {
        TextView textView = getBinding().f45589f;
        l.d(textView, "binding.receiveVideoDescription");
        textView.setText(getContext().getString(i, Integer.valueOf(C4718R.string.video_caller_id)));
    }

    public final void setShouldShowRecommendation(boolean z) {
        TextView textView = getBinding().f45591h;
        l.d(textView, "binding.recommendationText");
        C19286f.m13683U(textView, z);
    }

    @Override // p193e.p194a.p947k.p948a.p962i.AbstractC15792c
    public void setVideoCallerIdInitialSetting(boolean z) {
        SwitchCompat switchCompat = getBinding().f45593j;
        l.d(switchCompat, "binding.settingSwitch");
        switchCompat.setChecked(z);
    }

    public final void setVideoCallerIdRouter$video_caller_id_release(AbstractC15980e1 abstractC15980e1) {
        l.e(abstractC15980e1, "<set-?>");
        this.f16052w = abstractC15980e1;
    }
}
