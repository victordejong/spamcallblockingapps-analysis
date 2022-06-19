package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p012v4.media.C0082b;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p117h8.C3035k;
import p140k.AbstractC3297b;
import p163m0.C3589v;
import p205q0.AbstractC4138a;
import p216r0.AbstractC4178a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC3297b {

    /* renamed from: o0 */
    public static final C0179n f632o0;

    /* renamed from: A */
    public Rect f633A;

    /* renamed from: B */
    public int[] f634B;

    /* renamed from: C */
    public int[] f635C;

    /* renamed from: D */
    public final ImageView f636D;

    /* renamed from: E */
    public final Drawable f637E;

    /* renamed from: F */
    public final int f638F;

    /* renamed from: G */
    public final int f639G;

    /* renamed from: H */
    public final Intent f640H;

    /* renamed from: I */
    public final Intent f641I;

    /* renamed from: J */
    public final CharSequence f642J;

    /* renamed from: K */
    public AbstractC0177l f643K;

    /* renamed from: L */
    public AbstractC0176k f644L;

    /* renamed from: M */
    public View.OnFocusChangeListener f645M;

    /* renamed from: N */
    public AbstractC0178m f646N;

    /* renamed from: O */
    public View.OnClickListener f647O;

    /* renamed from: P */
    public boolean f648P;

    /* renamed from: R */
    public boolean f649R;

    /* renamed from: S */
    public AbstractC4138a f650S;

    /* renamed from: T */
    public boolean f651T;

    /* renamed from: U */
    public CharSequence f652U;

    /* renamed from: V */
    public boolean f653V;

    /* renamed from: W */
    public boolean f654W;

    /* renamed from: a0 */
    public int f655a0;

    /* renamed from: b0 */
    public boolean f656b0;

    /* renamed from: c0 */
    public CharSequence f657c0;

    /* renamed from: d0 */
    public CharSequence f658d0;

    /* renamed from: e0 */
    public boolean f659e0;

    /* renamed from: f0 */
    public int f660f0;

    /* renamed from: g0 */
    public SearchableInfo f661g0;

    /* renamed from: h0 */
    public Bundle f662h0;

    /* renamed from: i0 */
    public final Runnable f663i0;

    /* renamed from: j0 */
    public Runnable f664j0;

    /* renamed from: k0 */
    public final WeakHashMap<String, Drawable.ConstantState> f665k0;

    /* renamed from: l0 */
    public final View.OnClickListener f666l0;

    /* renamed from: m0 */
    public View.OnKeyListener f667m0;

    /* renamed from: n0 */
    public TextWatcher f668n0;

    /* renamed from: p */
    public final SearchAutoComplete f669p;

    /* renamed from: q */
    public final View f670q;

    /* renamed from: r */
    public final View f671r;

    /* renamed from: s */
    public final View f672s;

    /* renamed from: t */
    public final ImageView f673t;

    /* renamed from: u */
    public final ImageView f674u;

    /* renamed from: v */
    public final ImageView f675v;

    /* renamed from: w */
    public final ImageView f676w;

    /* renamed from: x */
    public final View f677x;

    /* renamed from: y */
    public C0182p f678y;

    /* renamed from: z */
    public Rect f679z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends C0215d {

        /* renamed from: f */
        public SearchView f681f;

        /* renamed from: g */
        public boolean f682g;

        /* renamed from: h */
        public final Runnable f683h = new RunnableC0165a();

        /* renamed from: e */
        public int f680e = getThreshold();

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
        public class RunnableC0165a implements Runnable {
            public RunnableC0165a() {
                SearchAutoComplete.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.f682g) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f682g = false;
                }
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, C3681R.attr.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i < 960 || i2 < 720 || configuration.orientation != 2) {
                if (i >= 600) {
                    return 192;
                }
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 256;
        }

        /* renamed from: a */
        public void m8633a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (!enoughToFilter()) {
                    return;
                }
                showDropDown();
                return;
            }
            C0179n c0179n = SearchView.f632o0;
            Objects.requireNonNull(c0179n);
            C0179n.m8627a();
            Method method = c0179n.f697c;
            if (method == null) {
                return;
            }
            try {
                method.invoke(this, Boolean.TRUE);
            } catch (Exception e) {
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f680e <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.C0215d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f682g) {
                removeCallbacks(this.f683h);
                post(this.f683h);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        public void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            SearchView searchView = this.f681f;
            searchView.m8650A(searchView.f649R);
            searchView.post(searchView.f663i0);
            if (searchView.f669p.hasFocus()) {
                searchView.m8646n();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f681f.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (!z || !this.f681f.hasFocus() || getVisibility() != 0) {
                return;
            }
            boolean z2 = true;
            this.f682g = true;
            Context context = getContext();
            C0179n c0179n = SearchView.f632o0;
            if (context.getResources().getConfiguration().orientation != 2) {
                z2 = false;
            }
            if (!z2) {
                return;
            }
            m8633a();
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f682g = false;
                removeCallbacks(this.f683h);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f682g = true;
            } else {
                this.f682g = false;
                removeCallbacks(this.f683h);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f681f = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f680e = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public class C0166a implements TextWatcher {
        public C0166a() {
            SearchView.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView searchView = SearchView.this;
            Editable text = searchView.f669p.getText();
            searchView.f658d0 = text;
            boolean z = !TextUtils.isEmpty(text);
            searchView.m8634z(z);
            searchView.m8649B(!z);
            searchView.m8638v();
            searchView.m8635y();
            if (searchView.f643K != null && !TextUtils.equals(charSequence, searchView.f657c0)) {
                searchView.f643K.m8631a(charSequence.toString());
            }
            searchView.f657c0 = charSequence.toString();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public class RunnableC0167b implements Runnable {
        public RunnableC0167b() {
            SearchView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m8637w();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public class RunnableC0168c implements Runnable {
        public RunnableC0168c() {
            SearchView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC4138a abstractC4138a = SearchView.this.f650S;
            if (abstractC4138a instanceof View$OnClickListenerC0280t0) {
                abstractC4138a.mo1355b(null);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public class View$OnFocusChangeListenerC0169d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0169d() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f645M;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    public class View$OnLayoutChangeListenerC0170e implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC0170e() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView searchView = SearchView.this;
            if (searchView.f677x.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.f671r.getPaddingLeft();
                Rect rect = new Rect();
                boolean m8493a = C0236h1.m8493a(searchView);
                int dimensionPixelSize = searchView.f648P ? resources.getDimensionPixelSize(C3681R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(C3681R.dimen.abc_dropdownitem_icon_width) : 0;
                searchView.f669p.getDropDownBackground().getPadding(rect);
                searchView.f669p.setDropDownHorizontalOffset(m8493a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchView.f669p.setDropDownWidth((((searchView.f677x.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
    public class View$OnClickListenerC0171f implements View.OnClickListener {
        public View$OnClickListenerC0171f() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f673t) {
                searchView.m8640t();
            } else if (view == searchView.f675v) {
                searchView.m8644p();
            } else if (view == searchView.f674u) {
                searchView.m8639u();
            } else if (view != searchView.f676w) {
                if (view != searchView.f669p) {
                    return;
                }
                searchView.m8646n();
            } else {
                SearchableInfo searchableInfo = searchView.f661g0;
                if (searchableInfo == null) {
                    return;
                }
                try {
                    if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                        if (!searchableInfo.getVoiceSearchLaunchRecognizer()) {
                            return;
                        }
                        searchView.getContext().startActivity(searchView.m8647m(searchView.f641I, searchableInfo));
                        return;
                    }
                    Intent intent = new Intent(searchView.f640H);
                    ComponentName searchActivity = searchableInfo.getSearchActivity();
                    intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                    searchView.getContext().startActivity(intent);
                } catch (ActivityNotFoundException e) {
                    Log.w("SearchView", "Could not find voice search activity");
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
    public class View$OnKeyListenerC0172g implements View.OnKeyListener {
        public View$OnKeyListenerC0172g() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            boolean z;
            SearchView searchView = SearchView.this;
            if (searchView.f661g0 == null) {
                return false;
            }
            if (!searchView.f669p.isPopupShowing() || SearchView.this.f669p.getListSelection() == -1) {
                if ((TextUtils.getTrimmedLength(SearchView.this.f669p.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView2 = SearchView.this;
                searchView2.m8645o(0, null, searchView2.f669p.getText().toString());
                return true;
            }
            SearchView searchView3 = SearchView.this;
            if (searchView3.f661g0 == null) {
                z = false;
            } else if (searchView3.f650S == null) {
                z = false;
            } else {
                z = false;
                if (keyEvent.getAction() == 0) {
                    z = false;
                    if (keyEvent.hasNoModifiers()) {
                        if (i == 66 || i == 84 || i == 61) {
                            z = searchView3.m8643q(searchView3.f669p.getListSelection());
                        } else if (i == 21 || i == 22) {
                            searchView3.f669p.setSelection(i == 21 ? 0 : searchView3.f669p.length());
                            searchView3.f669p.setListSelection(0);
                            searchView3.f669p.clearListSelection();
                            searchView3.f669p.m8633a();
                            z = true;
                        } else {
                            z = false;
                            if (i == 19) {
                                searchView3.f669p.getListSelection();
                                z = false;
                            }
                        }
                    }
                }
            }
            return z;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
    public class C0173h implements TextView.OnEditorActionListener {
        public C0173h() {
            SearchView.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m8639u();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$i.class */
    public class C0174i implements AdapterView.OnItemClickListener {
        public C0174i() {
            SearchView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m8643q(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
    public class C0175j implements AdapterView.OnItemSelectedListener {
        public C0175j() {
            SearchView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m8642r(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$k.class */
    public interface AbstractC0176k {
        /* renamed from: a */
        boolean m8632a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$l.class */
    public interface AbstractC0177l {
        /* renamed from: a */
        boolean m8631a(String str);

        /* renamed from: b */
        boolean m8630b(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$m.class */
    public interface AbstractC0178m {
        /* renamed from: a */
        boolean m8629a(int i);

        /* renamed from: b */
        boolean m8628b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$n */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
    public static class C0179n {

        /* renamed from: a */
        public Method f695a;

        /* renamed from: b */
        public Method f696b;

        /* renamed from: c */
        public Method f697c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public C0179n() {
            this.f695a = null;
            this.f696b = null;
            this.f697c = null;
            m8627a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f695a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f696b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f697c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        public static void m8627a() {
            if (Build.VERSION.SDK_INT < 29) {
                return;
            }
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$o */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o.class */
    public static class C0180o extends AbstractC4178a {
        public static final Parcelable.Creator<C0180o> CREATOR = new C0181a();

        /* renamed from: c */
        public boolean f698c;

        /* renamed from: androidx.appcompat.widget.SearchView$o$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o$a.class */
        public class C0181a implements Parcelable.ClassLoaderCreator<C0180o> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new C0180o(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public C0180o createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0180o(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new C0180o[i];
            }
        }

        public C0180o(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f698c = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public C0180o(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder m8752j = C0082b.m8752j("SearchView.SavedState{");
            m8752j.append(Integer.toHexString(System.identityHashCode(this)));
            m8752j.append(" isIconified=");
            m8752j.append(this.f698c);
            m8752j.append("}");
            return m8752j.toString();
        }

        @Override // p216r0.AbstractC4178a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f13167a, i);
            parcel.writeValue(Boolean.valueOf(this.f698c));
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$p */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$p.class */
    public static class C0182p extends TouchDelegate {

        /* renamed from: a */
        public final View f699a;

        /* renamed from: e */
        public final int f703e;

        /* renamed from: f */
        public boolean f704f;

        /* renamed from: b */
        public final Rect f700b = new Rect();

        /* renamed from: d */
        public final Rect f702d = new Rect();

        /* renamed from: c */
        public final Rect f701c = new Rect();

        public C0182p(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f703e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m8626a(rect, rect2);
            this.f699a = view;
        }

        /* renamed from: a */
        public void m8626a(Rect rect, Rect rect2) {
            this.f700b.set(rect);
            this.f702d.set(rect);
            Rect rect3 = this.f702d;
            int i = this.f703e;
            rect3.inset(-i, -i);
            this.f701c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z2 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    boolean z3 = this.f704f;
                    z2 = z3;
                    if (z3) {
                        z2 = z3;
                        if (!this.f702d.contains(x, y)) {
                            z2 = z3;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f704f;
                        this.f704f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f700b.contains(x, y)) {
                    this.f704f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            boolean z4 = false;
            if (z2) {
                if (!z || this.f701c.contains(x, y)) {
                    Rect rect = this.f701c;
                    motionEvent.setLocation(x - rect.left, y - rect.top);
                } else {
                    motionEvent.setLocation(this.f699a.getWidth() / 2, this.f699a.getHeight() / 2);
                }
                z4 = this.f699a.dispatchTouchEvent(motionEvent);
            }
            return z4;
        }
    }

    static {
        f632o0 = Build.VERSION.SDK_INT < 29 ? new C0179n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C3681R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f679z = new Rect();
        this.f633A = new Rect();
        this.f634B = new int[2];
        this.f635C = new int[2];
        this.f663i0 = new RunnableC0167b();
        this.f664j0 = new RunnableC0168c();
        this.f665k0 = new WeakHashMap<>();
        View$OnClickListenerC0171f view$OnClickListenerC0171f = new View$OnClickListenerC0171f();
        this.f666l0 = view$OnClickListenerC0171f;
        this.f667m0 = new View$OnKeyListenerC0172g();
        C0173h c0173h = new C0173h();
        C0174i c0174i = new C0174i();
        C0175j c0175j = new C0175j();
        this.f668n0 = new C0166a();
        int[] iArr = C3035k.f10235v;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        C0303z0 c0303z0 = new C0303z0(context, obtainStyledAttributes);
        C3589v.m2104t(this, context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        LayoutInflater.from(context).inflate(c0303z0.m8388l(9, C3681R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C3681R.C3684id.search_src_text);
        this.f669p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f670q = findViewById(C3681R.C3684id.search_edit_frame);
        View findViewById = findViewById(C3681R.C3684id.search_plate);
        this.f671r = findViewById;
        View findViewById2 = findViewById(C3681R.C3684id.submit_area);
        this.f672s = findViewById2;
        ImageView imageView = (ImageView) findViewById(C3681R.C3684id.search_button);
        this.f673t = imageView;
        ImageView imageView2 = (ImageView) findViewById(C3681R.C3684id.search_go_btn);
        this.f674u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(C3681R.C3684id.search_close_btn);
        this.f675v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(C3681R.C3684id.search_voice_btn);
        this.f676w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(C3681R.C3684id.search_mag_icon);
        this.f636D = imageView5;
        C3589v.C3593d.m2077q(findViewById, c0303z0.m8393g(10));
        C3589v.C3593d.m2077q(findViewById2, c0303z0.m8393g(14));
        imageView.setImageDrawable(c0303z0.m8393g(13));
        imageView2.setImageDrawable(c0303z0.m8393g(7));
        imageView3.setImageDrawable(c0303z0.m8393g(4));
        imageView4.setImageDrawable(c0303z0.m8393g(16));
        imageView5.setImageDrawable(c0303z0.m8393g(13));
        this.f637E = c0303z0.m8393g(12);
        C0220d1.m8549a(imageView, getResources().getString(C3681R.string.abc_searchview_description_search));
        this.f638F = c0303z0.m8388l(15, C3681R.layout.abc_search_dropdown_item_icons_2line);
        this.f639G = c0303z0.m8388l(5, 0);
        imageView.setOnClickListener(view$OnClickListenerC0171f);
        imageView3.setOnClickListener(view$OnClickListenerC0171f);
        imageView2.setOnClickListener(view$OnClickListenerC0171f);
        imageView4.setOnClickListener(view$OnClickListenerC0171f);
        searchAutoComplete.setOnClickListener(view$OnClickListenerC0171f);
        searchAutoComplete.addTextChangedListener(this.f668n0);
        searchAutoComplete.setOnEditorActionListener(c0173h);
        searchAutoComplete.setOnItemClickListener(c0174i);
        searchAutoComplete.setOnItemSelectedListener(c0175j);
        searchAutoComplete.setOnKeyListener(this.f667m0);
        searchAutoComplete.setOnFocusChangeListener(new View$OnFocusChangeListenerC0169d());
        setIconifiedByDefault(c0303z0.m8399a(8, true));
        int m8394f = c0303z0.m8394f(1, -1);
        if (m8394f != -1) {
            setMaxWidth(m8394f);
        }
        this.f642J = c0303z0.m8386n(6);
        this.f652U = c0303z0.m8386n(11);
        int m8390j = c0303z0.m8390j(3, -1);
        if (m8390j != -1) {
            setImeOptions(m8390j);
        }
        int m8390j2 = c0303z0.m8390j(2, -1);
        if (m8390j2 != -1) {
            setInputType(m8390j2);
        }
        setFocusable(c0303z0.m8399a(0, true));
        obtainStyledAttributes.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f640H = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f641I = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f677x = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0170e());
        }
        m8650A(this.f648P);
        m8636x();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C3681R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C3681R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        this.f669p.setText(charSequence);
        this.f669p.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r4.f648P != false) goto L14;
     */
    /* renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8650A(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.f649R = r1
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L10
            r0 = 0
            r7 = r0
            goto L13
        L10:
            r0 = 8
            r7 = r0
        L13:
            r0 = r4
            androidx.appcompat.widget.SearchView$SearchAutoComplete r0 = r0.f669p
            android.text.Editable r0 = r0.getText()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r4
            android.widget.ImageView r0 = r0.f673t
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r1 = r8
            r0.m8634z(r1)
            r0 = r4
            android.view.View r0 = r0.f670q
            r9 = r0
            r0 = r5
            if (r0 == 0) goto L3f
            r0 = 8
            r7 = r0
            goto L41
        L3f:
            r0 = 0
            r7 = r0
        L41:
            r0 = r9
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            android.widget.ImageView r0 = r0.f636D
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L5a
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f648P
            if (r0 == 0) goto L5d
        L5a:
            r0 = 8
            r7 = r0
        L5d:
            r0 = r4
            android.widget.ImageView r0 = r0.f636D
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r0.m8638v()
            r0 = r4
            r1 = r8
            r2 = 1
            r1 = r1 ^ r2
            r0.m8649B(r1)
            r0 = r4
            r0.m8635y()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m8650A(boolean):void");
    }

    /* renamed from: B */
    public final void m8649B(boolean z) {
        int i = 8;
        if (this.f656b0) {
            i = 8;
            if (!this.f649R) {
                i = 8;
                if (z) {
                    this.f674u.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f676w.setVisibility(i);
    }

    @Override // p140k.AbstractC3297b
    /* renamed from: c */
    public void mo2317c() {
        if (this.f659e0) {
            return;
        }
        this.f659e0 = true;
        int imeOptions = this.f669p.getImeOptions();
        this.f660f0 = imeOptions;
        this.f669p.setImeOptions(imeOptions | 33554432);
        this.f669p.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f654W = true;
        super.clearFocus();
        this.f669p.clearFocus();
        this.f669p.setImeVisibility(false);
        this.f654W = false;
    }

    @Override // p140k.AbstractC3297b
    /* renamed from: e */
    public void mo2316e() {
        this.f669p.setText("");
        SearchAutoComplete searchAutoComplete = this.f669p;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.f658d0 = "";
        clearFocus();
        m8650A(true);
        this.f669p.setImeOptions(this.f660f0);
        this.f659e0 = false;
    }

    public int getImeOptions() {
        return this.f669p.getImeOptions();
    }

    public int getInputType() {
        return this.f669p.getInputType();
    }

    public int getMaxWidth() {
        return this.f655a0;
    }

    public CharSequence getQuery() {
        return this.f669p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f652U;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f661g0;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f642J : getContext().getText(this.f661g0.getHintId());
        }
        return charSequence;
    }

    public int getSuggestionCommitIconResId() {
        return this.f639G;
    }

    public int getSuggestionRowLayout() {
        return this.f638F;
    }

    public AbstractC4138a getSuggestionsAdapter() {
        return this.f650S;
    }

    /* renamed from: l */
    public final Intent m8648l(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f658d0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f662h0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f661g0.getSearchActivity());
        return intent;
    }

    /* renamed from: m */
    public final Intent m8647m(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f662h0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        int i = 1;
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i);
        intent3.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005b -> B:8:0x0036). Please submit an issue!!! */
    /* renamed from: n */
    public void m8646n() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f669p.refreshAutoCompleteResults();
            return;
        }
        C0179n c0179n = f632o0;
        SearchAutoComplete searchAutoComplete = this.f669p;
        Objects.requireNonNull(c0179n);
        C0179n.m8627a();
        Method method = c0179n.f695a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception e) {
            }
        }
        C0179n c0179n2 = f632o0;
        SearchAutoComplete searchAutoComplete2 = this.f669p;
        Objects.requireNonNull(c0179n2);
        C0179n.m8627a();
        Method method2 = c0179n2.f696b;
        if (method2 == null) {
            return;
        }
        try {
            method2.invoke(searchAutoComplete2, new Object[0]);
        } catch (Exception e2) {
        }
    }

    /* renamed from: o */
    public void m8645o(int i, String str, String str2) {
        getContext().startActivity(m8648l("android.intent.action.SEARCH", null, null, str2, i, null));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f663i0);
        post(this.f664j0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f669p;
            Rect rect = this.f679z;
            searchAutoComplete.getLocationInWindow(this.f634B);
            getLocationInWindow(this.f635C);
            int[] iArr = this.f634B;
            int i5 = iArr[1];
            int[] iArr2 = this.f635C;
            int i6 = i5 - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            rect.set(i7, i6, searchAutoComplete.getWidth() + i7, searchAutoComplete.getHeight() + i6);
            Rect rect2 = this.f633A;
            Rect rect3 = this.f679z;
            rect2.set(rect3.left, 0, rect3.right, i4 - i2);
            C0182p c0182p = this.f678y;
            if (c0182p != null) {
                c0182p.m8626a(this.f633A, this.f679z);
                return;
            }
            C0182p c0182p2 = new C0182p(this.f633A, this.f679z, this.f669p);
            this.f678y = c0182p2;
            setTouchDelegate(c0182p2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.f649R) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f655a0;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            i3 = this.f655a0;
            if (i3 <= 0) {
                i3 = getPreferredWidth();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f655a0;
            i3 = size;
            if (i5 > 0) {
                i3 = Math.min(i5, size);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0180o)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0180o c0180o = (C0180o) parcelable;
        super.onRestoreInstanceState(c0180o.f13167a);
        m8650A(c0180o.f698c);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0180o c0180o = new C0180o(super.onSaveInstanceState());
        c0180o.f698c = this.f649R;
        return c0180o;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.f663i0);
    }

    /* renamed from: p */
    public void m8644p() {
        if (!TextUtils.isEmpty(this.f669p.getText())) {
            this.f669p.setText("");
            this.f669p.requestFocus();
            this.f669p.setImeVisibility(true);
        } else if (!this.f648P) {
        } else {
            AbstractC0176k abstractC0176k = this.f644L;
            if (abstractC0176k != null && abstractC0176k.m8632a()) {
                return;
            }
            clearFocus();
            m8650A(true);
        }
    }

    /* renamed from: q */
    public boolean m8643q(int i) {
        Intent intent;
        int i2;
        String m8430h;
        AbstractC0178m abstractC0178m = this.f646N;
        if (abstractC0178m == null || !abstractC0178m.m8628b(i)) {
            Cursor cursor = this.f650S.f13058c;
            if (cursor != null && cursor.moveToPosition(i)) {
                try {
                    int i3 = View$OnClickListenerC0280t0.f1095y;
                    String m8430h2 = View$OnClickListenerC0280t0.m8430h(cursor, cursor.getColumnIndex("suggest_intent_action"));
                    String str = m8430h2;
                    if (m8430h2 == null) {
                        str = this.f661g0.getSuggestIntentAction();
                    }
                    String str2 = str;
                    if (str == null) {
                        str2 = "android.intent.action.SEARCH";
                    }
                    String m8430h3 = View$OnClickListenerC0280t0.m8430h(cursor, cursor.getColumnIndex("suggest_intent_data"));
                    String str3 = m8430h3;
                    if (m8430h3 == null) {
                        str3 = this.f661g0.getSuggestIntentData();
                    }
                    String str4 = str3;
                    if (str3 != null) {
                        str4 = str3;
                        if (View$OnClickListenerC0280t0.m8430h(cursor, cursor.getColumnIndex("suggest_intent_data_id")) != null) {
                            str4 = str3 + "/" + Uri.encode(m8430h);
                        }
                    }
                    intent = m8648l(str2, str4 == null ? null : Uri.parse(str4), View$OnClickListenerC0280t0.m8430h(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), View$OnClickListenerC0280t0.m8430h(cursor, cursor.getColumnIndex("suggest_intent_query")), 0, null);
                } catch (RuntimeException e) {
                    try {
                        i2 = cursor.getPosition();
                    } catch (RuntimeException e2) {
                        i2 = -1;
                    }
                    Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
                    intent = null;
                }
                if (intent != null) {
                    try {
                        getContext().startActivity(intent);
                    } catch (RuntimeException e3) {
                        intent.toString();
                    }
                }
            }
            this.f669p.setImeVisibility(false);
            this.f669p.dismissDropDown();
            return true;
        }
        return false;
    }

    /* renamed from: r */
    public boolean m8642r(int i) {
        AbstractC0178m abstractC0178m = this.f646N;
        if (abstractC0178m == null || !abstractC0178m.m8629a(i)) {
            Editable text = this.f669p.getText();
            Cursor cursor = this.f650S.f13058c;
            if (cursor == null) {
                return true;
            }
            if (!cursor.moveToPosition(i)) {
                setQuery(text);
                return true;
            }
            CharSequence mo1354c = this.f650S.mo1354c(cursor);
            if (mo1354c != null) {
                setQuery(mo1354c);
                return true;
            }
            setQuery(text);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (!this.f654W && isFocusable()) {
            if (this.f649R) {
                return super.requestFocus(i, rect);
            }
            boolean requestFocus = this.f669p.requestFocus(i, rect);
            if (requestFocus) {
                m8650A(false);
            }
            return requestFocus;
        }
        return false;
    }

    /* renamed from: s */
    public void m8641s(CharSequence charSequence) {
        setQuery(charSequence);
    }

    public void setAppSearchData(Bundle bundle) {
        this.f662h0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m8644p();
        } else {
            m8640t();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f648P == z) {
            return;
        }
        this.f648P = z;
        m8650A(z);
        m8636x();
    }

    public void setImeOptions(int i) {
        this.f669p.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f669p.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f655a0 = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0176k abstractC0176k) {
        this.f644L = abstractC0176k;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f645M = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0177l abstractC0177l) {
        this.f643K = abstractC0177l;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f647O = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0178m abstractC0178m) {
        this.f646N = abstractC0178m;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f652U = charSequence;
        m8636x();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f653V = z;
        AbstractC4138a abstractC4138a = this.f650S;
        if (abstractC4138a instanceof View$OnClickListenerC0280t0) {
            ((View$OnClickListenerC0280t0) abstractC4138a).f1101q = z ? 2 : 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0108, code lost:
        if (getContext().getPackageManager().resolveActivity(r8, 65536) != null) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setSearchableInfo(android.app.SearchableInfo r8) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.setSearchableInfo(android.app.SearchableInfo):void");
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f651T = z;
        m8650A(this.f649R);
    }

    public void setSuggestionsAdapter(AbstractC4138a abstractC4138a) {
        this.f650S = abstractC4138a;
        this.f669p.setAdapter(abstractC4138a);
    }

    /* renamed from: t */
    public void m8640t() {
        m8650A(false);
        this.f669p.requestFocus();
        this.f669p.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f647O;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: u */
    public void m8639u() {
        Editable text = this.f669p.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        AbstractC0177l abstractC0177l = this.f643K;
        if (abstractC0177l != null && abstractC0177l.m8630b(text.toString())) {
            return;
        }
        if (this.f661g0 != null) {
            m8645o(0, null, text.toString());
        }
        this.f669p.setImeVisibility(false);
        this.f669p.dismissDropDown();
    }

    /* renamed from: v */
    public final void m8638v() {
        boolean z = !TextUtils.isEmpty(this.f669p.getText());
        boolean z2 = true;
        if (!z) {
            z2 = this.f648P && !this.f659e0;
        }
        this.f675v.setVisibility(z2 ? 0 : 8);
        Drawable drawable = this.f675v.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* renamed from: w */
    public void m8637w() {
        int[] iArr = this.f669p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f671r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f672s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: x */
    public final void m8636x() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f669p;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        SpannableStringBuilder spannableStringBuilder = charSequence;
        if (this.f648P) {
            if (this.f637E == null) {
                spannableStringBuilder = charSequence;
            } else {
                int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
                this.f637E.setBounds(0, 0, textSize, textSize);
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("   ");
                spannableStringBuilder2.setSpan(new ImageSpan(this.f637E), 1, 2, 33);
                spannableStringBuilder2.append(charSequence);
                spannableStringBuilder = spannableStringBuilder2;
            }
        }
        searchAutoComplete.setHint(spannableStringBuilder);
    }

    /* renamed from: y */
    public final void m8635y() {
        int i;
        if ((this.f651T || this.f656b0) && !this.f649R) {
            i = 0;
            if (this.f674u.getVisibility() != 0) {
                if (this.f676w.getVisibility() == 0) {
                    i = 0;
                }
            }
            this.f672s.setVisibility(i);
        }
        i = 8;
        this.f672s.setVisibility(i);
    }

    /* renamed from: z */
    public final void m8634z(boolean z) {
        int i;
        boolean z2 = this.f651T;
        if (z2) {
            if (((z2 || this.f656b0) && !this.f649R) && hasFocus()) {
                i = 0;
                if (!z) {
                    if (!this.f656b0) {
                        i = 0;
                    }
                }
                this.f674u.setVisibility(i);
            }
        }
        i = 8;
        this.f674u.setVisibility(i);
    }
}
