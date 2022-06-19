package com.truecaller.videocallerid.p187ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1806j0.AbstractC26410a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p972m.C16148v;
import p193e.p194a.p947k.p972m.C16149w;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ)\u0010\u0012\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0018\u0010\u0017J\u0015\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/truecaller/videocallerid/ui/view/PreviewView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/b0/a/b/a;", "avatarXPresenter", "Ls1/s;", "setAvatar", "(Le/a/b0/a/b/a;)V", "Le/a/k/a/k/l;", "videoConfig", "setCompactPreviewConfig", "(Le/a/k/a/k/l;)V", "setNormalPreviewConfig", "", "showElevation", "setupVideoElevation", "(Z)V", "Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;", "previewVideo", "f1", "(Le/a/k/a/k/l;Lcom/truecaller/videocallerid/ui/view/PreviewVideoType;Le/a/b0/a/b/a;)V", "", AnalyticsConstants.NAME, "setProfileName", "(Ljava/lang/String;)V", "setPhoneNumber", "setCountry", "", "u", "I", "type", "Ln3/j0/a;", "t", "Ln3/j0/a;", "binding", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.view.PreviewView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/view/PreviewView.class */
public final class PreviewView extends ConstraintLayout {

    /* renamed from: t */
    public AbstractC26410a f16097t;

    /* renamed from: u */
    public int f16098u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PreviewView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        C16148v c16148v;
        l.e(context, AnalyticsConstants.CONTEXT);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C4718R.styleable.PreviewView, 0, 0);
        try {
            int i = obtainStyledAttributes.getInt(C4718R.styleable.PreviewView_type, 0);
            this.f16098u = i;
            if (i == 1) {
                c16148v = C16148v.m17802a(LayoutInflater.from(context), this);
                l.d(c16148v, "ViewVideoCallerIdPreview…ntext), this@PreviewView)");
            } else {
                c16148v = C16149w.m17801a(LayoutInflater.from(context), this);
                l.d(c16148v, "ViewVideoCallerIdPreview…ntext), this@PreviewView)");
            }
            this.f16097t = c16148v;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: g1 */
    public static /* synthetic */ void m34435g1(PreviewView previewView, AbstractC15836l abstractC15836l, PreviewVideoType previewVideoType, C8243a c8243a, int i) {
        previewView.m34436f1(abstractC15836l, previewVideoType, null);
    }

    private final void setAvatar(C8243a c8243a) {
        if (this.f16098u != 0) {
            AbstractC26410a abstractC26410a = this.f16097t;
            Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
            C16148v c16148v = (C16148v) abstractC26410a;
            AvatarXView avatarXView = c16148v.f45568b;
            l.d(avatarXView, "viewVideoCallerIdPreviewBinding.avatar");
            avatarXView.setVisibility(0);
            c16148v.f45568b.setPresenter(c8243a);
            return;
        }
        AbstractC26410a abstractC26410a2 = this.f16097t;
        Objects.requireNonNull(abstractC26410a2, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewCompactBinding");
        C16149w c16149w = (C16149w) abstractC26410a2;
        View view = c16149w.f45575b;
        l.d(view, "viewVideoCallerIdPreviewCompactBinding.circle");
        view.setVisibility(0);
        View view2 = c16149w.f45578e;
        l.d(view2, "viewVideoCallerIdPreviewCompactBinding.rect1");
        view2.setVisibility(8);
    }

    private final void setCompactPreviewConfig(AbstractC15836l abstractC15836l) {
        AbstractC26410a abstractC26410a = this.f16097t;
        Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewCompactBinding");
        FullScreenVideoPlayerView fullScreenVideoPlayerView = ((C16149w) abstractC26410a).f45577d;
        int i = FullScreenVideoPlayerView.f16082i;
        fullScreenVideoPlayerView.m34438g(abstractC15836l, "");
    }

    private final void setNormalPreviewConfig(AbstractC15836l abstractC15836l) {
        AbstractC26410a abstractC26410a = this.f16097t;
        Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
        FullScreenVideoPlayerView fullScreenVideoPlayerView = ((C16148v) abstractC26410a).f45570d;
        int i = FullScreenVideoPlayerView.f16082i;
        fullScreenVideoPlayerView.m34438g(abstractC15836l, "");
    }

    private final void setupVideoElevation(boolean z) {
        FullScreenVideoPlayerView fullScreenVideoPlayerView;
        FullScreenVideoPlayerView fullScreenVideoPlayerView2;
        int i = z ? 18 : 0;
        Resources resources = getResources();
        l.d(resources, "resources");
        int m28238b = C8605o.m28238b(getContext(), i / resources.getDisplayMetrics().density);
        C16149w c16149w = null;
        if (this.f16098u == 0) {
            AbstractC26410a abstractC26410a = this.f16097t;
            if (abstractC26410a instanceof C16149w) {
                c16149w = abstractC26410a;
            }
            C16149w c16149w2 = c16149w;
            if (c16149w2 == null || (fullScreenVideoPlayerView2 = c16149w2.f45577d) == null) {
                return;
            }
            fullScreenVideoPlayerView2.setElevation(m28238b);
            return;
        }
        AbstractC26410a abstractC26410a2 = this.f16097t;
        if (!(abstractC26410a2 instanceof C16148v)) {
            abstractC26410a2 = null;
        }
        C16148v c16148v = (C16148v) abstractC26410a2;
        if (c16148v == null || (fullScreenVideoPlayerView = c16148v.f45570d) == null) {
            return;
        }
        fullScreenVideoPlayerView.setElevation(m28238b);
    }

    /* renamed from: f1 */
    public final void m34436f1(AbstractC15836l abstractC15836l, PreviewVideoType previewVideoType, C8243a c8243a) {
        l.e(abstractC15836l, "videoConfig");
        l.e(previewVideoType, "previewVideo");
        boolean z = false;
        if (this.f16098u == 0) {
            AbstractC26410a abstractC26410a = this.f16097t;
            Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewCompactBinding");
            C16149w c16149w = (C16149w) abstractC26410a;
            View view = c16149w.f45575b;
            l.d(view, "viewVideoCallerIdPreviewCompactBinding.circle");
            view.setVisibility(8);
            View view2 = c16149w.f45578e;
            l.d(view2, "viewVideoCallerIdPreviewCompactBinding.rect1");
            view2.setVisibility(0);
            setCompactPreviewConfig(abstractC15836l);
        } else {
            setNormalPreviewConfig(abstractC15836l);
        }
        if (previewVideoType == PreviewVideoType.StockVideo) {
            z = true;
        }
        setupVideoElevation(z);
        if (previewVideoType == PreviewVideoType.PredefinedVideo || c8243a != null) {
            setAvatar(c8243a);
        }
    }

    public final void setCountry(String str) {
        l.e(str, AnalyticsConstants.NAME);
        AbstractC26410a abstractC26410a = this.f16097t;
        Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
        TextView textView = ((C16148v) abstractC26410a).f45571e;
        l.d(textView, "(binding as ViewVideoCal…eviewBinding).textCountry");
        textView.setText(str);
    }

    public final void setPhoneNumber(String str) {
        l.e(str, AnalyticsConstants.NAME);
        AbstractC26410a abstractC26410a = this.f16097t;
        Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
        TextView textView = ((C16148v) abstractC26410a).f45572f;
        l.d(textView, "(binding as ViewVideoCal…wBinding).textPhoneNumber");
        textView.setText(str);
    }

    public final void setProfileName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        AbstractC26410a abstractC26410a = this.f16097t;
        Objects.requireNonNull(abstractC26410a, "null cannot be cast to non-null type com.truecaller.videocallerid.databinding.ViewVideoCallerIdPreviewBinding");
        TextView textView = ((C16148v) abstractC26410a).f45573g;
        l.d(textView, "(binding as ViewVideoCal…wBinding).textProfileName");
        textView.setText(str);
    }
}
