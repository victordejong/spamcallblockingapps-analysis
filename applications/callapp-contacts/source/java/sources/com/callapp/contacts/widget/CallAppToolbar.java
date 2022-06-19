package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.inAppBilling.BillingManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppToolbar.class */
public class CallAppToolbar extends FrameLayout implements TextWatcher {

    /* renamed from: a */
    public Toolbar f28614a;

    /* renamed from: b */
    public SearchView f28615b;

    /* renamed from: c */
    public Set<SearchEventsListener> f28616c;

    /* renamed from: d */
    private GlideUtils.GifPlayer f28617d;

    /* renamed from: e */
    private Toolbar f28618e;

    /* renamed from: f */
    private EditText f28619f;

    /* renamed from: g */
    private float f28620g;

    /* renamed from: h */
    private View.OnTouchListener f28621h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppToolbar$SearchEventsListener.class */
    public interface SearchEventsListener {
        /* renamed from: a */
        void mo26801a(String str);

        /* renamed from: b */
        void mo26800b(String str);

        /* renamed from: d */
        void mo26799d();

        /* renamed from: e */
        void mo26798e();

        /* renamed from: f */
        void mo26797f();

        /* renamed from: g */
        void mo26796g();

        /* renamed from: h */
        void mo26795h();

        /* renamed from: i */
        void mo26794i();
    }

    public CallAppToolbar(Context context) {
        this(context, null);
    }

    public CallAppToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28616c = new HashSet();
        this.f28621h = new View.OnTouchListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    CallAppToolbar.this.f28620g = motionEvent.getRawX();
                    CallAppToolbar.this.m26807c(true);
                    return true;
                }
                return false;
            }
        };
        ThemeUtils.getColor(2131099786);
        ThemeUtils.getColor(2131099786);
        int color = ThemeUtils.getColor(2131099686);
        int color2 = ThemeUtils.getColor(2131099943);
        int color3 = ThemeUtils.getColor(2131100140);
        int i2 = ThemeUtils.isThemeLight() ? 2131232174 : 2131232175;
        LayoutInflater.from(getContext()).inflate(2131559159, (ViewGroup) this, true);
        Toolbar toolbar = (Toolbar) findViewById(2131362646);
        this.f28618e = toolbar;
        toolbar.setBackgroundColor(color2);
        Toolbar toolbar2 = (Toolbar) findViewById(2131363761);
        this.f28614a = toolbar2;
        toolbar2.setBackgroundColor(color);
        this.f28614a.setNavigationIcon(2131231456);
        this.f28614a.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar callAppToolbar = CallAppToolbar.this;
                callAppToolbar.f28620g = callAppToolbar.getResources().getDimension(2131165571);
                CallAppToolbar.this.m26813a(true);
            }
        });
        this.f28614a.setContentInsetEndWithActions(0);
        this.f28614a.setContentInsetStartWithNavigation(0);
        SearchView searchView = (SearchView) findViewById(2131363774);
        this.f28615b = searchView;
        searchView.setBackgroundResource(i2);
        this.f28615b.mo45903a();
        this.f28615b.clearFocus();
        this.f28615b.setOnQueryTextFocusChangeListener(_$$Lambda$CallAppToolbar$2P0ubPbVFC_lszeRh95OFHJu4lk.INSTANCE);
        this.f28615b.setSubmitButtonEnabled(false);
        this.f28615b.setMaxWidth(Integer.MAX_VALUE);
        this.f28615b.setQueryHint(Activities.getString(2131887611));
        ((AppCompatImageView) this.f28615b.findViewById(2131363767)).setImageResource(2131231599);
        EditText editText = (EditText) this.f28615b.findViewById(2131363773);
        this.f28619f = editText;
        editText.setTextColor(color3);
        this.f28619f.setHint(Activities.getString(2131887611));
        this.f28619f.setHintTextColor(ThemeUtils.getColor(2131099923));
        this.f28619f.addTextChangedListener(this);
        this.f28619f.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                if (i3 == 3 || i3 == 6) {
                    Activities.m27653b(CallAppToolbar.this.f28619f);
                    CallAppToolbar callAppToolbar = CallAppToolbar.this;
                    CallAppToolbar.m26814a(callAppToolbar, callAppToolbar.f28619f.getText().toString());
                    return true;
                }
                return false;
            }
        });
        ViewUtils.m27325a(this.f28618e.findViewById(2131364135), 2131232176, ThemeUtils.getColor(2131100228), (int) Activities.m27699a(1.0f));
        TextView textView = (TextView) this.f28618e.findViewById(2131364130);
        textView.setText(Activities.getString(2131887611));
        textView.setTextColor(ThemeUtils.getColor(2131099786));
        textView.setOnTouchListener(this.f28621h);
        ImageView imageView = (ImageView) findViewById(2131364545);
        imageView.setColorFilter(ThemeUtils.getColor(2131099786));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar.m26811b(CallAppToolbar.this);
            }
        });
        findViewById(2131363448).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar.m26808c(CallAppToolbar.this);
            }
        });
        findViewById(2131362176).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar.m26805d(CallAppToolbar.this);
            }
        });
        final ImageView imageView2 = (ImageView) findViewById(2131364154);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28449a(Constants.IN_APP_PROMOTION, "Icon clicked", "Top bar icon");
                CallAppToolbar.m26803e(CallAppToolbar.this);
            }
        });
        if (!BillingManager.isBillingAvailable() || Prefs.f26339cJ.get().booleanValue()) {
            imageView2.setVisibility(8);
            return;
        }
        imageView2.setVisibility(0);
        if (DateUtils.m27118b(new Date(), Prefs.f26584gq.get()) < 2) {
            imageView2.setImageResource(2131231848);
            return;
        }
        this.f28617d = new GlideUtils.GifPlayer(CallAppApplication.get(), imageView2, 2131232169, 2, true, true, 5000, new GlideUtils.AnimationEndsListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.8
            @Override // com.callapp.contacts.util.glide.GlideUtils.AnimationEndsListener
            /* renamed from: a */
            public final void mo26574a() {
                imageView2.setImageResource(2131231849);
            }
        });
        Prefs.f26584gq.set(new Date());
    }

    /* renamed from: a */
    public static /* synthetic */ void m26817a(View view, boolean z) {
        if (z) {
            Activities.m27669a(view.findFocus(), 500);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m26814a(CallAppToolbar callAppToolbar, String str) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f28616c) {
            searchEventsListener.mo26801a(str);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m26811b(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f28616c) {
            searchEventsListener.mo26797f();
        }
    }

    /* renamed from: c */
    private void m26809c() {
        for (SearchEventsListener searchEventsListener : this.f28616c) {
            searchEventsListener.mo26799d();
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m26808c(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f28616c) {
            searchEventsListener.mo26796g();
        }
    }

    /* renamed from: d */
    private void m26806d() {
        for (SearchEventsListener searchEventsListener : this.f28616c) {
            searchEventsListener.mo26798e();
        }
    }

    /* renamed from: d */
    static /* synthetic */ void m26805d(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f28616c) {
            searchEventsListener.mo26795h();
        }
    }

    /* renamed from: d */
    private void m26804d(final boolean z) {
        int width = this.f28618e.getWidth();
        int height = this.f28618e.getHeight() / 2;
        Animator createCircularReveal = z ? ViewAnimationUtils.createCircularReveal(this.f28614a, (int) this.f28620g, height, BitmapDescriptorFactory.HUE_RED, width) : ViewAnimationUtils.createCircularReveal(this.f28614a, (int) this.f28620g, height, width, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.setDuration((z ? 300 : 150) == 1 ? 1L : 0L);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.CallAppToolbar.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    super.onAnimationEnd(animator);
                    CallAppToolbar.this.f28614a.setVisibility(4);
                }
            }
        });
        if (z) {
            this.f28614a.setVisibility(0);
        }
        createCircularReveal.start();
    }

    /* renamed from: e */
    static /* synthetic */ void m26803e(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f28616c) {
            searchEventsListener.mo26794i();
        }
    }

    /* renamed from: a */
    public final void m26818a() {
        this.f28615b.requestFocus();
        Activities.m27670a(this.f28615b);
    }

    /* renamed from: a */
    public final void m26813a(boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            this.f28614a.setVisibility(8);
        } else if (z) {
            m26804d(false);
        } else {
            this.f28614a.setVisibility(8);
        }
        if (StringUtils.m26045b(this.f28619f.getText())) {
            this.f28619f.setText("");
        } else {
            this.f28620g = getResources().getDimension(2131165571) / 2.0f;
            AndroidUtils.m27630a(this.f28615b, 1);
        }
        m26806d();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        for (SearchEventsListener searchEventsListener : this.f28616c) {
            searchEventsListener.mo26800b(obj);
        }
    }

    /* renamed from: b */
    public final void m26812b() {
        this.f28619f.setText("");
    }

    /* renamed from: b */
    public final void m26810b(boolean z) {
        this.f28615b.setSubmitButtonEnabled(false);
        this.f28615b.setMaxWidth(Integer.MAX_VALUE);
        this.f28615b.setQueryHint(Activities.getString(2131887611));
        if (Build.VERSION.SDK_INT < 21) {
            this.f28614a.setVisibility(0);
        } else if (z) {
            m26804d(true);
        } else {
            this.f28614a.setVisibility(0);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    /* renamed from: c */
    public final void m26807c(boolean z) {
        m26810b(z);
        m26809c();
        m26818a();
    }

    public String getCurrentSearchText() {
        return this.f28619f.getText().toString();
    }

    public Toolbar getMainToolbar() {
        return this.f28618e;
    }

    public boolean isInSearchMode() {
        return this.f28614a.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f28619f.removeTextChangedListener(this);
        this.f28616c.clear();
        GlideUtils.GifPlayer gifPlayer = this.f28617d;
        if (gifPlayer != null) {
            gifPlayer.m27031b();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f28618e.setBackgroundColor(i);
    }

    public void setQuery(String str) {
        if (!StringUtils.m26042b(this.f28619f.getText().toString(), str)) {
            this.f28619f.removeTextChangedListener(this);
            this.f28619f.setText(str);
            this.f28619f.addTextChangedListener(this);
        }
    }
}
