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

    /* renamed from: a */
    private SimpleProgressDialog f23018a;

    /* renamed from: h */
    T f23025h;

    /* renamed from: d */
    protected boolean f23021d = false;

    /* renamed from: e */
    public boolean f23022e = false;

    /* renamed from: f */
    public final Object f23023f = new Object();

    /* renamed from: g */
    public boolean f23024g = false;

    /* renamed from: b */
    private boolean f23019b = false;

    /* renamed from: c */
    private boolean f23020c = false;

    public BackgroundWorkerFragment() {
        setRetainInstance(true);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        this.f23018a = simpleProgressDialog;
        simpleProgressDialog.setIndeterminate(true);
        this.f23018a.setMessage(Activities.getString(2131887415));
        this.f23018a.setDialogCustomListener(new DialogPopup.IDialogSimpleListener() { // from class: com.callapp.contacts.activity.fragments.BackgroundWorkerFragment.3
            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: a */
            public final void mo26209a(DialogPopup dialogPopup) {
                BackgroundWorkerFragment.this.f23020c = false;
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
            /* renamed from: b */
            public final void mo26208b(DialogPopup dialogPopup) {
                BackgroundWorkerFragment.this.f23020c = false;
                if (BackgroundWorkerFragment.this.f23019b || BackgroundWorkerFragment.this.getActivity() == null || !(BackgroundWorkerFragment.this.getActivity() instanceof PostBirthdayActivity)) {
                    return;
                }
                BackgroundWorkerFragment.this.getActivity().finish();
            }

            @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener, android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                BackgroundWorkerFragment.this.f23020c = true;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    static /* synthetic */ void m30266a(BackgroundWorkerFragment backgroundWorkerFragment, final Object obj) {
        FragmentActivity activity = backgroundWorkerFragment.getActivity();
        if (Activities.m27696a((Activity) activity)) {
            activity.runOnUiThread(new Runnable() { // from class: com.callapp.contacts.activity.fragments.BackgroundWorkerFragment.2
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (Activities.m27696a((Activity) BackgroundWorkerFragment.this.getActivity())) {
                        BackgroundWorkerFragment.this.m30263b();
                        BackgroundWorkerFragment.this.mo30264a((BackgroundWorkerFragment) obj);
                    }
                }
            });
            return;
        }
        backgroundWorkerFragment.f23025h = obj;
        backgroundWorkerFragment.f23021d = true;
    }

    /* renamed from: a */
    protected abstract T mo30269a();

    /* renamed from: a */
    public void m30268a(Context context) {
        synchronized (this) {
            PopupManager.get().m28209a(context, this.f23018a);
            this.f23020c = true;
        }
    }

    /* renamed from: a */
    protected abstract void mo30264a(T t);

    /* renamed from: b */
    protected final void m30263b() {
        this.f23020c = false;
        SimpleProgressDialog.m27939a(this.f23018a);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (this.f23019b) {
            m30268a(context);
        }
        if (this.f23021d) {
            mo30264a((BackgroundWorkerFragment<T>) this.f23025h);
            this.f23021d = false;
            m30263b();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f23019b = this.f23020c;
        m30263b();
    }
}
