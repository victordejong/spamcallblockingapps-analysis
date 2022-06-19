package com.callapp.contacts.util;

import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.manager.popup.PopupDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ReturnToAppTasker.class */
public class ReturnToAppTasker {

    /* renamed from: a */
    private HandlerThread f27837a;

    /* renamed from: b */
    private Handler f27838b;

    /* renamed from: c */
    private Intent f27839c;

    /* renamed from: d */
    private long f27840d;

    /* renamed from: e */
    private PopupDoneListener f27841e;

    /* renamed from: f */
    private int f27842f;

    /* renamed from: g */
    private Runnable f27843g = new Runnable() { // from class: com.callapp.contacts.util.ReturnToAppTasker.1
        @Override // java.lang.Runnable
        public void run() {
            if (System.currentTimeMillis() - ReturnToAppTasker.this.f27840d > 45000) {
                CLog.m27611a(ReturnToAppTasker.class, "ReturnToAppTasker stoped");
                ReturnToAppTasker.this.m27411b();
                return;
            }
            boolean currentCondition = ReturnToAppTasker.this.getCurrentCondition();
            if (!currentCondition) {
                ReturnToAppTasker.this.f27838b.postDelayed(ReturnToAppTasker.this.f27843g, 500L);
                return;
            }
            CLog.m27611a(ReturnToAppTasker.class, "ReturnToAppTasker start Activities");
            Activities.m27656b(CallAppApplication.get(), ReturnToAppTasker.this.f27839c);
            if (ReturnToAppTasker.this.f27841e != null) {
                ReturnToAppTasker.this.f27841e.popupDone(currentCondition);
                ReturnToAppTasker.this.f27841e = null;
            }
            ReturnToAppTasker.this.m27411b();
        }
    };

    public ReturnToAppTasker(Intent intent, PopupDoneListener popupDoneListener, int i) {
        this.f27839c = intent;
        intent.putExtra(ContactDetailsActivity.EXTRA_BRING_TO_FRONT_RETRY, true);
        this.f27839c.putExtra(ContactDetailsActivity.ACTION_DONT_CLEAR_POPUPS, true);
        this.f27841e = popupDoneListener;
        this.f27842f = i;
    }

    /* renamed from: c */
    private void m27409c() {
        if (this.f27839c != null) {
            this.f27840d = System.currentTimeMillis();
            CLog.m27611a(ReturnToAppTasker.class, "ReturnToAppTasker started");
            this.f27843g.run();
        }
    }

    public boolean getCurrentCondition() {
        int i = this.f27842f;
        if (i != 1) {
            if (i == 2) {
                return Activities.m27661b();
            }
            if (i == 3) {
                return Activities.isCallAppAccessibilityServiceEnabled();
            }
            return false;
        }
        return Activities.m27641e();
    }

    /* renamed from: a */
    public final void m27413a() {
        if (this.f27837a == null) {
            HandlerThread handlerThread = new HandlerThread(ReturnToAppTasker.class.toString());
            this.f27837a = handlerThread;
            handlerThread.start();
            AndroidUtils.m27631a(this.f27837a.getLooper());
            this.f27838b = new Handler(this.f27837a.getLooper());
        }
        m27409c();
    }

    /* renamed from: b */
    public final void m27411b() {
        Handler handler = this.f27838b;
        if (handler != null) {
            handler.removeCallbacks(this.f27843g);
        }
        HandlerThread handlerThread = this.f27837a;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        PopupDoneListener popupDoneListener = this.f27841e;
        if (popupDoneListener != null) {
            popupDoneListener.popupDone(getCurrentCondition());
        }
        this.f27839c = null;
        this.f27841e = null;
    }
}
