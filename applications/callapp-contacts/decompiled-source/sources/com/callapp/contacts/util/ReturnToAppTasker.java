package com.callapp.contacts.util;

import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.manager.popup.PopupDoneListener;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ReturnToAppTasker.class */
public class ReturnToAppTasker {

    /* renamed from: a  reason: collision with root package name */
    private HandlerThread f15942a;

    /* renamed from: b  reason: collision with root package name */
    private Handler f15943b;

    /* renamed from: c  reason: collision with root package name */
    private Intent f15944c;

    /* renamed from: d  reason: collision with root package name */
    private long f15945d;
    private PopupDoneListener e;
    private int f;
    private Runnable g = new Runnable() { // from class: com.callapp.contacts.util.ReturnToAppTasker.1
        @Override // java.lang.Runnable
        public void run() {
            if (System.currentTimeMillis() - ReturnToAppTasker.this.f15945d <= 45000) {
                boolean currentCondition = ReturnToAppTasker.this.getCurrentCondition();
                if (currentCondition) {
                    CLog.a(ReturnToAppTasker.class, "ReturnToAppTasker start Activities");
                    Activities.b(CallAppApplication.get(), ReturnToAppTasker.this.f15944c);
                    if (ReturnToAppTasker.this.e != null) {
                        ReturnToAppTasker.this.e.popupDone(currentCondition);
                        ReturnToAppTasker.this.e = null;
                    }
                    ReturnToAppTasker.this.b();
                    return;
                }
                ReturnToAppTasker.this.f15943b.postDelayed(ReturnToAppTasker.this.g, 500L);
                return;
            }
            CLog.a(ReturnToAppTasker.class, "ReturnToAppTasker stoped");
            ReturnToAppTasker.this.b();
        }
    };

    public ReturnToAppTasker(Intent intent, PopupDoneListener popupDoneListener, int i) {
        this.f15944c = intent;
        intent.putExtra(ContactDetailsActivity.EXTRA_BRING_TO_FRONT_RETRY, true);
        this.f15944c.putExtra(ContactDetailsActivity.ACTION_DONT_CLEAR_POPUPS, true);
        this.e = popupDoneListener;
        this.f = i;
    }

    private void c() {
        if (this.f15944c != null) {
            this.f15945d = System.currentTimeMillis();
            CLog.a(ReturnToAppTasker.class, "ReturnToAppTasker started");
            this.g.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getCurrentCondition() {
        int i = this.f;
        if (i == 1) {
            return Activities.e();
        }
        if (i == 2) {
            return Activities.b();
        }
        if (i != 3) {
            return false;
        }
        return Activities.isCallAppAccessibilityServiceEnabled();
    }

    public final void a() {
        if (this.f15942a == null) {
            HandlerThread handlerThread = new HandlerThread(ReturnToAppTasker.class.toString());
            this.f15942a = handlerThread;
            handlerThread.start();
            AndroidUtils.a(this.f15942a.getLooper());
            this.f15943b = new Handler(this.f15942a.getLooper());
        }
        c();
    }

    public final void b() {
        Handler handler = this.f15943b;
        if (handler != null) {
            handler.removeCallbacks(this.g);
        }
        HandlerThread handlerThread = this.f15942a;
        if (handlerThread != null) {
            handlerThread.quit();
        }
        PopupDoneListener popupDoneListener = this.e;
        if (popupDoneListener != null) {
            popupDoneListener.popupDone(getCurrentCondition());
        }
        this.f15944c = null;
        this.e = null;
    }
}
