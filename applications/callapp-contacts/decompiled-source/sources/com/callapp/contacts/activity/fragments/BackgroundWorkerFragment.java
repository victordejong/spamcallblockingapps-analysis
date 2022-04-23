package com.callapp.contacts.activity.fragments;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.callapp.contacts.activity.birthday.PostBirthdayActivity;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/fragments/BackgroundWorkerFragment.class */
public abstract class BackgroundWorkerFragment<T> extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    private SimpleProgressDialog f12868a;
    T h;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f12871d = false;
    public boolean e = false;
    public final Object f = new Object();
    public boolean g = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f12869b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12870c = false;

    public BackgroundWorkerFragment() {
        setRetainInstance(true);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f12868a = simpleProgressDialog;
        simpleProgressDialog.setIndeterminate(true);
        this.f12868a.setMessage(Activities.getString(2131887415));
        this.f12868a.setDialogCustomListener(new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.fragments.BackgroundWorkerFragment.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void a(DialogPopup dialogPopup) {
                BackgroundWorkerFragment.this.f12870c = false;
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            public final void b(DialogPopup dialogPopup) {
                BackgroundWorkerFragment.this.f12870c = false;
                if (!BackgroundWorkerFragment.this.f12869b && BackgroundWorkerFragment.this.getActivity() != null && (BackgroundWorkerFragment.this.getActivity() instanceof PostBirthdayActivity)) {
                    BackgroundWorkerFragment.this.getActivity().finish();
                }
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                BackgroundWorkerFragment.this.f12870c = true;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void a(BackgroundWorkerFragment backgroundWorkerFragment, final Object obj) {
        FragmentActivity activity = backgroundWorkerFragment.getActivity();
        if (Activities.a((Activity) activity)) {
            activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.fragments.BackgroundWorkerFragment.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (Activities.a((Activity) BackgroundWorkerFragment.this.getActivity())) {
                        BackgroundWorkerFragment.this.b();
                        BackgroundWorkerFragment.this.a((BackgroundWorkerFragment) obj);
                    }
                }
            });
            return;
        }
        backgroundWorkerFragment.h = obj;
        backgroundWorkerFragment.f12871d = true;
    }

    protected abstract T a();

    public void a(Context context) {
        synchronized (this) {
            PopupManager.get().a(context, this.f12868a);
            this.f12870c = true;
        }
    }

    protected abstract void a(T t);

    protected final void b() {
        this.f12870c = false;
        SimpleProgressDialog.a(this.f12868a);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.f12869b) {
            a(context);
        }
        if (this.f12871d) {
            a((BackgroundWorkerFragment<T>) this.h);
            this.f12871d = false;
            b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f12869b = this.f12870c;
        b();
    }
}
