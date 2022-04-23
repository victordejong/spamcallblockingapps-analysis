package com.callapp.contacts.manager.popup;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.s;
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

    /* renamed from: b  reason: collision with root package name */
    Collection<BaseDialogFragment> f15210b;
    private int e;

    /* renamed from: a  reason: collision with root package name */
    final Object f15209a = new Object();

    /* renamed from: c  reason: collision with root package name */
    boolean f15211c = false;

    /* renamed from: d  reason: collision with root package name */
    private Popup.DialogType f15212d = Popup.DialogType.withInset;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener.class */
    public static class DismissListener implements PopupManager.DialogFragmentDismissListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<DialogPopupActivity> f15213a;

        private DismissListener(DialogPopupActivity dialogPopupActivity) {
            this.f15213a = new WeakReference<>(dialogPopupActivity);
        }

        @Override // com.callapp.contacts.manager.popup.PopupManager.DialogFragmentDismissListener
        public final void a(BaseDialogFragment baseDialogFragment) {
            WeakReference<DialogPopupActivity> weakReference = this.f15213a;
            if (weakReference != null) {
                DialogPopupActivity dialogPopupActivity = weakReference.get();
                this.f15213a.clear();
                this.f15213a = null;
                if (dialogPopupActivity != null) {
                    synchronized (dialogPopupActivity.f15209a) {
                        if (dialogPopupActivity.f15210b != null) {
                            dialogPopupActivity.f15210b.remove(baseDialogFragment);
                        }
                        if (!dialogPopupActivity.f15211c && (dialogPopupActivity.f15210b == null || dialogPopupActivity.f15210b.isEmpty())) {
                            dialogPopupActivity.finish();
                            dialogPopupActivity.overridePendingTransition(0, 0);
                        }
                        dialogPopupActivity.f15211c = false;
                    }
                }
            }
        }
    }

    private Dialog getDialog() {
        synchronized (this.f15209a) {
            if (CollectionUtils.b(this.f15210b)) {
                Set a2 = Sets.a(new WeakHashMap());
                a2.addAll(this.f15210b);
                BaseDialogFragment baseDialogFragment = (BaseDialogFragment) a2.iterator().next();
                if (baseDialogFragment != null) {
                    return baseDialogFragment.getDialog();
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(BaseDialogFragment baseDialogFragment) {
        synchronized (this.f15209a) {
            baseDialogFragment.a(new DismissListener());
            if (this.f15210b == null) {
                this.f15210b = Sets.a(new WeakHashMap());
            }
            this.f15210b.add(baseDialogFragment);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.e != configuration.orientation) {
            Dialog dialog = getDialog();
            if (dialog != null) {
                DialogPopup.setDialogSizeAndBackground(dialog, this.f15212d);
            }
            this.e = configuration.orientation;
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setKeyguardDismissAndScreenWindowFlags();
        this.e = Activities.getScreenOrientation();
        onNewIntent(getIntent());
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        synchronized (this.f15209a) {
            if (this.f15210b != null) {
                Set<BaseDialogFragment> a2 = Sets.a(new WeakHashMap());
                a2.addAll(this.f15210b);
                for (BaseDialogFragment baseDialogFragment : a2) {
                    try {
                        baseDialogFragment.b();
                    } catch (RuntimeException e) {
                        CLog.b(DialogPopupActivity.class, e);
                    }
                }
            }
        }
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Popup a2 = PopupManager.get().a(intent);
        if (a2 instanceof DialogPopup) {
            DialogPopup dialogPopup = (DialogPopup) a2;
            this.f15212d = dialogPopup.getPopupType();
            FragmentManager supportFragmentManager = getSupportFragmentManager();
            if (supportFragmentManager.v || supportFragmentManager.f()) {
                finish();
                return;
            }
            try {
                s a3 = getSupportFragmentManager().a();
                Fragment a4 = getSupportFragmentManager().a("dialog");
                if (a4 != null) {
                    a3.a(a4);
                }
                a3.c();
            } catch (Exception e) {
                CLog.b(DialogPopupActivity.class, e);
            }
            BaseDialogFragment createDialogFragment = dialogPopup.createDialogFragment(this, dialogPopup.shouldCanceledOnTouchOutside());
            createDialogFragment.a(supportFragmentManager, "dialog");
            a(createDialogFragment);
            return;
        }
        FeedbackManager.get().a("DialogPopupActivity got non DialogPopup instance", 80);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public boolean shouldAssertPermissions() {
        return false;
    }
}
