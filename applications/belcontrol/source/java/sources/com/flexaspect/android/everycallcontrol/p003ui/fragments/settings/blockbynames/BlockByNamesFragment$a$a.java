package com.flexaspect.android.everycallcontrol.p003ui.fragments.settings.blockbynames;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.flexaspect.android.everycallcontrol.ui.fragments.settings.blockbynames.BlockByNamesFragment;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.settings.blockbynames.BlockByNamesFragment$a$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/settings/blockbynames/BlockByNamesFragment$a$a.class */
public class BlockByNamesFragment$a$a extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ k81 f3152a;

    /* renamed from: b */
    public final /* synthetic */ BlockByNamesFragment.a f3153b;

    public BlockByNamesFragment$a$a(BlockByNamesFragment.a aVar, k81 k81Var) {
        this.f3153b = aVar;
        this.f3152a = k81Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f3152a.mo149d();
        BlockByNamesFragment.J(this.f3153b.m);
    }
}
