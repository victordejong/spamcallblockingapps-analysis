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
import com.criteo.publisher.a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadView.class */
public class KeypadView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    TwelveKeyDialer f12676a;

    /* renamed from: b  reason: collision with root package name */
    SimManager.SimId f12677b;

    /* renamed from: c  reason: collision with root package name */
    View f12678c;

    /* renamed from: d  reason: collision with root package name */
    ImageView f12679d;
    ImageView e;
    ImageView f;
    View g;
    GestureDetector h = new GestureDetector(getActivity(), new SwipeGestureListener(false, SwipeGestureListener.Sensitivity.MEDIUM) { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.7
        @Override // com.callapp.contacts.widget.SwipeGestureListener
        public final boolean a() {
            if (Activities.getScreenOrientation() != 1) {
                return false;
            }
            AnalyticsManager.get().a(Constants.KEYPAD, "Closing keypad - swipe to bottom in portrait", Constants.KEYPAD_LABEL);
            KeypadView.this.i.onCloseKeypadRequestedByUser(false);
            return true;
        }

        @Override // com.callapp.contacts.widget.SwipeGestureListener
        public final boolean b(float f) {
            if (Activities.getScreenOrientation() != 2) {
                return false;
            }
            AnalyticsManager.get().a(Constants.KEYPAD, "Closing keypad - swipe to the right in landscape", Constants.KEYPAD_LABEL);
            KeypadView.this.i.onCloseKeypadRequestedByUser(false);
            return true;
        }
    });
    private KeypadSearchEvents i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/keypad/KeypadView$KeypadSearchEvents.class */
    public interface KeypadSearchEvents {
        void onCloseKeypadRequestedByUser(boolean z);

        void onNumberChanged(String str, int i, int i2, int i3, boolean z);

        void onVoiceSearchRequested();
    }

    public KeypadView(Context context) {
        super(context);
        a(context);
    }

    public KeypadView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public KeypadView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        this.f12678c = inflate(context, 2131559166, this);
        if (!isInEditMode()) {
            EditText editText = (EditText) this.f12678c.findViewById(2131362597);
            editText.setTextColor(ThemeUtils.a(CallAppApplication.get(), 2131099883));
            editText.setVisibility(0);
            if (Build.VERSION.SDK_INT >= 21) {
                editText.setShowSoftInputOnFocus(false);
            }
        }
        this.g = findViewById(2131362468);
        this.f12678c.findViewById(2131363148).setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return KeypadView.this.h.onTouchEvent(motionEvent);
            }
        });
        ImageView imageView = (ImageView) this.f12678c.findViewById(a.C0337a.closeButton);
        this.f = imageView;
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.KEYPAD, "Closing keypad - clicked on close arrow", Constants.KEYPAD_LABEL);
                if (KeypadView.this.i != null) {
                    KeypadView.this.i.onCloseKeypadRequestedByUser(false);
                }
            }
        });
        ImageView imageView2 = (ImageView) this.f12678c.findViewById(2131363138);
        this.e = imageView2;
        imageView2.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.KEYPAD, "Closing keypad - clicked on show keyboard", Constants.KEYPAD_LABEL);
                if (KeypadView.this.i != null) {
                    KeypadView.this.i.onCloseKeypadRequestedByUser(true);
                }
            }
        });
        b();
    }

    public final void a() {
        TwelveKeyDialer twelveKeyDialer = this.f12676a;
        if (twelveKeyDialer != null) {
            twelveKeyDialer.c();
        }
    }

    public final void a(boolean z) {
        TwelveKeyDialer twelveKeyDialer = this.f12676a;
        if (twelveKeyDialer != null) {
            twelveKeyDialer.a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f12679d == null) {
            ImageView imageView = (ImageView) this.f12678c.findViewById(2131363867);
            this.f12679d = imageView;
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        }
        if (Singletons.get().getSimManager().getDualSimOperators() == null) {
            this.f12679d.setVisibility(8);
            return;
        }
        this.f12677b = (SimManager.SimId) Prefs.bR.get();
        this.f12679d.setVisibility(0);
        ImageUtils.a(this.f12679d, SimManager.c(this.f12677b), new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
        this.f12679d.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.keypad.KeypadView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(KeypadView.this.getActivity());
                KeypadView.this.f12677b = SimManager.b();
                ImageUtils.a(KeypadView.this.f12679d, SimManager.c(KeypadView.this.f12677b), new PorterDuffColorFilter(ThemeUtils.a(CallAppApplication.get(), 2131099885), PorterDuff.Mode.SRC_IN));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Activity getActivity() {
        if (isInEditMode()) {
            return null;
        }
        return (Activity) getContext();
    }

    public CharSequence getNumber() {
        TwelveKeyDialer twelveKeyDialer = this.f12676a;
        if (twelveKeyDialer != null) {
            return twelveKeyDialer.getNumber();
        }
        return null;
    }

    public boolean isBottomSectionShown() {
        return this.g.isShown();
    }

    public boolean isUserAddedToDialerText() {
        TwelveKeyDialer twelveKeyDialer = this.f12676a;
        return twelveKeyDialer != null && twelveKeyDialer.isUserAddedToDialerText();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (getVisibility() != 0) {
            CLog.b("Keypadview", "touch is not allowed or view is hidden");
            return true;
        }
        this.h.onTouchEvent(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void setKeypadSearchEventsListener(KeypadSearchEvents keypadSearchEvents) {
        this.i = keypadSearchEvents;
    }

    public void setNumber(String str) {
        if (StringUtils.b((CharSequence) str)) {
            this.f12676a.setNumber(str);
        } else {
            a(true);
        }
    }
}
