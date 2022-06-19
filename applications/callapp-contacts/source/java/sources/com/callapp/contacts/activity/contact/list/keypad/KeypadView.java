package com.callapp.contacts.activity.contact.list.keypad;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.widget.SwipeGestureListener;
import com.callapp.framework.util.StringUtils;
import com.criteo.publisher.C8217a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadView.class */
public class KeypadView extends LinearLayout {

    /* renamed from: a */
    TwelveKeyDialer f22669a;

    /* renamed from: b */
    SimManager.SimId f22670b;

    /* renamed from: c */
    View f22671c;

    /* renamed from: d */
    ImageView f22672d;

    /* renamed from: e */
    ImageView f22673e;

    /* renamed from: f */
    ImageView f22674f;

    /* renamed from: g */
    View f22675g;

    /* renamed from: h */
    GestureDetector f22676h = new GestureDetector(getActivity(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.MEDIUM) { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.7
        @Override // com.callapp.contacts.widget.SwipeGestureListener
        /* renamed from: a */
        public final boolean mo26557a() {
            if (Activities.getScreenOrientation() == 1) {
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Closing keypad - swipe to bottom in portrait", Constants.KEYPAD_LABEL);
                KeypadView.this.f22677i.onCloseKeypadRequestedByUser(false);
                return true;
            }
            return false;
        }

        @Override // com.callapp.contacts.widget.SwipeGestureListener
        /* renamed from: b */
        public final boolean mo26554b(float f) {
            if (Activities.getScreenOrientation() == 2) {
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Closing keypad - swipe to the right in landscape", Constants.KEYPAD_LABEL);
                KeypadView.this.f22677i.onCloseKeypadRequestedByUser(false);
                return true;
            }
            return false;
        }
    });

    /* renamed from: i */
    private KeypadSearchEvents f22677i;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents.class */
    public interface KeypadSearchEvents {
        void onCloseKeypadRequestedByUser(boolean z);

        void onNumberChanged(String str, int i, int i2, int i3, boolean z);

        void onVoiceSearchRequested();
    }

    public KeypadView(Context context) {
        super(context);
        m30489a(context);
    }

    public KeypadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m30489a(context);
    }

    public KeypadView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m30489a(context);
    }

    /* renamed from: a */
    private void m30489a(Context context) {
        this.f22671c = inflate(context, 2131559166, this);
        if (!isInEditMode()) {
            EditText editText = (EditText) this.f22671c.findViewById(2131362597);
            editText.setTextColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099883));
            editText.setVisibility(0);
            if (Build.VERSION.SDK_INT >= 21) {
                editText.setShowSoftInputOnFocus(false);
            }
        }
        this.f22675g = findViewById(2131362468);
        this.f22671c.findViewById(2131363148).setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return KeypadView.this.f22676h.onTouchEvent(motionEvent);
            }
        });
        ImageView imageView = (ImageView) this.f22671c.findViewById(C8217a.C8218a.closeButton);
        this.f22674f = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f22674f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Closing keypad - clicked on close arrow", Constants.KEYPAD_LABEL);
                if (KeypadView.this.f22677i != null) {
                    KeypadView.this.f22677i.onCloseKeypadRequestedByUser(false);
                }
            }
        });
        ImageView imageView2 = (ImageView) this.f22671c.findViewById(2131363138);
        this.f22673e = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f22673e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28449a(Constants.KEYPAD, "Closing keypad - clicked on show keyboard", Constants.KEYPAD_LABEL);
                if (KeypadView.this.f22677i != null) {
                    KeypadView.this.f22677i.onCloseKeypadRequestedByUser(true);
                }
            }
        });
        m30485b();
    }

    /* renamed from: a */
    public final void m30490a() {
        TwelveKeyDialer twelveKeyDialer = this.f22669a;
        if (twelveKeyDialer != null) {
            twelveKeyDialer.m30467c();
        }
    }

    /* renamed from: a */
    public final void m30486a(boolean z) {
        TwelveKeyDialer twelveKeyDialer = this.f22669a;
        if (twelveKeyDialer != null) {
            twelveKeyDialer.m30473a(z);
        }
    }

    /* renamed from: b */
    public final void m30485b() {
        if (this.f22672d == null) {
            ImageView imageView = (ImageView) this.f22671c.findViewById(2131363867);
            this.f22672d = imageView;
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        }
        if (Singletons.get().getSimManager().getDualSimOperators() == null) {
            this.f22672d.setVisibility(8);
            return;
        }
        this.f22670b = (SimManager.SimId) Prefs.f26294bR.get();
        this.f22672d.setVisibility(0);
        ImageUtils.m27529a(this.f22672d, SimManager.m28138c(this.f22670b), new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f22672d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27635a(KeypadView.this.getActivity());
                KeypadView.this.f22670b = SimManager.m28143b();
                ImageUtils.m27529a(KeypadView.this.f22672d, SimManager.m28138c(KeypadView.this.f22670b), new PorterDuffColorFilter(ThemeUtils.m27386a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
            }
        });
    }

    public Activity getActivity() {
        if (isInEditMode()) {
            return null;
        }
        return (Activity) getContext();
    }

    public CharSequence getNumber() {
        TwelveKeyDialer twelveKeyDialer = this.f22669a;
        if (twelveKeyDialer != null) {
            return twelveKeyDialer.getNumber();
        }
        return null;
    }

    public boolean isBottomSectionShown() {
        return this.f22675g.isShown();
    }

    public boolean isUserAddedToDialerText() {
        TwelveKeyDialer twelveKeyDialer = this.f22669a;
        return twelveKeyDialer != null && twelveKeyDialer.isUserAddedToDialerText();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getVisibility() != 0) {
            CLog.m27592b("Keypadview", "touch is not allowed or view is hidden");
            return true;
        }
        this.f22676h.onTouchEvent(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setKeypadSearchEventsListener(KeypadSearchEvents keypadSearchEvents) {
        this.f22677i = keypadSearchEvents;
    }

    public void setNumber(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            this.f22669a.setNumber(str);
        } else {
            m30486a(true);
        }
    }
}
