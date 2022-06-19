package com.callapp.contacts.activity.analytics.graph;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar;
import com.callapp.contacts.widget.ProfilePictureView;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0014J\"\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0014R\u001a\u0010\u0007\u001a\u00020\bX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0017"}, m4298d2 = {"Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;", "Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "profilePictureProgressBar", "Lcom/callapp/contacts/widget/ProfilePictureView;", "getProfilePictureProgressBar", "()Lcom/callapp/contacts/widget/ProfilePictureView;", "setProfilePictureProgressBar", "(Lcom/callapp/contacts/widget/ProfilePictureView;)V", "initLayout", "", "initView", "", "onProgressChangeAnimationUpdate", "layout", "Landroid/widget/LinearLayout;", "current", "", "to", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar.class */
public final class CallAllRoundedCornerProgressBar extends RoundCornerProgressBar {

    /* renamed from: a */
    public ProfilePictureView f19971a;

    public CallAllRoundedCornerProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public final int initLayout() {
        return 2131559003;
    }

    @Override // com.akexorcist.roundcornerprogressbar.RoundCornerProgressBar, com.akexorcist.roundcornerprogressbar.common.BaseRoundCornerProgressBar
    public final void initView() {
        super.initView();
        View findViewById = findViewById(2131363562);
        C18524p.m3843b(findViewById, "findViewById(R.id.profilePictureProgressBar)");
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById;
        this.f19971a = profilePictureView;
        if (profilePictureView == null) {
            C18524p.m3848a("profilePictureProgressBar");
        }
        profilePictureView.setRotation(270.0f);
        ProfilePictureView profilePictureView2 = this.f19971a;
        if (profilePictureView2 == null) {
            C18524p.m3848a("profilePictureProgressBar");
        }
        profilePictureView2.setVisibility(0);
    }

    @Override // com.akexorcist.roundcornerprogressbar.common.AnimatedRoundCornerProgressBar
    public final void onProgressChangeAnimationUpdate(LinearLayout linearLayout, float f, float f2) {
        super.onProgressChangeAnimationUpdate(linearLayout, f, f2);
        ProfilePictureView profilePictureView = this.f19971a;
        if (profilePictureView == null) {
            C18524p.m3848a("profilePictureProgressBar");
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(profilePictureView, "translationX", -((f * getWidth()) / this.max));
        ofFloat.setDuration(0L);
        ofFloat.start();
    }

    public final void setProfilePictureProgressBar(ProfilePictureView profilePictureView) {
        C18524p.m3840d(profilePictureView, "<set-?>");
        this.f19971a = profilePictureView;
    }
}
