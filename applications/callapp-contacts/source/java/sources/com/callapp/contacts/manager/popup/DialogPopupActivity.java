package com.callapp.contacts.manager.popup;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.callapp.common.util.Sets;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.popup.Popup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopupActivity.class */
public class DialogPopupActivity extends BaseTransparentActivity {

    /* renamed from: b */
    Collection<BaseDialogFragment> f26169b;

    /* renamed from: e */
    private int f26172e;

    /* renamed from: a */
    final Object f26168a = new Object();

    /* renamed from: c */
    boolean f26170c = false;

    /* renamed from: d */
    private Popup.DialogType f26171d = Popup.DialogType.withInset;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener.class */
    public static class DismissListener implements PopupManager.DialogFragmentDismissListener {

        /* renamed from: a */
        private WeakReference<DialogPopupActivity> f26173a;

        private DismissListener(DialogPopupActivity dialogPopupActivity) {
            this.f26173a = new WeakReference<>(dialogPopupActivity);
        }

        @Override // com.callapp.contacts.manager.popup.PopupManager.DialogFragmentDismissListener
        /* renamed from: a */
        public final void mo28196a(BaseDialogFragment baseDialogFragment) {
            WeakReference<DialogPopupActivity> weakReference = this.f26173a;
            if (weakReference != null) {
                DialogPopupActivity dialogPopupActivity = weakReference.get();
                this.f26173a.clear();
                this.f26173a = null;
                if (dialogPopupActivity == null) {
                    return;
                }
                synchronized (dialogPopupActivity.f26168a) {
                    if (dialogPopupActivity.f26169b != null) {
                        dialogPopupActivity.f26169b.remove(baseDialogFragment);
                    }
                    if (!dialogPopupActivity.f26170c && (dialogPopupActivity.f26169b == null || dialogPopupActivity.f26169b.isEmpty())) {
                        dialogPopupActivity.finish();
                        dialogPopupActivity.overridePendingTransition(0, 0);
                    }
                    dialogPopupActivity.f26170c = false;
                }
            }
        }
    }

    private Dialog getDialog() {
        synchronized (this.f26168a) {
            if (CollectionUtils.m26068b(this.f26169b)) {
                Set m31880a = Sets.m31880a(new WeakHashMap());
                m31880a.addAll(this.f26169b);
                BaseDialogFragment baseDialogFragment = (BaseDialogFragment) m31880a.iterator().next();
                if (baseDialogFragment != null) {
                    return baseDialogFragment.getDialog();
                }
            }
            return null;
        }
    }

    /* renamed from: a */
    public final void m28212a(BaseDialogFragment baseDialogFragment) {
        synchronized (this.f26168a) {
            baseDialogFragment.m28215a(new DismissListener());
            if (this.f26169b == null) {
                this.f26169b = Sets.m31880a(new WeakHashMap());
            }
            this.f26169b.add(baseDialogFragment);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.f26172e != configuration.orientation) {
            Dialog dialog = getDialog();
            if (dialog != null) {
                DialogPopup.setDialogSizeAndBackground(dialog, this.f26171d);
            }
            this.f26172e = configuration.orientation;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setKeyguardDismissAndScreenWindowFlags();
        this.f26172e = Activities.getScreenOrientation();
        onNewIntent(getIntent());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        synchronized (this.f26168a) {
            if (this.f26169b != null) {
                Set<BaseDialogFragment> m31880a = Sets.m31880a(new WeakHashMap());
                m31880a.addAll(this.f26169b);
                for (BaseDialogFragment baseDialogFragment : m31880a) {
                    try {
                        baseDialogFragment.mo11078b();
                    } catch (RuntimeException e) {
                        CLog.m27596b(DialogPopupActivity.class, e);
                    }
                }
            }
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Popup m28205a = PopupManager.get().m28205a(intent);
        if (!(m28205a instanceof DialogPopup)) {
            FeedbackManager.get().m28670a("DialogPopupActivity got non DialogPopup instance", 80);
            return;
        }
        DialogPopup dialogPopup = (DialogPopup) m28205a;
        this.f26171d = dialogPopup.getPopupType();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.f4230v || supportFragmentManager.m43707f()) {
            finish();
            return;
        }
        try {
            AbstractC1121s m43765a = getSupportFragmentManager().m43765a();
            Fragment m43740a = getSupportFragmentManager().m43740a("dialog");
            if (m43740a != null) {
                m43765a.mo43539a(m43740a);
            }
            m43765a.mo43532c();
        } catch (Exception e) {
            CLog.m27596b(DialogPopupActivity.class, e);
        }
        BaseDialogFragment createDialogFragment = dialogPopup.createDialogFragment(this, dialogPopup.shouldCanceledOnTouchOutside());
        createDialogFragment.mo19242a(supportFragmentManager, "dialog");
        m28212a(createDialogFragment);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
