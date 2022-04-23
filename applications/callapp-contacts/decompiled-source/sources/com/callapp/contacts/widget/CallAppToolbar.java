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

    /* renamed from: a  reason: collision with root package name */
    public Toolbar f16434a;

    /* renamed from: b  reason: collision with root package name */
    public SearchView f16435b;

    /* renamed from: c  reason: collision with root package name */
    public Set<SearchEventsListener> f16436c;

    /* renamed from: d  reason: collision with root package name */
    private GlideUtils.GifPlayer f16437d;
    private Toolbar e;
    private EditText f;
    private float g;
    private View.OnTouchListener h;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/CallAppToolbar$SearchEventsListener.class */
    public interface SearchEventsListener {
        void a(String str);

        void b(String str);

        void d();

        void e();

        void f();

        void g();

        void h();

        void i();
    }

    public CallAppToolbar(Context context) {
        this(context, null);
    }

    public CallAppToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CallAppToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f16436c = new HashSet();
        this.h = new View.OnTouchListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                CallAppToolbar.this.g = motionEvent.getRawX();
                CallAppToolbar.this.c(true);
                return true;
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
        this.e = toolbar;
        toolbar.setBackgroundColor(color2);
        Toolbar toolbar2 = (Toolbar) findViewById(2131363761);
        this.f16434a = toolbar2;
        toolbar2.setBackgroundColor(color);
        this.f16434a.setNavigationIcon(2131231456);
        this.f16434a.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar callAppToolbar = CallAppToolbar.this;
                callAppToolbar.g = callAppToolbar.getResources().getDimension(2131165571);
                CallAppToolbar.this.a(true);
            }
        });
        this.f16434a.setContentInsetEndWithActions(0);
        this.f16434a.setContentInsetStartWithNavigation(0);
        SearchView searchView = (SearchView) findViewById(2131363774);
        this.f16435b = searchView;
        searchView.setBackgroundResource(i2);
        this.f16435b.a();
        this.f16435b.clearFocus();
        this.f16435b.setOnQueryTextFocusChangeListener(_$$Lambda$CallAppToolbar$2P0ubPbVFC_lszeRh95OFHJu4lk.INSTANCE);
        this.f16435b.setSubmitButtonEnabled(false);
        this.f16435b.setMaxWidth(Integer.MAX_VALUE);
        this.f16435b.setQueryHint(Activities.getString(2131887611));
        ((AppCompatImageView) this.f16435b.findViewById(2131363767)).setImageResource(2131231599);
        EditText editText = (EditText) this.f16435b.findViewById(2131363773);
        this.f = editText;
        editText.setTextColor(color3);
        this.f.setHint(Activities.getString(2131887611));
        this.f.setHintTextColor(ThemeUtils.getColor(2131099923));
        this.f.addTextChangedListener(this);
        this.f.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                if (i3 != 3 && i3 != 6) {
                    return false;
                }
                Activities.b(CallAppToolbar.this.f);
                CallAppToolbar callAppToolbar = CallAppToolbar.this;
                CallAppToolbar.a(callAppToolbar, callAppToolbar.f.getText().toString());
                return true;
            }
        });
        ViewUtils.a(this.e.findViewById(2131364135), 2131232176, ThemeUtils.getColor(2131100228), (int) Activities.a(1.0f));
        TextView textView = (TextView) this.e.findViewById(2131364130);
        textView.setText(Activities.getString(2131887611));
        textView.setTextColor(ThemeUtils.getColor(2131099786));
        textView.setOnTouchListener(this.h);
        ImageView imageView = (ImageView) findViewById(2131364545);
        imageView.setColorFilter(ThemeUtils.getColor(2131099786));
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar.b(CallAppToolbar.this);
            }
        });
        findViewById(2131363448).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar.c(CallAppToolbar.this);
            }
        });
        findViewById(2131362176).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallAppToolbar.d(CallAppToolbar.this);
            }
        });
        final ImageView imageView2 = (ImageView) findViewById(2131364154);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.IN_APP_PROMOTION, "Icon clicked", "Top bar icon");
                CallAppToolbar.e(CallAppToolbar.this);
            }
        });
        if (!BillingManager.isBillingAvailable() || Prefs.cJ.get().booleanValue()) {
            imageView2.setVisibility(8);
            return;
        }
        imageView2.setVisibility(0);
        if (DateUtils.b(new Date(), Prefs.gq.get()) >= 2) {
            this.f16437d = new GlideUtils.GifPlayer(CallAppApplication.get(), imageView2, 2131232169, 2, true, true, 5000, new GlideUtils.AnimationEndsListener() { // from class: com.callapp.contacts.widget.CallAppToolbar.8
                @Override // com.callapp.contacts.util.glide.GlideUtils.AnimationEndsListener
                public final void a() {
                    imageView2.setImageResource(2131231849);
                }
            });
            Prefs.gq.set(new Date());
            return;
        }
        imageView2.setImageResource(2131231848);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(View view, boolean z) {
        if (z) {
            Activities.a(view.findFocus(), 500);
        }
    }

    static /* synthetic */ void a(CallAppToolbar callAppToolbar, String str) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f16436c) {
            searchEventsListener.a(str);
        }
    }

    static /* synthetic */ void b(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f16436c) {
            searchEventsListener.f();
        }
    }

    private void c() {
        for (SearchEventsListener searchEventsListener : this.f16436c) {
            searchEventsListener.d();
        }
    }

    static /* synthetic */ void c(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f16436c) {
            searchEventsListener.g();
        }
    }

    private void d() {
        for (SearchEventsListener searchEventsListener : this.f16436c) {
            searchEventsListener.e();
        }
    }

    static /* synthetic */ void d(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f16436c) {
            searchEventsListener.h();
        }
    }

    private void d(final boolean z) {
        int width = this.e.getWidth();
        int height = this.e.getHeight() / 2;
        Animator createCircularReveal = z ? ViewAnimationUtils.createCircularReveal(this.f16434a, (int) this.g, height, BitmapDescriptorFactory.HUE_RED, width) : ViewAnimationUtils.createCircularReveal(this.f16434a, (int) this.g, height, width, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.setDuration(z ? 300L : 150L);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.CallAppToolbar.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    super.onAnimationEnd(animator);
                    CallAppToolbar.this.f16434a.setVisibility(4);
                }
            }
        });
        if (z) {
            this.f16434a.setVisibility(0);
        }
        createCircularReveal.start();
    }

    static /* synthetic */ void e(CallAppToolbar callAppToolbar) {
        for (SearchEventsListener searchEventsListener : callAppToolbar.f16436c) {
            searchEventsListener.i();
        }
    }

    public final void a() {
        this.f16435b.requestFocus();
        Activities.a(this.f16435b);
    }

    public final void a(boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            this.f16434a.setVisibility(8);
        } else if (z) {
            d(false);
        } else {
            this.f16434a.setVisibility(8);
        }
        if (StringUtils.b(this.f.getText())) {
            this.f.setText("");
        } else {
            this.g = getResources().getDimension(2131165571) / 2.0f;
            AndroidUtils.a(this.f16435b, 1);
        }
        d();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        for (SearchEventsListener searchEventsListener : this.f16436c) {
            searchEventsListener.b(obj);
        }
    }

    public final void b() {
        this.f.setText("");
    }

    public final void b(boolean z) {
        this.f16435b.setSubmitButtonEnabled(false);
        this.f16435b.setMaxWidth(Integer.MAX_VALUE);
        this.f16435b.setQueryHint(Activities.getString(2131887611));
        if (Build.VERSION.SDK_INT < 21) {
            this.f16434a.setVisibility(0);
        } else if (z) {
            d(true);
        } else {
            this.f16434a.setVisibility(0);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public final void c(boolean z) {
        b(z);
        c();
        a();
    }

    public String getCurrentSearchText() {
        return this.f.getText().toString();
    }

    public Toolbar getMainToolbar() {
        return this.e;
    }

    public boolean isInSearchMode() {
        return this.f16434a.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f.removeTextChangedListener(this);
        this.f16436c.clear();
        GlideUtils.GifPlayer gifPlayer = this.f16437d;
        if (gifPlayer != null) {
            gifPlayer.b();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.e.setBackgroundColor(i);
    }

    public void setQuery(String str) {
        if (!StringUtils.b(this.f.getText().toString(), str)) {
            this.f.removeTextChangedListener(this);
            this.f.setText(str);
            this.f.addTextChangedListener(this);
        }
    }
}
