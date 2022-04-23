package com.callapp.contacts.activity.contact.details.presenter;

import android.view.View;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.activity.interfaces.ThemeChangedListener;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.manager.phone.CallStateListener;
import com.callapp.contacts.model.call.CallData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.RetractableView;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/PostCallDurationPresenter.class */
public class PostCallDurationPresenter extends BasePresenter implements ThemeChangedListener, DestroyListener, CallStateListener {

    /* renamed from: a  reason: collision with root package name */
    private static final int f12336a = ThemeUtils.a(CallAppApplication.get(), 2131100108);

    /* renamed from: b  reason: collision with root package name */
    private View f12337b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f12338c;
    private TextView e;
    private TextView f;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        View view = this.f12337b;
        if (view != null) {
            view.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
        }
    }

    static /* synthetic */ void a(PostCallDurationPresenter postCallDurationPresenter) {
        if (ViewUtils.a(postCallDurationPresenter.f12337b)) {
            ((RetractableView) postCallDurationPresenter.f12337b).c();
        }
    }

    static /* synthetic */ void a(PostCallDurationPresenter postCallDurationPresenter, int i, int i2) {
        if (!ViewUtils.a(postCallDurationPresenter.f12337b)) {
            View inflate = ((ViewStub) postCallDurationPresenter.f12337b).inflate();
            postCallDurationPresenter.f12337b = inflate;
            inflate.setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099891));
            ((RetractableView) postCallDurationPresenter.f12337b).setExpandMaxHeight((int) Activities.a(32.0f));
            ((RetractableView) postCallDurationPresenter.f12337b).c();
            postCallDurationPresenter.f12338c = (ImageView) postCallDurationPresenter.f12337b.findViewById(2131363545);
            TextView textView = (TextView) postCallDurationPresenter.f12337b.findViewById(2131363543);
            postCallDurationPresenter.e = textView;
            textView.setText(Activities.getString(2131887422));
            postCallDurationPresenter.f = (TextView) postCallDurationPresenter.f12337b.findViewById(2131363544);
        }
        ImageUtils.a(postCallDurationPresenter.f12338c, i2);
        TextView textView2 = postCallDurationPresenter.e;
        int i3 = f12336a;
        textView2.setTextColor(i3);
        if (i == 0) {
            postCallDurationPresenter.f.setVisibility(8);
        } else {
            postCallDurationPresenter.f.setVisibility(0);
            postCallDurationPresenter.f.setText(DateUtils.b(i));
            postCallDurationPresenter.f.setTextColor(i3);
        }
        ((RetractableView) postCallDurationPresenter.f12337b).a();
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(final CallData callData) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.PostCallDurationPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                if (!callData.getState().isPostCall() || !callData.isIncoming()) {
                    PostCallDurationPresenter.a(PostCallDurationPresenter.this);
                    return;
                }
                int i = 0;
                if (callData.getTalkingStartTime() > 0) {
                    i = (int) ((System.currentTimeMillis() - callData.getTalkingStartTime()) / 1000);
                }
                PostCallDurationPresenter.a(PostCallDurationPresenter.this, i, CallLogUtils.a(callData));
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.f12337b = presentersContainer.findViewById(2131363542);
        presentersContainer.addCallStateListener(this);
        presentersContainer.addDestroyListener(this);
        presentersContainer.addThemeChangeListener(this);
    }

    @Override // com.callapp.contacts.event.listener.DestroyListener
    public void onDestroy() {
        this.presentersContainer.removeCallStateListener(this);
        this.presentersContainer.removeThemeChangeListener(this);
    }

    @Override // com.callapp.contacts.activity.interfaces.ThemeChangedListener
    public void onThemeChanged() {
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$PostCallDurationPresenter$9SsdN7rl_4PnwGRxR58Ak0ZU7js
            @Override // java.lang.Runnable
            public final void run() {
                PostCallDurationPresenter.this.a();
            }
        });
    }
}
