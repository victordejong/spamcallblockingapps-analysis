package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.DialogInterface$OnCancelListenerC1089c;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.callapp.common.util.Sets;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.BaseTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.CollectionUtils;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PopupManager.class */
public class PopupManager implements ManagedLifecycle {

    /* renamed from: b */
    private final Map<Integer, Popup> f26175b = new ConcurrentHashMap();

    /* renamed from: a */
    public final Map<Class<? extends Activity>, Collection<DialogInterface$OnCancelListenerC1089c>> f26174a = new ConcurrentHashMap();

    /* renamed from: c */
    private final AtomicInteger f26176c = new AtomicInteger(1);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener.class */
    public interface DialogFragmentDismissListener {
        /* renamed from: a */
        void mo28196a(BaseDialogFragment baseDialogFragment);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PopupManager$DismissListener.class */
    static class DismissListener implements DialogFragmentDismissListener {

        /* renamed from: a */
        private WeakReference<PopupManager> f26180a;

        /* renamed from: b */
        private Class<? extends Activity> f26181b;

        private DismissListener(PopupManager popupManager, Class<? extends Activity> cls) {
            this.f26180a = new WeakReference<>(popupManager);
            this.f26181b = cls;
        }

        @Override // com.callapp.contacts.manager.popup.PopupManager.DialogFragmentDismissListener
        /* renamed from: a */
        public final void mo28196a(BaseDialogFragment baseDialogFragment) {
            WeakReference<PopupManager> weakReference = this.f26180a;
            if (weakReference != null) {
                PopupManager popupManager = weakReference.get();
                this.f26180a.clear();
                this.f26180a = null;
                if (popupManager != null) {
                    PopupManager.m28201a(popupManager, this.f26181b, baseDialogFragment);
                }
                this.f26181b = null;
            }
        }
    }

    /* renamed from: a */
    private void m28208a(Context context, final DialogPopup dialogPopup, boolean z) {
        if (context == null) {
            CLog.m27598b(getClass(), "Got null as a context to popup manager");
            return;
        }
        if (context instanceof FragmentActivity) {
            final FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (Activities.m27696a((Activity) fragmentActivity)) {
                fragmentActivity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.manager.popup.PopupManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dialogPopup != null) {
                            if (!PopupManager.m28204a(fragmentActivity)) {
                                PopupManager.this.m28209a(CallAppApplication.get(), dialogPopup);
                                return;
                            }
                            try {
                                AbstractC1121s m43765a = fragmentActivity.getSupportFragmentManager().m43765a();
                                Fragment m43740a = fragmentActivity.getSupportFragmentManager().m43740a("dialog");
                                if (m43740a != null) {
                                    m43765a.mo43539a(m43740a);
                                }
                                m43765a.mo43532c();
                            } catch (Exception e) {
                                CLog.m27596b(PopupManager.class, e);
                            }
                            DialogPopup dialogPopup2 = dialogPopup;
                            BaseDialogFragment createDialogFragment = dialogPopup2.createDialogFragment(fragmentActivity, dialogPopup2.shouldCanceledOnTouchOutside());
                            createDialogFragment.m28215a(new DismissListener(fragmentActivity.getClass()));
                            createDialogFragment.mo19242a(fragmentActivity.getSupportFragmentManager(), "dialog");
                            PopupManager.m28202a(PopupManager.this, fragmentActivity, createDialogFragment);
                        }
                    }
                });
                return;
            }
        }
        if (z && PhoneStateManager.get().isIncomingCallRingingState()) {
            return;
        }
        int incrementAndGet = this.f26176c.incrementAndGet();
        m28210a(incrementAndGet, dialogPopup);
        Intent putExtra = new Intent(CallAppApplication.get(), DialogPopupActivity.class).addFlags(268435456).putExtra("EXTRA_POPUP_ID", incrementAndGet);
        if (z) {
            Activities.m27685a(context, putExtra);
        } else {
            Activities.m27656b(context, putExtra);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    static /* synthetic */ void m28202a(PopupManager popupManager, Activity activity, BaseDialogFragment baseDialogFragment) {
        if (activity instanceof DialogPopupActivity) {
            ((DialogPopupActivity) activity).m28212a(baseDialogFragment);
            return;
        }
        synchronized (popupManager.f26174a) {
            Class<?> cls = activity.getClass();
            Collection<DialogInterface$OnCancelListenerC1089c> collection = popupManager.f26174a.get(cls);
            Set set = collection;
            if (collection == null) {
                Set m31880a = Sets.m31880a(new WeakHashMap());
                popupManager.f26174a.put(cls, m31880a);
                set = m31880a;
            }
            set.add(baseDialogFragment);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m28201a(PopupManager popupManager, Class cls, BaseDialogFragment baseDialogFragment) {
        synchronized (popupManager.f26174a) {
            Collection<DialogInterface$OnCancelListenerC1089c> collection = popupManager.f26174a.get(cls);
            if (CollectionUtils.m26068b(collection)) {
                collection.remove(baseDialogFragment);
                FragmentActivity activity = baseDialogFragment.getActivity();
                if (baseDialogFragment.f26149c && collection.size() == 0 && (activity instanceof BaseTransparentActivity) && ((BaseTransparentActivity) activity).finishActivityOnLastPopupCanceled()) {
                    baseDialogFragment.getActivity().finish();
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m28204a(FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        return Activities.m27696a((Activity) fragmentActivity) && !supportFragmentManager.f4230v && !supportFragmentManager.m43707f();
    }

    /* renamed from: b */
    private void m28199b() {
        this.f26175b.clear();
    }

    /* renamed from: c */
    private void m28197c() {
        synchronized (this.f26174a) {
            for (Collection<DialogInterface$OnCancelListenerC1089c> collection : this.f26174a.values()) {
                Set<DialogInterface$OnCancelListenerC1089c> m31880a = Sets.m31880a(new WeakHashMap());
                m31880a.addAll(collection);
                for (DialogInterface$OnCancelListenerC1089c dialogInterface$OnCancelListenerC1089c : m31880a) {
                    m28203a(dialogInterface$OnCancelListenerC1089c);
                }
            }
            this.f26174a.clear();
        }
    }

    public static PopupManager get() {
        return Singletons.get().getPopupManager();
    }

    /* renamed from: a */
    public final Popup m28205a(Intent intent) {
        Bundle extras;
        int i;
        Popup m28200a;
        if (intent == null || (extras = intent.getExtras()) == null || (i = extras.getInt("EXTRA_POPUP_ID")) <= 0 || (m28200a = m28200a(Integer.valueOf(i))) == null) {
            return null;
        }
        return m28200a;
    }

    /* renamed from: a */
    public final Popup m28200a(Integer num) {
        Popup remove = this.f26175b.remove(num);
        if (remove == null) {
            FeedbackManager.get().m28670a("PopupManager.getPopup returning null", 80);
            CLog.m27598b(PopupManager.class, "PopupManager.getPopup returning null");
        }
        return remove;
    }

    /* renamed from: a */
    public final void m28211a() {
        m28199b();
        m28197c();
    }

    /* renamed from: a */
    public final void m28210a(int i, Popup popup) {
        this.f26175b.put(Integer.valueOf(i), popup);
    }

    /* renamed from: a */
    public final void m28209a(Context context, DialogPopup dialogPopup) {
        m28208a(context, dialogPopup, true);
    }

    /* renamed from: a */
    public final void m28207a(Context context, ResultPopup resultPopup) {
        m28206a(context, resultPopup, 0);
    }

    /* renamed from: a */
    public final void m28206a(Context context, ResultPopup resultPopup, int i) {
        int incrementAndGet = this.f26176c.incrementAndGet();
        resultPopup.f26194e = incrementAndGet;
        m28210a(incrementAndGet, resultPopup);
        Intent putExtra = new Intent(CallAppApplication.get(), ResultPopupActivity.class).addFlags(Activities.getIntentFlagForNewDocument()).putExtra("EXTRA_POPUP_ID", incrementAndGet).putExtra(Constants.EXTRA_IS_USING_DEFAULT_TRANSITION, false);
        boolean z = context instanceof Activity;
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (context instanceof ContextWrapper) {
                z2 = ((ContextWrapper) context).getBaseContext() instanceof Activity;
            }
        }
        if (!z2) {
            putExtra.addFlags(268435456);
        }
        if (!PhoneStateManager.get().isIncomingCallRingingState()) {
            Activities.m27685a(context, putExtra);
        }
    }

    /* renamed from: a */
    public void m28203a(DialogInterface$OnCancelListenerC1089c dialogInterface$OnCancelListenerC1089c) {
        if (dialogInterface$OnCancelListenerC1089c == null || !dialogInterface$OnCancelListenerC1089c.isAdded()) {
            return;
        }
        try {
            dialogInterface$OnCancelListenerC1089c.mo11078b();
        } catch (IllegalArgumentException e) {
            CLog.m27596b(getClass(), e);
        }
    }

    /* renamed from: b */
    public final void m28198b(Context context, DialogPopup dialogPopup) {
        m28208a(context, dialogPopup, false);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        m28199b();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
