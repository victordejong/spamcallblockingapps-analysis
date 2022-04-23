package com.callapp.contacts.manager.popup;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.c;
import androidx.fragment.app.s;
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

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, Popup> f15215b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    public final Map<Class<? extends Activity>, Collection<c>> f15214a = new ConcurrentHashMap();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicInteger f15216c = new AtomicInteger(1);

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener.class */
    public interface DialogFragmentDismissListener {
        void a(BaseDialogFragment baseDialogFragment);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/popup/PopupManager$DismissListener.class */
    static class DismissListener implements DialogFragmentDismissListener {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<PopupManager> f15220a;

        /* renamed from: b  reason: collision with root package name */
        private Class<? extends Activity> f15221b;

        private DismissListener(PopupManager popupManager, Class<? extends Activity> cls) {
            this.f15220a = new WeakReference<>(popupManager);
            this.f15221b = cls;
        }

        @Override // com.callapp.contacts.manager.popup.PopupManager.DialogFragmentDismissListener
        public final void a(BaseDialogFragment baseDialogFragment) {
            WeakReference<PopupManager> weakReference = this.f15220a;
            if (weakReference != null) {
                PopupManager popupManager = weakReference.get();
                this.f15220a.clear();
                this.f15220a = null;
                if (popupManager != null) {
                    PopupManager.a(popupManager, this.f15221b, baseDialogFragment);
                }
                this.f15221b = null;
            }
        }
    }

    private void a(Context context, final DialogPopup dialogPopup, boolean z) {
        if (context != null) {
            if (context instanceof FragmentActivity) {
                final FragmentActivity fragmentActivity = (FragmentActivity) context;
                if (Activities.a((Activity) fragmentActivity)) {
                    fragmentActivity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.manager.popup.PopupManager.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (dialogPopup == null) {
                                return;
                            }
                            if (PopupManager.a(fragmentActivity)) {
                                try {
                                    s a2 = fragmentActivity.getSupportFragmentManager().a();
                                    Fragment a3 = fragmentActivity.getSupportFragmentManager().a("dialog");
                                    if (a3 != null) {
                                        a2.a(a3);
                                    }
                                    a2.c();
                                } catch (Exception e) {
                                    CLog.b(PopupManager.class, e);
                                }
                                DialogPopup dialogPopup2 = dialogPopup;
                                BaseDialogFragment createDialogFragment = dialogPopup2.createDialogFragment(fragmentActivity, dialogPopup2.shouldCanceledOnTouchOutside());
                                createDialogFragment.a(new DismissListener(fragmentActivity.getClass()));
                                createDialogFragment.a(fragmentActivity.getSupportFragmentManager(), "dialog");
                                PopupManager.a(PopupManager.this, fragmentActivity, createDialogFragment);
                                return;
                            }
                            PopupManager.this.a(CallAppApplication.get(), dialogPopup);
                        }
                    });
                    return;
                }
            }
            if (!z || !PhoneStateManager.get().isIncomingCallRingingState()) {
                int incrementAndGet = this.f15216c.incrementAndGet();
                a(incrementAndGet, dialogPopup);
                Intent putExtra = new Intent(CallAppApplication.get(), DialogPopupActivity.class).addFlags(268435456).putExtra("EXTRA_POPUP_ID", incrementAndGet);
                if (z) {
                    Activities.a(context, putExtra);
                } else {
                    Activities.b(context, putExtra);
                }
            }
        } else {
            CLog.b(getClass(), "Got null as a context to popup manager");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void a(PopupManager popupManager, Activity activity, BaseDialogFragment baseDialogFragment) {
        if (activity instanceof DialogPopupActivity) {
            ((DialogPopupActivity) activity).a(baseDialogFragment);
            return;
        }
        synchronized (popupManager.f15214a) {
            Class<?> cls = activity.getClass();
            Collection<c> collection = popupManager.f15214a.get(cls);
            Collection<c> collection2 = collection;
            if (collection == null) {
                collection2 = Sets.a(new WeakHashMap());
                popupManager.f15214a.put(cls, collection2);
            }
            collection2.add(baseDialogFragment);
        }
    }

    static /* synthetic */ void a(PopupManager popupManager, Class cls, BaseDialogFragment baseDialogFragment) {
        synchronized (popupManager.f15214a) {
            Collection<c> collection = popupManager.f15214a.get(cls);
            if (CollectionUtils.b(collection)) {
                collection.remove(baseDialogFragment);
                FragmentActivity activity = baseDialogFragment.getActivity();
                if (baseDialogFragment.f15194c && collection.size() == 0 && (activity instanceof BaseTransparentActivity) && ((BaseTransparentActivity) activity).finishActivityOnLastPopupCanceled()) {
                    baseDialogFragment.getActivity().finish();
                }
            }
        }
    }

    public static boolean a(FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        return Activities.a((Activity) fragmentActivity) && !supportFragmentManager.v && !supportFragmentManager.f();
    }

    private void b() {
        this.f15215b.clear();
    }

    private void c() {
        synchronized (this.f15214a) {
            for (Collection<c> collection : this.f15214a.values()) {
                Set<c> a2 = Sets.a(new WeakHashMap());
                a2.addAll(collection);
                for (c cVar : a2) {
                    a(cVar);
                }
            }
            this.f15214a.clear();
        }
    }

    public static PopupManager get() {
        return Singletons.get().getPopupManager();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Popup a(Intent intent) {
        Bundle extras;
        int i;
        Popup a2;
        if (intent == null || (extras = intent.getExtras()) == null || (i = extras.getInt("EXTRA_POPUP_ID")) <= 0 || (a2 = a(Integer.valueOf(i))) == null) {
            return null;
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Popup a(Integer num) {
        Popup remove = this.f15215b.remove(num);
        if (remove == null) {
            FeedbackManager.get().a("PopupManager.getPopup returning null", 80);
            CLog.b(PopupManager.class, "PopupManager.getPopup returning null");
        }
        return remove;
    }

    public final void a() {
        b();
        c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, Popup popup) {
        this.f15215b.put(Integer.valueOf(i), popup);
    }

    public final void a(Context context, DialogPopup dialogPopup) {
        a(context, dialogPopup, true);
    }

    public final void a(Context context, ResultPopup resultPopup) {
        a(context, resultPopup, 0);
    }

    public final void a(Context context, ResultPopup resultPopup, int i) {
        int incrementAndGet = this.f15216c.incrementAndGet();
        resultPopup.e = incrementAndGet;
        a(incrementAndGet, resultPopup);
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
            Activities.a(context, putExtra);
        }
    }

    public void a(c cVar) {
        if (cVar != null && cVar.isAdded()) {
            try {
                cVar.b();
            } catch (IllegalArgumentException e) {
                CLog.b(getClass(), e);
            }
        }
    }

    public final void b(Context context, DialogPopup dialogPopup) {
        a(context, dialogPopup, false);
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        b();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
