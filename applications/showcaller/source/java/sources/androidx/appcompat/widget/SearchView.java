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
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
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
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p020b.p021a.C1423a;
import p020b.p021a.C1426d;
import p020b.p021a.C1428f;
import p020b.p021a.C1429g;
import p020b.p021a.C1430h;
import p020b.p021a.C1432j;
import p020b.p021a.p028o.AbstractC1457c;
import p020b.p041h.p050l.C1679w;
import p020b.p053i.p054a.AbstractC1696a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC1457c {

    /* renamed from: s */
    static final C0266n f1048s;

    /* renamed from: A */
    final ImageView f1049A;

    /* renamed from: B */
    private final View f1050B;

    /* renamed from: C */
    private C0267o f1051C;

    /* renamed from: D */
    private Rect f1052D;

    /* renamed from: E */
    private Rect f1053E;

    /* renamed from: F */
    private int[] f1054F;

    /* renamed from: G */
    private int[] f1055G;

    /* renamed from: H */
    private final ImageView f1056H;

    /* renamed from: I */
    private final Drawable f1057I;

    /* renamed from: J */
    private final int f1058J;

    /* renamed from: K */
    private final int f1059K;

    /* renamed from: L */
    private final Intent f1060L;

    /* renamed from: M */
    private final Intent f1061M;

    /* renamed from: N */
    private final CharSequence f1062N;

    /* renamed from: O */
    private AbstractC0264l f1063O;

    /* renamed from: P */
    private AbstractC0263k f1064P;

    /* renamed from: Q */
    View.OnFocusChangeListener f1065Q;

    /* renamed from: R */
    private AbstractC0265m f1066R;

    /* renamed from: S */
    private View.OnClickListener f1067S;

    /* renamed from: T */
    private boolean f1068T;

    /* renamed from: U */
    private boolean f1069U;

    /* renamed from: V */
    AbstractC1696a f1070V;

    /* renamed from: W */
    private boolean f1071W;

    /* renamed from: a0 */
    private CharSequence f1072a0;

    /* renamed from: b0 */
    private boolean f1073b0;

    /* renamed from: c0 */
    private boolean f1074c0;

    /* renamed from: d0 */
    private int f1075d0;

    /* renamed from: e0 */
    private boolean f1076e0;

    /* renamed from: f0 */
    private CharSequence f1077f0;

    /* renamed from: g0 */
    private CharSequence f1078g0;

    /* renamed from: h0 */
    private boolean f1079h0;

    /* renamed from: i0 */
    private int f1080i0;

    /* renamed from: j0 */
    SearchableInfo f1081j0;

    /* renamed from: k0 */
    private Bundle f1082k0;

    /* renamed from: l0 */
    private final Runnable f1083l0;

    /* renamed from: m0 */
    private Runnable f1084m0;

    /* renamed from: n0 */
    private final WeakHashMap<String, Drawable.ConstantState> f1085n0;

    /* renamed from: o0 */
    private final View.OnClickListener f1086o0;

    /* renamed from: p0 */
    View.OnKeyListener f1087p0;

    /* renamed from: q0 */
    private final TextView.OnEditorActionListener f1088q0;

    /* renamed from: r0 */
    private final AdapterView.OnItemClickListener f1089r0;

    /* renamed from: s0 */
    private final AdapterView.OnItemSelectedListener f1090s0;

    /* renamed from: t */
    final SearchAutoComplete f1091t;

    /* renamed from: t0 */
    private TextWatcher f1092t0;

    /* renamed from: u */
    private final View f1093u;

    /* renamed from: v */
    private final View f1094v;

    /* renamed from: w */
    private final View f1095w;

    /* renamed from: x */
    final ImageView f1096x;

    /* renamed from: y */
    final ImageView f1097y;

    /* renamed from: z */
    final ImageView f1098z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0251a();

        /* renamed from: f */
        boolean f1099f;

        /* renamed from: androidx.appcompat.widget.SearchView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState$a.class */
        class C0251a implements Parcelable.ClassLoaderCreator<SavedState> {
            C0251a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: b */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: c */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1099f = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1099f + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f1099f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: g */
        private int f1100g;

        /* renamed from: h */
        private SearchView f1101h;

        /* renamed from: i */
        private boolean f1102i;

        /* renamed from: j */
        final Runnable f1103j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
        public class RunnableC0252a implements Runnable {
            RunnableC0252a() {
                SearchAutoComplete.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.m35063c();
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C1423a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1103j = new RunnableC0252a();
            this.f1100g = getThreshold();
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
        void m35065a() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.f1048s.m35055c(this);
                return;
            }
            setInputMethodMode(1);
            if (!enoughToFilter()) {
                return;
            }
            showDropDown();
        }

        /* renamed from: b */
        boolean m35064b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* renamed from: c */
        void m35063c() {
            if (this.f1102i) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1102i = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1100g <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1102i) {
                removeCallbacks(this.f1103j);
                post(this.f1103j);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f1101h.m35080Z();
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
                        this.f1101h.clearFocus();
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
            if (!z || !this.f1101h.hasFocus() || getVisibility() != 0) {
                return;
            }
            this.f1102i = true;
            if (!SearchView.m35093M(getContext())) {
                return;
            }
            m35065a();
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f1102i = false;
                removeCallbacks(this.f1103j);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f1102i = true;
            } else {
                this.f1102i = false;
                removeCallbacks(this.f1103j);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1101h = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1100g = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public class C0253a implements TextWatcher {
        C0253a() {
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
            SearchView.this.m35081Y(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public class RunnableC0254b implements Runnable {
        RunnableC0254b() {
            SearchView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m35075e0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public class RunnableC0255c implements Runnable {
        RunnableC0255c() {
            SearchView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC1696a abstractC1696a = SearchView.this.f1070V;
            if (abstractC1696a instanceof View$OnClickListenerC0337y) {
                abstractC1696a.mo29200a(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public class View$OnFocusChangeListenerC0256d implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC0256d() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f1065Q;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    public class View$OnLayoutChangeListenerC0257e implements View.OnLayoutChangeListener {
        View$OnLayoutChangeListenerC0257e() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.m35104B();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
    public class View$OnClickListenerC0258f implements View.OnClickListener {
        View$OnClickListenerC0258f() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f1096x) {
                searchView.m35084V();
            } else if (view == searchView.f1098z) {
                searchView.m35088R();
            } else if (view == searchView.f1097y) {
                searchView.m35083W();
            } else if (view == searchView.f1049A) {
                searchView.m35079a0();
            } else if (view != searchView.f1091t) {
            } else {
                searchView.m35098H();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
    public class View$OnKeyListenerC0259g implements View.OnKeyListener {
        View$OnKeyListenerC0259g() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f1081j0 == null) {
                return false;
            }
            if (searchView.f1091t.isPopupShowing() && SearchView.this.f1091t.getListSelection() != -1) {
                return SearchView.this.m35082X(view, i, keyEvent);
            }
            if (SearchView.this.f1091t.m35064b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.m35090P(0, null, searchView2.f1091t.getText().toString());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
    public class C0260h implements TextView.OnEditorActionListener {
        C0260h() {
            SearchView.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m35083W();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$i.class */
    public class C0261i implements AdapterView.OnItemClickListener {
        C0261i() {
            SearchView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m35087S(i, 0, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
    public class C0262j implements AdapterView.OnItemSelectedListener {
        C0262j() {
            SearchView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m35086T(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$k.class */
    public interface AbstractC0263k {
        /* renamed from: a */
        boolean m35062a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$l.class */
    public interface AbstractC0264l {
        /* renamed from: a */
        boolean m35061a(String str);

        /* renamed from: b */
        boolean m35060b(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$m.class */
    public interface AbstractC0265m {
        /* renamed from: a */
        boolean m35059a(int i);

        /* renamed from: b */
        boolean m35058b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$n */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
    public static class C0266n {

        /* renamed from: a */
        private Method f1115a;

        /* renamed from: b */
        private Method f1116b;

        /* renamed from: c */
        private Method f1117c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        C0266n() {
            this.f1115a = null;
            this.f1116b = null;
            this.f1117c = null;
            m35054d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1115a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1116b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1117c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: d */
        private static void m35054d() {
            if (Build.VERSION.SDK_INT < 29) {
                return;
            }
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }

        /* renamed from: a */
        void m35057a(AutoCompleteTextView autoCompleteTextView) {
            m35054d();
            Method method = this.f1116b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        void m35056b(AutoCompleteTextView autoCompleteTextView) {
            m35054d();
            Method method = this.f1115a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: c */
        void m35055c(AutoCompleteTextView autoCompleteTextView) {
            m35054d();
            Method method = this.f1117c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$o */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o.class */
    private static class C0267o extends TouchDelegate {

        /* renamed from: a */
        private final View f1118a;

        /* renamed from: e */
        private final int f1122e;

        /* renamed from: f */
        private boolean f1123f;

        /* renamed from: b */
        private final Rect f1119b = new Rect();

        /* renamed from: d */
        private final Rect f1121d = new Rect();

        /* renamed from: c */
        private final Rect f1120c = new Rect();

        public C0267o(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1122e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m35053a(rect, rect2);
            this.f1118a = view;
        }

        /* renamed from: a */
        public void m35053a(Rect rect, Rect rect2) {
            this.f1119b.set(rect);
            this.f1121d.set(rect);
            Rect rect3 = this.f1121d;
            int i = this.f1122e;
            rect3.inset(-i, -i);
            this.f1120c.set(rect2);
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
                    boolean z3 = this.f1123f;
                    z2 = z3;
                    if (z3) {
                        z2 = z3;
                        if (!this.f1121d.contains(x, y)) {
                            z2 = z3;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f1123f;
                        this.f1123f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f1119b.contains(x, y)) {
                    this.f1123f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            boolean z4 = false;
            if (z2) {
                if (!z || this.f1120c.contains(x, y)) {
                    Rect rect = this.f1120c;
                    motionEvent.setLocation(x - rect.left, y - rect.top);
                } else {
                    motionEvent.setLocation(this.f1118a.getWidth() / 2, this.f1118a.getHeight() / 2);
                }
                z4 = this.f1118a.dispatchTouchEvent(motionEvent);
            }
            return z4;
        }
    }

    static {
        f1048s = Build.VERSION.SDK_INT < 29 ? new C0266n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1423a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1052D = new Rect();
        this.f1053E = new Rect();
        this.f1054F = new int[2];
        this.f1055G = new int[2];
        this.f1083l0 = new RunnableC0254b();
        this.f1084m0 = new RunnableC0255c();
        this.f1085n0 = new WeakHashMap<>();
        View$OnClickListenerC0258f view$OnClickListenerC0258f = new View$OnClickListenerC0258f();
        this.f1086o0 = view$OnClickListenerC0258f;
        this.f1087p0 = new View$OnKeyListenerC0259g();
        C0260h c0260h = new C0260h();
        this.f1088q0 = c0260h;
        C0261i c0261i = new C0261i();
        this.f1089r0 = c0261i;
        C0262j c0262j = new C0262j();
        this.f1090s0 = c0262j;
        this.f1092t0 = new C0253a();
        C0286e0 m34946v = C0286e0.m34946v(context, attributeSet, C1432j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(m34946v.m34954n(C1432j.SearchView_layout, C1429g.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C1428f.search_src_text);
        this.f1091t = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1093u = findViewById(C1428f.search_edit_frame);
        View findViewById = findViewById(C1428f.search_plate);
        this.f1094v = findViewById;
        View findViewById2 = findViewById(C1428f.submit_area);
        this.f1095w = findViewById2;
        ImageView imageView = (ImageView) findViewById(C1428f.search_button);
        this.f1096x = imageView;
        ImageView imageView2 = (ImageView) findViewById(C1428f.search_go_btn);
        this.f1097y = imageView2;
        ImageView imageView3 = (ImageView) findViewById(C1428f.search_close_btn);
        this.f1098z = imageView3;
        ImageView imageView4 = (ImageView) findViewById(C1428f.search_voice_btn);
        this.f1049A = imageView4;
        ImageView imageView5 = (ImageView) findViewById(C1428f.search_mag_icon);
        this.f1056H = imageView5;
        C1679w.m29267u0(findViewById, m34946v.m34961g(C1432j.SearchView_queryBackground));
        C1679w.m29267u0(findViewById2, m34946v.m34961g(C1432j.SearchView_submitBackground));
        int i2 = C1432j.SearchView_searchIcon;
        imageView.setImageDrawable(m34946v.m34961g(i2));
        imageView2.setImageDrawable(m34946v.m34961g(C1432j.SearchView_goIcon));
        imageView3.setImageDrawable(m34946v.m34961g(C1432j.SearchView_closeIcon));
        imageView4.setImageDrawable(m34946v.m34961g(C1432j.SearchView_voiceIcon));
        imageView5.setImageDrawable(m34946v.m34961g(i2));
        this.f1057I = m34946v.m34961g(C1432j.SearchView_searchHintIcon);
        C0293g0.m34913a(imageView, getResources().getString(C1430h.abc_searchview_description_search));
        this.f1058J = m34946v.m34954n(C1432j.SearchView_suggestionRowLayout, C1429g.abc_search_dropdown_item_icons_2line);
        this.f1059K = m34946v.m34954n(C1432j.SearchView_commitIcon, 0);
        imageView.setOnClickListener(view$OnClickListenerC0258f);
        imageView3.setOnClickListener(view$OnClickListenerC0258f);
        imageView2.setOnClickListener(view$OnClickListenerC0258f);
        imageView4.setOnClickListener(view$OnClickListenerC0258f);
        searchAutoComplete.setOnClickListener(view$OnClickListenerC0258f);
        searchAutoComplete.addTextChangedListener(this.f1092t0);
        searchAutoComplete.setOnEditorActionListener(c0260h);
        searchAutoComplete.setOnItemClickListener(c0261i);
        searchAutoComplete.setOnItemSelectedListener(c0262j);
        searchAutoComplete.setOnKeyListener(this.f1087p0);
        searchAutoComplete.setOnFocusChangeListener(new View$OnFocusChangeListenerC0256d());
        setIconifiedByDefault(m34946v.m34967a(C1432j.SearchView_iconifiedByDefault, true));
        int m34962f = m34946v.m34962f(C1432j.SearchView_android_maxWidth, -1);
        if (m34962f != -1) {
            setMaxWidth(m34962f);
        }
        this.f1062N = m34946v.m34952p(C1432j.SearchView_defaultQueryHint);
        this.f1072a0 = m34946v.m34952p(C1432j.SearchView_queryHint);
        int m34957k = m34946v.m34957k(C1432j.SearchView_android_imeOptions, -1);
        if (m34957k != -1) {
            setImeOptions(m34957k);
        }
        int m34957k2 = m34946v.m34957k(C1432j.SearchView_android_inputType, -1);
        if (m34957k2 != -1) {
            setInputType(m34957k2);
        }
        setFocusable(m34946v.m34967a(C1432j.SearchView_android_focusable, true));
        m34946v.m34945w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1060L = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1061M = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1050B = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0257e());
        }
        m35070j0(this.f1068T);
        m35074f0();
    }

    /* renamed from: C */
    private Intent m35103C(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1078g0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1082k0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1081j0.getSearchActivity());
        return intent;
    }

    /* renamed from: D */
    private Intent m35102D(Cursor cursor, int i, String str) {
        int i2;
        String m34691w;
        try {
            String m34691w2 = View$OnClickListenerC0337y.m34691w(cursor, "suggest_intent_action");
            String str2 = m34691w2;
            if (m34691w2 == null) {
                str2 = this.f1081j0.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String m34691w3 = View$OnClickListenerC0337y.m34691w(cursor, "suggest_intent_data");
            String str4 = m34691w3;
            if (m34691w3 == null) {
                str4 = this.f1081j0.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (View$OnClickListenerC0337y.m34691w(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(m34691w);
                }
            }
            return m35103C(str3, str5 == null ? null : Uri.parse(str5), View$OnClickListenerC0337y.m34691w(cursor, "suggest_intent_extra_data"), View$OnClickListenerC0337y.m34691w(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException e2) {
                i2 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
            return null;
        }
    }

    /* renamed from: E */
    private Intent m35101E(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1082k0;
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

    /* renamed from: F */
    private Intent m35100F(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* renamed from: G */
    private void m35099G() {
        this.f1091t.dismissDropDown();
    }

    /* renamed from: I */
    private void m35097I(View view, Rect rect) {
        view.getLocationInWindow(this.f1054F);
        getLocationInWindow(this.f1055G);
        int[] iArr = this.f1054F;
        int i = iArr[1];
        int[] iArr2 = this.f1055G;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* renamed from: J */
    private CharSequence m35096J(CharSequence charSequence) {
        if (!this.f1068T || this.f1057I == null) {
            return charSequence;
        }
        int textSize = (int) (this.f1091t.getTextSize() * 1.25d);
        this.f1057I.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1057I), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    /* renamed from: K */
    private boolean m35095K() {
        SearchableInfo searchableInfo = this.f1081j0;
        boolean z = false;
        if (searchableInfo != null) {
            z = false;
            if (searchableInfo.getVoiceSearchEnabled()) {
                Intent intent = null;
                if (this.f1081j0.getVoiceSearchLaunchWebSearch()) {
                    intent = this.f1060L;
                } else if (this.f1081j0.getVoiceSearchLaunchRecognizer()) {
                    intent = this.f1061M;
                }
                z = false;
                if (intent != null) {
                    z = false;
                    if (getContext().getPackageManager().resolveActivity(intent, 65536) != null) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: M */
    static boolean m35093M(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: N */
    private boolean m35092N() {
        return (this.f1071W || this.f1076e0) && !m35094L();
    }

    /* renamed from: O */
    private void m35091O(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e) {
            Log.e("SearchView", "Failed launch activity: " + intent, e);
        }
    }

    /* renamed from: Q */
    private boolean m35089Q(int i, int i2, String str) {
        Cursor mo29199b = this.f1070V.mo29199b();
        if (mo29199b == null || !mo29199b.moveToPosition(i)) {
            return false;
        }
        m35091O(m35102D(mo29199b, i2, str));
        return true;
    }

    /* renamed from: b0 */
    private void m35078b0() {
        post(this.f1083l0);
    }

    /* renamed from: c0 */
    private void m35077c0(int i) {
        Editable text = this.f1091t.getText();
        Cursor mo29199b = this.f1070V.mo29199b();
        if (mo29199b == null) {
            return;
        }
        if (!mo29199b.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        CharSequence mo29198c = this.f1070V.mo29198c(mo29199b);
        if (mo29198c != null) {
            setQuery(mo29198c);
        } else {
            setQuery(text);
        }
    }

    /* renamed from: d0 */
    private void m35076d0() {
        boolean z = !TextUtils.isEmpty(this.f1091t.getText());
        boolean z2 = true;
        if (!z) {
            z2 = this.f1068T && !this.f1079h0;
        }
        this.f1098z.setVisibility(z2 ? 0 : 8);
        Drawable drawable = this.f1098z.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* renamed from: f0 */
    private void m35074f0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1091t;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m35096J(charSequence));
    }

    /* renamed from: g0 */
    private void m35073g0() {
        this.f1091t.setThreshold(this.f1081j0.getSuggestThreshold());
        this.f1091t.setImeOptions(this.f1081j0.getImeOptions());
        int inputType = this.f1081j0.getInputType();
        int i = inputType;
        if ((inputType & 15) == 1) {
            int i2 = inputType & (-65537);
            i = i2;
            if (this.f1081j0.getSuggestAuthority() != null) {
                i = i2 | 65536 | 524288;
            }
        }
        this.f1091t.setInputType(i);
        AbstractC1696a abstractC1696a = this.f1070V;
        if (abstractC1696a != null) {
            abstractC1696a.mo29200a(null);
        }
        if (this.f1081j0.getSuggestAuthority() != null) {
            View$OnClickListenerC0337y view$OnClickListenerC0337y = new View$OnClickListenerC0337y(getContext(), this, this.f1081j0, this.f1085n0);
            this.f1070V = view$OnClickListenerC0337y;
            this.f1091t.setAdapter(view$OnClickListenerC0337y);
            View$OnClickListenerC0337y view$OnClickListenerC0337y2 = (View$OnClickListenerC0337y) this.f1070V;
            int i3 = 1;
            if (this.f1073b0) {
                i3 = 2;
            }
            view$OnClickListenerC0337y2.m34700F(i3);
        }
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C1426d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C1426d.abc_search_view_preferred_width);
    }

    /* renamed from: h0 */
    private void m35072h0() {
        this.f1095w.setVisibility((!m35092N() || !(this.f1097y.getVisibility() == 0 || this.f1049A.getVisibility() == 0)) ? 8 : 0);
    }

    /* renamed from: i0 */
    private void m35071i0(boolean z) {
        this.f1097y.setVisibility((!this.f1071W || !m35092N() || !hasFocus() || (!z && this.f1076e0)) ? 8 : 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r4.f1068T != false) goto L14;
     */
    /* renamed from: j0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m35070j0(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.f1069U = r1
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
            androidx.appcompat.widget.SearchView$SearchAutoComplete r0 = r0.f1091t
            android.text.Editable r0 = r0.getText()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r4
            android.widget.ImageView r0 = r0.f1096x
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r1 = r8
            r0.m35071i0(r1)
            r0 = r4
            android.view.View r0 = r0.f1093u
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
            android.widget.ImageView r0 = r0.f1056H
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L5a
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f1068T
            if (r0 == 0) goto L5d
        L5a:
            r0 = 8
            r7 = r0
        L5d:
            r0 = r4
            android.widget.ImageView r0 = r0.f1056H
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r0.m35076d0()
            r0 = r4
            r1 = r8
            r2 = 1
            r1 = r1 ^ r2
            r0.m35069k0(r1)
            r0 = r4
            r0.m35072h0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m35070j0(boolean):void");
    }

    /* renamed from: k0 */
    private void m35069k0(boolean z) {
        int i = 8;
        if (this.f1076e0) {
            i = 8;
            if (!m35094L()) {
                i = 8;
                if (z) {
                    this.f1097y.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f1049A.setVisibility(i);
    }

    private void setQuery(CharSequence charSequence) {
        this.f1091t.setText(charSequence);
        this.f1091t.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: B */
    void m35104B() {
        if (this.f1050B.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1094v.getPaddingLeft();
            Rect rect = new Rect();
            boolean m34869b = C0305k0.m34869b(this);
            int dimensionPixelSize = this.f1068T ? resources.getDimensionPixelSize(C1426d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C1426d.abc_dropdownitem_text_padding_left) : 0;
            this.f1091t.getDropDownBackground().getPadding(rect);
            this.f1091t.setDropDownHorizontalOffset(m34869b ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1091t.setDropDownWidth((((this.f1050B.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* renamed from: H */
    void m35098H() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1091t.refreshAutoCompleteResults();
            return;
        }
        C0266n c0266n = f1048s;
        c0266n.m35056b(this.f1091t);
        c0266n.m35057a(this.f1091t);
    }

    /* renamed from: L */
    public boolean m35094L() {
        return this.f1069U;
    }

    /* renamed from: P */
    void m35090P(int i, String str, String str2) {
        getContext().startActivity(m35103C("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    /* renamed from: R */
    void m35088R() {
        if (!TextUtils.isEmpty(this.f1091t.getText())) {
            this.f1091t.setText("");
            this.f1091t.requestFocus();
            this.f1091t.setImeVisibility(true);
        } else if (!this.f1068T) {
        } else {
            AbstractC0263k abstractC0263k = this.f1064P;
            if (abstractC0263k != null && abstractC0263k.m35062a()) {
                return;
            }
            clearFocus();
            m35070j0(true);
        }
    }

    /* renamed from: S */
    boolean m35087S(int i, int i2, String str) {
        AbstractC0265m abstractC0265m = this.f1066R;
        if (abstractC0265m == null || !abstractC0265m.m35058b(i)) {
            m35089Q(i, 0, null);
            this.f1091t.setImeVisibility(false);
            m35099G();
            return true;
        }
        return false;
    }

    /* renamed from: T */
    boolean m35086T(int i) {
        AbstractC0265m abstractC0265m = this.f1066R;
        if (abstractC0265m == null || !abstractC0265m.m35059a(i)) {
            m35077c0(i);
            return true;
        }
        return false;
    }

    /* renamed from: U */
    public void m35085U(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: V */
    void m35084V() {
        m35070j0(false);
        this.f1091t.requestFocus();
        this.f1091t.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1067S;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: W */
    void m35083W() {
        Editable text = this.f1091t.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        AbstractC0264l abstractC0264l = this.f1063O;
        if (abstractC0264l != null && abstractC0264l.m35060b(text.toString())) {
            return;
        }
        if (this.f1081j0 != null) {
            m35090P(0, null, text.toString());
        }
        this.f1091t.setImeVisibility(false);
        m35099G();
    }

    /* renamed from: X */
    boolean m35082X(View view, int i, KeyEvent keyEvent) {
        if (this.f1081j0 != null && this.f1070V != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i == 66 || i == 84 || i == 61) {
                return m35087S(this.f1091t.getListSelection(), 0, null);
            }
            if (i != 21 && i != 22) {
                return (i == 19 && this.f1091t.getListSelection() == 0) ? false : false;
            }
            this.f1091t.setSelection(i == 21 ? 0 : this.f1091t.length());
            this.f1091t.setListSelection(0);
            this.f1091t.clearListSelection();
            this.f1091t.m35065a();
            return true;
        }
        return false;
    }

    /* renamed from: Y */
    void m35081Y(CharSequence charSequence) {
        Editable text = this.f1091t.getText();
        this.f1078g0 = text;
        boolean z = !TextUtils.isEmpty(text);
        m35071i0(z);
        m35069k0(!z);
        m35076d0();
        m35072h0();
        if (this.f1063O != null && !TextUtils.equals(charSequence, this.f1077f0)) {
            this.f1063O.m35061a(charSequence.toString());
        }
        this.f1077f0 = charSequence.toString();
    }

    /* renamed from: Z */
    void m35080Z() {
        m35070j0(m35094L());
        m35078b0();
        if (this.f1091t.hasFocus()) {
            m35098H();
        }
    }

    /* renamed from: a0 */
    void m35079a0() {
        SearchableInfo searchableInfo = this.f1081j0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(m35100F(this.f1060L, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(m35101E(this.f1061M, searchableInfo));
            }
        } catch (ActivityNotFoundException e) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    @Override // p020b.p021a.p028o.AbstractC1457c
    /* renamed from: c */
    public void mo30043c() {
        if (this.f1079h0) {
            return;
        }
        this.f1079h0 = true;
        int imeOptions = this.f1091t.getImeOptions();
        this.f1080i0 = imeOptions;
        this.f1091t.setImeOptions(imeOptions | 33554432);
        this.f1091t.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f1074c0 = true;
        super.clearFocus();
        this.f1091t.clearFocus();
        this.f1091t.setImeVisibility(false);
        this.f1074c0 = false;
    }

    /* renamed from: e0 */
    void m35075e0() {
        int[] iArr = this.f1091t.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1094v.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1095w.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // p020b.p021a.p028o.AbstractC1457c
    /* renamed from: f */
    public void mo30042f() {
        setQuery("", false);
        clearFocus();
        m35070j0(true);
        this.f1091t.setImeOptions(this.f1080i0);
        this.f1079h0 = false;
    }

    public int getImeOptions() {
        return this.f1091t.getImeOptions();
    }

    public int getInputType() {
        return this.f1091t.getInputType();
    }

    public int getMaxWidth() {
        return this.f1075d0;
    }

    public CharSequence getQuery() {
        return this.f1091t.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f1072a0;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f1081j0;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1062N : getContext().getText(this.f1081j0.getHintId());
        }
        return charSequence;
    }

    public int getSuggestionCommitIconResId() {
        return this.f1059K;
    }

    public int getSuggestionRowLayout() {
        return this.f1058J;
    }

    public AbstractC1696a getSuggestionsAdapter() {
        return this.f1070V;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f1083l0);
        post(this.f1084m0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m35097I(this.f1091t, this.f1052D);
            Rect rect = this.f1053E;
            Rect rect2 = this.f1052D;
            rect.set(rect2.left, 0, rect2.right, i4 - i2);
            C0267o c0267o = this.f1051C;
            if (c0267o != null) {
                c0267o.m35053a(this.f1053E, this.f1052D);
                return;
            }
            C0267o c0267o2 = new C0267o(this.f1053E, this.f1052D, this.f1091t);
            this.f1051C = c0267o2;
            setTouchDelegate(c0267o2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (m35094L()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f1075d0;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            i3 = this.f1075d0;
            if (i3 <= 0) {
                i3 = getPreferredWidth();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f1075d0;
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
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m33061a());
        m35070j0(savedState.f1099f);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1099f = m35094L();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m35078b0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (!this.f1074c0 && isFocusable()) {
            if (m35094L()) {
                return super.requestFocus(i, rect);
            }
            boolean requestFocus = this.f1091t.requestFocus(i, rect);
            if (requestFocus) {
                m35070j0(false);
            }
            return requestFocus;
        }
        return false;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1082k0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m35088R();
        } else {
            m35084V();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f1068T == z) {
            return;
        }
        this.f1068T = z;
        m35070j0(z);
        m35074f0();
    }

    public void setImeOptions(int i) {
        this.f1091t.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f1091t.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f1075d0 = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0263k abstractC0263k) {
        this.f1064P = abstractC0263k;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1065Q = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0264l abstractC0264l) {
        this.f1063O = abstractC0264l;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1067S = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0265m abstractC0265m) {
        this.f1066R = abstractC0265m;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.f1091t.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1091t;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f1078g0 = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m35083W();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f1072a0 = charSequence;
        m35074f0();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f1073b0 = z;
        AbstractC1696a abstractC1696a = this.f1070V;
        if (abstractC1696a instanceof View$OnClickListenerC0337y) {
            ((View$OnClickListenerC0337y) abstractC1696a).m34700F(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1081j0 = searchableInfo;
        if (searchableInfo != null) {
            m35073g0();
            m35074f0();
        }
        boolean m35095K = m35095K();
        this.f1076e0 = m35095K;
        if (m35095K) {
            this.f1091t.setPrivateImeOptions("nm");
        }
        m35070j0(m35094L());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f1071W = z;
        m35070j0(m35094L());
    }

    public void setSuggestionsAdapter(AbstractC1696a abstractC1696a) {
        this.f1070V = abstractC1696a;
        this.f1091t.setAdapter(abstractC1696a);
    }
}
