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
import com.callapp.contacts.R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchAnimationToolbar.class */
public class SearchAnimationToolbar extends FrameLayout implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public Toolbar f16584a;

    /* renamed from: b  reason: collision with root package name */
    public MenuItem f16585b;

    /* renamed from: c  reason: collision with root package name */
    private Toolbar f16586c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f16587d;
    private OnSearchQueryChangedListener e;
    private String f;
    private boolean g;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/SearchAnimationToolbar$OnSearchQueryChangedListener.class */
    public interface OnSearchQueryChangedListener {
        void a(String str);

        void b();

        void c();
    }

    public SearchAnimationToolbar(Context context) {
        this(context, null);
    }

    public SearchAnimationToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchAnimationToolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f = "";
        View.inflate(getContext(), 2131559174, this);
        this.f16586c = (Toolbar) findViewById(2131363195);
        Toolbar toolbar = (Toolbar) findViewById(2131363194);
        this.f16584a = toolbar;
        toolbar.a(2131623947);
        this.f16584a.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchAnimationToolbar.this.b();
            }
        });
        MenuItem findItem = this.f16584a.f().findItem(2131361955);
        this.f16585b = findItem;
        findItem.setOnActionExpandListener(new MenuItem.OnActionExpandListener() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.2
            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                SearchAnimationToolbar.this.b();
                return true;
            }

            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                return true;
            }
        });
        SearchView searchView = (SearchView) this.f16585b.getActionView();
        searchView.setSubmitButtonEnabled(false);
        ((AppCompatImageView) searchView.findViewById(2131363767)).setImageResource(2131231599);
        EditText editText = (EditText) searchView.findViewById(2131363773);
        this.f16587d = editText;
        editText.addTextChangedListener(this);
        this.f16587d.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.3
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                if (i2 != 3 && i2 != 6) {
                    return false;
                }
                SearchAnimationToolbar.this.f16587d.getText();
                SearchAnimationToolbar.c();
                return true;
            }
        });
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.SearchAnimationToolbar);
        String string = obtainStyledAttributes.getString(4);
        int color = obtainStyledAttributes.getColor(5, -1);
        String string2 = obtainStyledAttributes.getString(2);
        int color2 = obtainStyledAttributes.getColor(3, -1);
        this.f16586c.setTitle(string);
        this.f16586c.setTitleTextColor(color);
        if (!TextUtils.isEmpty(string2)) {
            this.f16586c.setSubtitle(string2);
            this.f16586c.setSubtitleTextColor(color2);
        }
        String string3 = obtainStyledAttributes.getString(1);
        if (!TextUtils.isEmpty(string3)) {
            this.f16587d.setHint(string3);
        }
        this.f16584a.setBackgroundColor(obtainStyledAttributes.getColor(0, -1));
        obtainStyledAttributes.recycle();
    }

    private void a(final boolean z) {
        int width = this.f16586c.getWidth() - (getResources().getDimensionPixelSize(2131165199) / 2);
        int height = this.f16586c.getHeight() / 2;
        Animator createCircularReveal = z ? ViewAnimationUtils.createCircularReveal(this.f16584a, width, height, BitmapDescriptorFactory.HUE_RED, width) : ViewAnimationUtils.createCircularReveal(this.f16584a, width, height, width, BitmapDescriptorFactory.HUE_RED);
        createCircularReveal.setDuration(250L);
        createCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.callapp.contacts.widget.SearchAnimationToolbar.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!z) {
                    super.onAnimationEnd(animator);
                    SearchAnimationToolbar.this.f16584a.setVisibility(4);
                }
            }
        });
        if (z) {
            this.f16584a.setVisibility(0);
            d();
        } else {
            OnSearchQueryChangedListener onSearchQueryChangedListener = this.e;
            if (onSearchQueryChangedListener != null) {
                onSearchQueryChangedListener.b();
            }
        }
        createCircularReveal.start();
    }

    static /* synthetic */ void c() {
    }

    private void d() {
        OnSearchQueryChangedListener onSearchQueryChangedListener = this.e;
        if (onSearchQueryChangedListener != null) {
            onSearchQueryChangedListener.c();
        }
    }

    private void e() {
        if (Build.VERSION.SDK_INT >= 21) {
            a(true);
        } else {
            this.f16584a.setVisibility(0);
            d();
        }
        this.g = true;
    }

    public final boolean a() {
        e();
        this.f16585b.expandActionView();
        return true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!this.f.equalsIgnoreCase(editable.toString())) {
            String obj = editable.toString();
            this.f = obj;
            OnSearchQueryChangedListener onSearchQueryChangedListener = this.e;
            if (onSearchQueryChangedListener != null) {
                onSearchQueryChangedListener.a(obj);
            }
        }
    }

    public final void b() {
        if (Build.VERSION.SDK_INT >= 21) {
            a(false);
        } else {
            this.f16584a.setVisibility(8);
        }
        this.g = false;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public Toolbar getSearchToolbar() {
        return this.f16584a;
    }

    public Toolbar getToolbar() {
        return this.f16586c;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f16587d.removeTextChangedListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void setOnSearchQueryChangedListener(OnSearchQueryChangedListener onSearchQueryChangedListener) {
        this.e = onSearchQueryChangedListener;
    }

    public void setSearchHint(String str) {
        this.f16587d.setHint(str);
    }

    public void setSearchHintColor(int i) {
        ((EditText) ((SearchView) this.f16585b.getActionView()).findViewById(2131363773)).setHintTextColor(i);
    }

    public void setSearchTextColor(int i) {
        ((EditText) ((SearchView) this.f16585b.getActionView()).findViewById(2131363773)).setTextColor(i);
    }

    public void setSupportActionBar(AppCompatActivity appCompatActivity) {
        appCompatActivity.setSupportActionBar(this.f16586c);
    }

    public void setTitle(String str) {
        this.f16586c.setTitle(str);
        this.f16586c.invalidate();
    }

    public void setTitleTextColor(int i) {
        this.f16586c.setTitleTextColor(i);
    }
}
