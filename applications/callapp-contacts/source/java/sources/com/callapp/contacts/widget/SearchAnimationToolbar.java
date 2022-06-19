package com.callapp.contacts.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import com.callapp.contacts.C5563R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchAnimationToolbar.class */
public class SearchAnimationToolbar extends FrameLayout implements TextWatcher {

    /* renamed from: a */
    public Toolbar f28872a;

    /* renamed from: b */
    public MenuItem f28873b;

    /* renamed from: c */
    private Toolbar f28874c;

    /* renamed from: d */
    private EditText f28875d;

    /* renamed from: e */
    private OnSearchQueryChangedListener f28876e;

    /* renamed from: f */
    private String f28877f;

    /* renamed from: g */
    private boolean f28878g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener.class */
    public interface OnSearchQueryChangedListener {
        /* renamed from: a */
        void mo26640a(String str);

        /* renamed from: b */
        void mo26639b();

        /* renamed from: c */
        void mo26638c();
    }

    public SearchAnimationToolbar(Context context) {
        this(context, null);
    }

    public SearchAnimationToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchAnimationToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f28877f = "";
        View.inflate(getContext(), 2131559174, this);
        this.f28874c = (Toolbar) findViewById(2131363195);
        Toolbar toolbar = (Toolbar) findViewById(2131363194);
        this.f28872a = toolbar;
        toolbar.m45855a(2131623947);
        this.f28872a.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchAnimationToolbar.this.m26646b();
            }
        });
        MenuItem findItem = this.f28872a.m45836f().findItem(2131361955);
        this.f28873b = findItem;
        findItem.setOnActionExpandListener(new MenuItem.OnActionExpandListener() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.2
            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                SearchAnimationToolbar.this.m26646b();
                return true;
            }

            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                return true;
            }
        });
        SearchView searchView = (SearchView) this.f28873b.getActionView();
        searchView.setSubmitButtonEnabled(false);
        ((AppCompatImageView) searchView.findViewById(2131363767)).setImageResource(2131231599);
        EditText editText = (EditText) searchView.findViewById(2131363773);
        this.f28875d = editText;
        editText.addTextChangedListener(this);
        this.f28875d.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 == 3 || i2 == 6) {
                    SearchAnimationToolbar.this.f28875d.getText();
                    SearchAnimationToolbar.m26644c();
                    return true;
                }
                return false;
            }
        });
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C5563R.styleable.SearchAnimationToolbar);
        String string = obtainStyledAttributes.getString(4);
        int color = obtainStyledAttributes.getColor(5, -1);
        String string2 = obtainStyledAttributes.getString(2);
        int color2 = obtainStyledAttributes.getColor(3, -1);
        this.f28874c.setTitle(string);
        this.f28874c.setTitleTextColor(color);
        if (!TextUtils.isEmpty(string2)) {
            this.f28874c.setSubtitle(string2);
            this.f28874c.setSubtitleTextColor(color2);
        }
        String string3 = obtainStyledAttributes.getString(1);
        if (!TextUtils.isEmpty(string3)) {
            this.f28875d.setHint(string3);
        }
        this.f28872a.setBackgroundColor(obtainStyledAttributes.getColor(0, -1));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m26647a(final boolean z) {
        int width = this.f28874c.getWidth() - (getResources().getDimensionPixelSize(2131165199) / 2);
        int height = this.f28874c.getHeight() / 2;
        Animator createCircularReveal = z ? ViewAnimationUtils.createCircularReveal(this.f28872a, width, height, BitmapDescriptorFactory.HUE_RED, width) : ViewAnimationUtils.createCircularReveal(this.f28872a, width, height, width, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.setDuration(250L);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    super.onAnimationEnd(animator);
                    SearchAnimationToolbar.this.f28872a.setVisibility(4);
                }
            }
        });
        if (z) {
            this.f28872a.setVisibility(0);
            m26642d();
        } else {
            OnSearchQueryChangedListener onSearchQueryChangedListener = this.f28876e;
            if (onSearchQueryChangedListener != null) {
                onSearchQueryChangedListener.mo26639b();
            }
        }
        createCircularReveal.start();
    }

    /* renamed from: c */
    static /* synthetic */ void m26644c() {
    }

    /* renamed from: d */
    private void m26642d() {
        OnSearchQueryChangedListener onSearchQueryChangedListener = this.f28876e;
        if (onSearchQueryChangedListener != null) {
            onSearchQueryChangedListener.mo26638c();
        }
    }

    /* renamed from: e */
    private void m26641e() {
        if (Build.VERSION.SDK_INT >= 21) {
            m26647a(true);
        } else {
            this.f28872a.setVisibility(0);
            m26642d();
        }
        this.f28878g = true;
    }

    /* renamed from: a */
    public final boolean m26649a() {
        m26641e();
        this.f28873b.expandActionView();
        return true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!this.f28877f.equalsIgnoreCase(editable.toString())) {
            String obj = editable.toString();
            this.f28877f = obj;
            OnSearchQueryChangedListener onSearchQueryChangedListener = this.f28876e;
            if (onSearchQueryChangedListener == null) {
                return;
            }
            onSearchQueryChangedListener.mo26640a(obj);
        }
    }

    /* renamed from: b */
    public final void m26646b() {
        if (Build.VERSION.SDK_INT >= 21) {
            m26647a(false);
        } else {
            this.f28872a.setVisibility(8);
        }
        this.f28878g = false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public Toolbar getSearchToolbar() {
        return this.f28872a;
    }

    public Toolbar getToolbar() {
        return this.f28874c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f28875d.removeTextChangedListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void setOnSearchQueryChangedListener(OnSearchQueryChangedListener onSearchQueryChangedListener) {
        this.f28876e = onSearchQueryChangedListener;
    }

    public void setSearchHint(String str) {
        this.f28875d.setHint(str);
    }

    public void setSearchHintColor(int i) {
        ((EditText) ((SearchView) this.f28873b.getActionView()).findViewById(2131363773)).setHintTextColor(i);
    }

    public void setSearchTextColor(int i) {
        ((EditText) ((SearchView) this.f28873b.getActionView()).findViewById(2131363773)).setTextColor(i);
    }

    public void setSupportActionBar(AppCompatActivity appCompatActivity) {
        appCompatActivity.setSupportActionBar(this.f28874c);
    }

    public void setTitle(String str) {
        this.f28874c.setTitle(str);
        this.f28874c.invalidate();
    }

    public void setTitleTextColor(int i) {
        this.f28874c.setTitleTextColor(i);
    }
}
