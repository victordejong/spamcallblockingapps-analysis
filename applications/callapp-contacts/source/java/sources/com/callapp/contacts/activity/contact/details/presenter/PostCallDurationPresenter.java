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

    /* renamed from: a */
    private static final int f22153a = ThemeUtils.m27386a(CallAppApplication.get(), 2131100108);

    /* renamed from: b */
    private View f22154b;

    /* renamed from: c */
    private ImageView f22155c;

    /* renamed from: e */
    private TextView f22156e;

    /* renamed from: f */
    private TextView f22157f;

    /* renamed from: a */
    public /* synthetic */ void m30810a() {
        View view = this.f22154b;
        if (view != null) {
            view.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m30809a(PostCallDurationPresenter postCallDurationPresenter) {
        if (ViewUtils.m27329a(postCallDurationPresenter.f22154b)) {
            ((RetractableView) postCallDurationPresenter.f22154b).mo26651c();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m30808a(PostCallDurationPresenter postCallDurationPresenter, int i, int i2) {
        if (!ViewUtils.m27329a(postCallDurationPresenter.f22154b)) {
            View inflate = ((ViewStub) postCallDurationPresenter.f22154b).inflate();
            postCallDurationPresenter.f22154b = inflate;
            inflate.setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099891));
            ((RetractableView) postCallDurationPresenter.f22154b).setExpandMaxHeight((int) Activities.m27699a(32.0f));
            ((RetractableView) postCallDurationPresenter.f22154b).mo26651c();
            postCallDurationPresenter.f22155c = (ImageView) postCallDurationPresenter.f22154b.findViewById(2131363545);
            TextView textView = (TextView) postCallDurationPresenter.f22154b.findViewById(2131363543);
            postCallDurationPresenter.f22156e = textView;
            textView.setText(Activities.getString(2131887422));
            postCallDurationPresenter.f22157f = (TextView) postCallDurationPresenter.f22154b.findViewById(2131363544);
        }
        ImageUtils.m27530a(postCallDurationPresenter.f22155c, i2);
        TextView textView2 = postCallDurationPresenter.f22156e;
        int i3 = f22153a;
        textView2.setTextColor(i3);
        if (i == 0) {
            postCallDurationPresenter.f22157f.setVisibility(8);
        } else {
            postCallDurationPresenter.f22157f.setVisibility(0);
            postCallDurationPresenter.f22157f.setText(DateUtils.m27122b(i));
            postCallDurationPresenter.f22157f.setTextColor(i3);
        }
        ((RetractableView) postCallDurationPresenter.f22154b).mo26661a();
    }

    @Override // com.callapp.contacts.manager.phone.CallStateListener
    public void onCallStateChanged(final CallData callData) {
        this.presentersContainer.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter.PostCallDurationPresenter.1
            @Override // java.lang.Runnable
            public void run() {
                if (!callData.getState().isPostCall() || !callData.isIncoming()) {
                    PostCallDurationPresenter.m30809a(PostCallDurationPresenter.this);
                    return;
                }
                int i = 0;
                if (callData.getTalkingStartTime() > 0) {
                    i = (int) ((System.currentTimeMillis() - callData.getTalkingStartTime()) / 1000);
                }
                PostCallDurationPresenter.m30808a(PostCallDurationPresenter.this, i, CallLogUtils.m27570a(callData));
            }
        });
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.BasePresenter
    public void onCreate(PresentersContainer presentersContainer) {
        this.f22154b = presentersContainer.findViewById(2131363542);
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
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.presenter._$$Lambda$PostCallDurationPresenter$9SsdN7rl_4PnwGRxR58Ak0ZU7js
            @Override // java.lang.Runnable
            public final void run() {
                PostCallDurationPresenter.this.m30810a();
            }
        });
    }
}
