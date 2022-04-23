package com.tmobile.services.nameid.p007ui.search;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.p007ui.NameIDImageButton;
import com.tmobile.services.nameid.p007ui.search.NameIDSearch;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.ScreenDensityUtils;
import io.reactivex.subjects.BehaviorSubject;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004*\u00018\u0018��2\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010@\u001a\u00020?\u0012\n\b\u0002\u0010B\u001a\u0004\u0018\u00010A¢\u0006\u0004\bC\u0010DJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\r\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\bJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0014\u0010\bJ\r\u0010\u0015\u001a\u00020\u0004¢\u0006\u0004\b\u0015\u0010\bJ\u0015\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0016\u0010\u0006J\r\u0010\u0017\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\bJ\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0019\u0010\u0013J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001a\u0010\u0013J\u0017\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\nH\u0002¢\u0006\u0004\b \u0010\u0013J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\nH\u0002¢\u0006\u0004\b!\u0010\u0013R\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020+8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u001c\u00100\u001a\b\u0012\u0004\u0012\u00020\u00020/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00102\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00104\u001a\u00020\u001b8\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b4\u00105R\u001c\u00106\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u00109\u001a\u0002088\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010;\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010'R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006E"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchBar;", "Landroid/widget/RelativeLayout;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$OnSearchExpandListener;", "listener", "", "addOnSearchExpandListener", "(Lcom/tmobile/services/nameid/ui/search/NameIDSearch$OnSearchExpandListener;)V", "collapse", "()V", "expand", "", "getIsExpanded", "()Z", "Lio/reactivex/subjects/BehaviorSubject;", "Lcom/tmobile/services/nameid/ui/search/NameIDSearch$Query;", "getQueryObservable", "()Lio/reactivex/subjects/BehaviorSubject;", "alignEnd", "moveSearchButtonToEnd", "(Z)V", "onAttachedToWindow", "removeAllOnSearchExpandListeners", "removeOnSearchExpandListener", "resetSearch", "expanded", "setSearchBarColors", "setSearchBarMargins", "", "margin", "setTextEntryEndMargin", "(I)V", "show", "showBackButton", "updateScreen", "", "LOG_TAG", "Ljava/lang/String;", "Lcom/tmobile/services/nameid/ui/NameIDImageButton;", "backBtn", "Lcom/tmobile/services/nameid/ui/NameIDImageButton;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "barHolder", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/view/ViewGroup$MarginLayoutParams;", "getDefaultMarginParams", "()Landroid/view/ViewGroup$MarginLayoutParams;", "defaultMarginParams", "Ljava/util/ArrayList;", "expandListeners", "Ljava/util/ArrayList;", "isExpanded", "Z", "layoutResId", "I", "queryObservable", "Lio/reactivex/subjects/BehaviorSubject;", "com/tmobile/services/nameid/ui/search/NameIDSearchBar$queryWatcher$1", "queryWatcher", "Lcom/tmobile/services/nameid/ui/search/NameIDSearchBar$queryWatcher$1;", "searchBtn", "Landroid/widget/EditText;", "textEntry", "Landroid/widget/EditText;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchBar */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchBar.class */
public final class NameIDSearchBar extends RelativeLayout {

    /* renamed from: f */
    private final String f14159f;

    /* renamed from: g */
    private final int f14160g;

    /* renamed from: h */
    private final ConstraintLayout f14161h;

    /* renamed from: i */
    private final NameIDImageButton f14162i;

    /* renamed from: j */
    private final NameIDImageButton f14163j;

    /* renamed from: k */
    private final EditText f14164k;

    /* renamed from: l */
    private final BehaviorSubject<NameIDSearch.Query> f14165l;

    /* renamed from: m */
    private final ArrayList<NameIDSearch.OnSearchExpandListener> f14166m;

    /* renamed from: n */
    private boolean f14167n;

    /* renamed from: o */
    private final NameIDSearchBar$queryWatcher$1 f14168o;

    @JvmOverloads
    public NameIDSearchBar(@NotNull Context context) {
        this(context, null, 2, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.tmobile.services.nameid.ui.search.NameIDSearchBar$queryWatcher$1] */
    @JvmOverloads
    public NameIDSearchBar(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.m1830e(context, "context");
        this.f14159f = "NameIDSearchBar#";
        this.f14160g = C1517R.layout.search_bar;
        BehaviorSubject<NameIDSearch.Query> f = BehaviorSubject.m3221f();
        Intrinsics.m1831d(f, "BehaviorSubject.create()");
        this.f14165l = f;
        this.f14166m = new ArrayList<>();
        this.f14168o = new TextWatcher() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchBar$queryWatcher$1
            @Override // android.text.TextWatcher
            public void afterTextChanged(@Nullable Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(@Nullable CharSequence charSequence, int i, int i2, int i3) {
                NameIDSearchBar.this.f14165l.onNext(new NameIDSearch.Query(String.valueOf(charSequence), false));
            }
        };
        LayoutInflater.from(context).inflate(this.f14160g, (ViewGroup) this, true);
        View findViewById = findViewById(C1517R.C1520id.root_constraint_lyt);
        Intrinsics.m1831d(findViewById, "findViewById(R.id.root_constraint_lyt)");
        this.f14161h = (ConstraintLayout) findViewById;
        View findViewById2 = findViewById(C1517R.C1520id.search_bar_search_btn);
        Intrinsics.m1831d(findViewById2, "findViewById(R.id.search_bar_search_btn)");
        this.f14162i = (NameIDImageButton) findViewById2;
        View findViewById3 = findViewById(C1517R.C1520id.search_bar_back_btn);
        Intrinsics.m1831d(findViewById3, "findViewById(R.id.search_bar_back_btn)");
        this.f14163j = (NameIDImageButton) findViewById3;
        View findViewById4 = findViewById(C1517R.C1520id.search_bar_text_entry);
        Intrinsics.m1831d(findViewById4, "findViewById(R.id.search_bar_text_entry)");
        EditText editText = (EditText) findViewById4;
        this.f14164k = editText;
        editText.clearFocus();
        this.f14164k.addTextChangedListener(this.f14168o);
        this.f14164k.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchBar.1
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                boolean z = true;
                if (i != 3) {
                    z = false;
                } else {
                    NameIDSearchBar.this.f14165l.onNext(new NameIDSearch.Query(NameIDSearchBar.this.f14164k.getText().toString(), true));
                }
                return z;
            }
        });
        this.f14164k.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchBar.2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (z && !NameIDSearchBar.this.f14167n) {
                    NameIDSearchBar.this.m6012f();
                }
            }
        });
        this.f14162i.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchBar.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (NameIDSearchBar.this.f14167n) {
                    NameIDSearchBar.this.f14165l.onNext(new NameIDSearch.Query(NameIDSearchBar.this.f14164k.getText().toString(), true));
                    return;
                }
                NameIDSearchBar.this.f14164k.requestFocus();
            }
        });
        this.f14163j.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchBar.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameIDSearchBar.this.m6013e();
            }
        });
    }

    public /* synthetic */ NameIDSearchBar(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* renamed from: g */
    private final void m6011g(boolean z) {
        ConstraintSet constraintSet = new ConstraintSet();
        constraintSet.m20004j(this.f14161h);
        if (z) {
            constraintSet.m20006h(this.f14162i.getId(), 6);
            constraintSet.m20002l(this.f14162i.getId(), 7, 0, 7);
        } else {
            constraintSet.m20006h(this.f14162i.getId(), 7);
            constraintSet.m20002l(this.f14162i.getId(), 6, 0, 6);
        }
        constraintSet.m20010d(this.f14161h);
    }

    private final ViewGroup.MarginLayoutParams getDefaultMarginParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    /* renamed from: i */
    private final void m6009i(boolean z) {
        this.f14163j.setVisibility(z ? 0 : 4);
    }

    /* renamed from: j */
    private final void m6008j(boolean z) {
        setTextEntryEndMargin(z ? 32 : 8);
        m6011g(z);
        m6009i(z);
        setSearchBarColors(z);
        setSearchBarMargins(z);
    }

    private final void setSearchBarColors(boolean z) {
        if (z) {
            this.f14161h.setBackground(new ColorDrawable(getResources().getColor(C1517R.C1518color.white)));
            this.f14161h.setBackgroundTintList(null);
            this.f14161h.setElevation(0.0f);
            setBackgroundResource(C1517R.C1518color.white);
            this.f14162i.setImageTintList(getResources().getColorStateList(C1517R.C1518color.warm_grey));
            this.f14164k.setHintTextColor(getResources().getColor(C1517R.C1518color.warm_grey));
            return;
        }
        this.f14161h.setBackground(getResources().getDrawable(C1517R.C1519drawable.bg_rounded_button_background));
        this.f14161h.setBackgroundTintList(getResources().getColorStateList(C1517R.C1518color.white_or_royal_purple));
        ConstraintLayout constraintLayout = this.f14161h;
        Resources resources = getResources();
        Intrinsics.m1831d(resources, "resources");
        constraintLayout.setElevation(TypedValue.applyDimension(1, 12.0f, resources.getDisplayMetrics()));
        setBackgroundResource(C1517R.C1518color.white_or_deep_purple);
        this.f14162i.setImageTintList(getResources().getColorStateList(C1517R.C1518color.warm_grey_or_white));
        this.f14164k.setHintTextColor(getResources().getColor(C1517R.C1518color.warm_grey_or_white));
    }

    private final void setSearchBarMargins(boolean z) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        if (this.f14161h.getLayoutParams() == null) {
            marginLayoutParams = getDefaultMarginParams();
        } else {
            ViewGroup.LayoutParams layoutParams = this.f14161h.getLayoutParams();
            if (layoutParams != null) {
                marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            }
        }
        if (z) {
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(0);
            marginLayoutParams.topMargin = 0;
            marginLayoutParams.bottomMargin = 0;
        } else {
            int a = ScreenDensityUtils.m5376a(getContext(), 12);
            int a2 = ScreenDensityUtils.m5376a(getContext(), 16);
            marginLayoutParams.setMarginStart(a);
            marginLayoutParams.setMarginEnd(a);
            marginLayoutParams.topMargin = a2;
            marginLayoutParams.bottomMargin = a2;
        }
        this.f14161h.setLayoutParams(marginLayoutParams);
    }

    private final void setTextEntryEndMargin(int i) {
        ViewGroup.LayoutParams layoutParams = this.f14164k.getLayoutParams();
        ViewGroup.MarginLayoutParams defaultMarginParams = (layoutParams == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) ? getDefaultMarginParams() : (ViewGroup.MarginLayoutParams) layoutParams;
        defaultMarginParams.setMarginEnd(ScreenDensityUtils.m5376a(getContext(), i));
        this.f14164k.setLayoutParams(defaultMarginParams);
    }

    /* renamed from: d */
    public final void m6014d(@NotNull NameIDSearch.OnSearchExpandListener listener) {
        Intrinsics.m1830e(listener, "listener");
        String str = this.f14159f;
        LogUtil.m5643d(str, "added expand listener " + listener);
        if (!this.f14166m.contains(listener)) {
            this.f14166m.add(listener);
        }
    }

    /* renamed from: e */
    public final void m6013e() {
        LogUtil.m5643d(this.f14159f, "Search bar collapsing");
        for (NameIDSearch.OnSearchExpandListener onSearchExpandListener : this.f14166m) {
            onSearchExpandListener.mo5961e();
        }
        this.f14164k.setText("");
        this.f14164k.clearFocus();
        m6008j(false);
        this.f14167n = false;
    }

    /* renamed from: f */
    public final void m6012f() {
        LogUtil.m5643d(this.f14159f, "Search bar expanding");
        this.f14167n = true;
        this.f14164k.setText("");
        m6008j(true);
        for (NameIDSearch.OnSearchExpandListener onSearchExpandListener : this.f14166m) {
            onSearchExpandListener.mo5960h();
        }
    }

    public final boolean getIsExpanded() {
        return this.f14167n;
    }

    @NotNull
    public final BehaviorSubject<NameIDSearch.Query> getQueryObservable() {
        return this.f14165l;
    }

    /* renamed from: h */
    public final void m6010h() {
        this.f14164k.setText("");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m6013e();
    }
}
