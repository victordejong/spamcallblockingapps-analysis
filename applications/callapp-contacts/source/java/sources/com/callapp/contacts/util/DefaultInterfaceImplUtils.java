package com.callapp.contacts.util;

import android.animation.Animator;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.callapp.contacts.manager.popup.DialogPopup;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DefaultInterfaceImplUtils.class */
public class DefaultInterfaceImplUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl.class */
    public static class AnimatorListenerImpl implements Animator.AnimatorListener {
        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener.class */
    public static abstract class ClickListener implements View.OnClickListener {
        /* renamed from: a */
        public abstract void mo26371a(View view);

        /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
        /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onClick(android.view.View r4) {
            /*
                r3 = this;
                r0 = r4
                android.view.View r0 = r0.getRootView()
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L21
                r0 = r5
                android.content.Context r0 = r0.getContext()
                r5 = r0
                r0 = r5
                boolean r0 = r0 instanceof com.callapp.contacts.activity.base.BaseActivity
                if (r0 == 0) goto L21
                r0 = r5
                com.callapp.contacts.activity.base.BaseActivity r0 = (com.callapp.contacts.activity.base.BaseActivity) r0
                r1 = r4
                boolean r0 = r0.isClickValid(r1)
                r6 = r0
                goto L23
            L21:
                r0 = 1
                r6 = r0
            L23:
                r0 = r6
                if (r0 == 0) goto L31
                r0 = r4
                r1 = 1
                com.callapp.contacts.util.AndroidUtils.m27630a(r0, r1)
                r0 = r3
                r1 = r4
                r0.mo26371a(r1)
            L31:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener.onClick(android.view.View):void");
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DefaultInterfaceImplUtils$OnDialogSimpleListener.class */
    public static class OnDialogSimpleListener implements DialogPopup.IDialogSimpleListener {
        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        /* renamed from: a */
        public final void mo26209a(DialogPopup dialogPopup) {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        /* renamed from: b */
        public void mo26208b(DialogPopup dialogPopup) {
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DefaultInterfaceImplUtils$OnPageChangeListener.class */
    public static class OnPageChangeListener implements ViewPager.AbstractC2936e {
        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.AbstractC2936e
        public void onPageSelected(int i) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl.class */
    public static class TextWatcherImpl implements TextWatcher {
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }
}
