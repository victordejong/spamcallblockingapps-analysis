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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0042R;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import com.google.firebase.appindexing.Indexable;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {

    /* renamed from: v0 */
    static final PreQAutoCompleteTextViewReflector f1197v0;

    /* renamed from: A */
    final ImageView f1198A;

    /* renamed from: B */
    final ImageView f1199B;

    /* renamed from: C */
    private final View f1200C;

    /* renamed from: D */
    private UpdatableTouchDelegate f1201D;

    /* renamed from: E */
    private Rect f1202E;

    /* renamed from: F */
    private Rect f1203F;

    /* renamed from: G */
    private int[] f1204G;

    /* renamed from: H */
    private int[] f1205H;

    /* renamed from: I */
    private final ImageView f1206I;

    /* renamed from: J */
    private final Drawable f1207J;

    /* renamed from: K */
    private final int f1208K;

    /* renamed from: L */
    private final int f1209L;

    /* renamed from: M */
    private final Intent f1210M;

    /* renamed from: N */
    private final Intent f1211N;

    /* renamed from: O */
    private final CharSequence f1212O;

    /* renamed from: P */
    private OnQueryTextListener f1213P;

    /* renamed from: Q */
    private OnCloseListener f1214Q;

    /* renamed from: R */
    View.OnFocusChangeListener f1215R;

    /* renamed from: S */
    private OnSuggestionListener f1216S;

    /* renamed from: T */
    private View.OnClickListener f1217T;

    /* renamed from: U */
    private boolean f1218U;

    /* renamed from: V */
    private boolean f1219V;

    /* renamed from: W */
    CursorAdapter f1220W;

    /* renamed from: a0 */
    private boolean f1221a0;

    /* renamed from: b0 */
    private CharSequence f1222b0;

    /* renamed from: c0 */
    private boolean f1223c0;

    /* renamed from: d0 */
    private boolean f1224d0;

    /* renamed from: e0 */
    private int f1225e0;

    /* renamed from: f0 */
    private boolean f1226f0;

    /* renamed from: g0 */
    private CharSequence f1227g0;

    /* renamed from: h0 */
    private CharSequence f1228h0;

    /* renamed from: i0 */
    private boolean f1229i0;

    /* renamed from: j0 */
    private int f1230j0;

    /* renamed from: k0 */
    SearchableInfo f1231k0;

    /* renamed from: l0 */
    private Bundle f1232l0;

    /* renamed from: m0 */
    private final Runnable f1233m0;

    /* renamed from: n0 */
    private Runnable f1234n0;

    /* renamed from: o0 */
    private final WeakHashMap<String, Drawable.ConstantState> f1235o0;

    /* renamed from: p0 */
    private final View.OnClickListener f1236p0;

    /* renamed from: q0 */
    View.OnKeyListener f1237q0;

    /* renamed from: r0 */
    private final TextView.OnEditorActionListener f1238r0;

    /* renamed from: s0 */
    private final AdapterView.OnItemClickListener f1239s0;

    /* renamed from: t0 */
    private final AdapterView.OnItemSelectedListener f1240t0;

    /* renamed from: u */
    final SearchAutoComplete f1241u;

    /* renamed from: u0 */
    private TextWatcher f1242u0;

    /* renamed from: v */
    private final View f1243v;

    /* renamed from: w */
    private final View f1244w;

    /* renamed from: x */
    private final View f1245x;

    /* renamed from: y */
    final ImageView f1246y;

    /* renamed from: z */
    final ImageView f1247z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$OnCloseListener.class */
    public interface OnCloseListener {
        /* renamed from: a */
        boolean m21319a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$OnQueryTextListener.class */
    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$OnSuggestionListener.class */
    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i);

        boolean onSuggestionSelect(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector.class */
    public static class PreQAutoCompleteTextViewReflector {

        /* renamed from: a */
        private Method f1258a;

        /* renamed from: b */
        private Method f1259b;

        /* renamed from: c */
        private Method f1260c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        PreQAutoCompleteTextViewReflector() {
            this.f1258a = null;
            this.f1259b = null;
            this.f1260c = null;
            m21315d();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1258a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1259b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1260c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: d */
        private static void m21315d() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        /* renamed from: a */
        void m21318a(AutoCompleteTextView autoCompleteTextView) {
            m21315d();
            Method method = this.f1259b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        void m21317b(AutoCompleteTextView autoCompleteTextView) {
            m21315d();
            Method method = this.f1258a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: c */
        void m21316c(AutoCompleteTextView autoCompleteTextView) {
            m21315d();
            Method method = this.f1260c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.SearchView.SavedState.1
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
        };

        /* renamed from: h */
        boolean f1261h;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1261h = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1261h + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f1261h));
        }
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: i */
        private int f1262i;

        /* renamed from: j */
        private SearchView f1263j;

        /* renamed from: k */
        private boolean f1264k;

        /* renamed from: l */
        final Runnable f1265l;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0042R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1265l = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.m21309c();
                }
            };
            this.f1262i = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return Indexable.MAX_URL_LENGTH;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        /* renamed from: a */
        void m21311a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.f1197v0.m21316c(this);
        }

        /* renamed from: b */
        boolean m21310b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* renamed from: c */
        void m21309c() {
            if (this.f1264k) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1264k = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1262i <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1264k) {
                removeCallbacks(this.f1265l);
                post(this.f1265l);
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
            this.f1263j.m21333Z();
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
                        this.f1263j.clearFocus();
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
            if (z && this.f1263j.hasFocus() && getVisibility() == 0) {
                this.f1264k = true;
                if (SearchView.m21346M(getContext())) {
                    m21311a();
                }
            }
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
                this.f1264k = false;
                removeCallbacks(this.f1265l);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f1264k = false;
                removeCallbacks(this.f1265l);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f1264k = true;
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1263j = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1262i = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$UpdatableTouchDelegate.class */
    private static class UpdatableTouchDelegate extends TouchDelegate {

        /* renamed from: a */
        private final View f1267a;

        /* renamed from: e */
        private final int f1271e;

        /* renamed from: f */
        private boolean f1272f;

        /* renamed from: b */
        private final Rect f1268b = new Rect();

        /* renamed from: d */
        private final Rect f1270d = new Rect();

        /* renamed from: c */
        private final Rect f1269c = new Rect();

        public UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1271e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m21308a(rect, rect2);
            this.f1267a = view;
        }

        /* renamed from: a */
        public void m21308a(Rect rect, Rect rect2) {
            this.f1268b.set(rect);
            this.f1270d.set(rect);
            Rect rect3 = this.f1270d;
            int i = this.f1271e;
            rect3.inset(-i, -i);
            this.f1269c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z2 = true;
            boolean z3 = false;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    boolean z4 = this.f1272f;
                    z2 = z4;
                    if (z4) {
                        z2 = z4;
                        if (!this.f1270d.contains(x, y)) {
                            z2 = z4;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f1272f;
                        this.f1272f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f1268b.contains(x, y)) {
                    this.f1272f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            if (z2) {
                if (!z || this.f1269c.contains(x, y)) {
                    Rect rect = this.f1269c;
                    motionEvent.setLocation(x - rect.left, y - rect.top);
                } else {
                    motionEvent.setLocation(this.f1267a.getWidth() / 2, this.f1267a.getHeight() / 2);
                }
                z3 = this.f1267a.dispatchTouchEvent(motionEvent);
            }
            return z3;
        }
    }

    static {
        f1197v0 = Build.VERSION.SDK_INT < 29 ? new PreQAutoCompleteTextViewReflector() : null;
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0042R.attr.searchViewStyle);
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1202E = new Rect();
        this.f1203F = new Rect();
        this.f1204G = new int[2];
        this.f1205H = new int[2];
        this.f1233m0 = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.m21327e0();
            }
        };
        this.f1234n0 = new Runnable() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // java.lang.Runnable
            public void run() {
                CursorAdapter cursorAdapter = SearchView.this.f1220W;
                if (cursorAdapter instanceof SuggestionsAdapter) {
                    cursorAdapter.mo18806b(null);
                }
            }
        };
        this.f1235o0 = new WeakHashMap<>();
        this.f1236p0 = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SearchView searchView = SearchView.this;
                if (view == searchView.f1246y) {
                    searchView.m21337V();
                } else if (view == searchView.f1198A) {
                    searchView.m21341R();
                } else if (view == searchView.f1247z) {
                    searchView.m21336W();
                } else if (view == searchView.f1199B) {
                    searchView.m21332a0();
                } else if (view == searchView.f1241u) {
                    searchView.m21351H();
                }
            }
        };
        this.f1237q0 = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                SearchView searchView = SearchView.this;
                if (searchView.f1231k0 == null) {
                    return false;
                }
                if (searchView.f1241u.isPopupShowing() && SearchView.this.f1241u.getListSelection() != -1) {
                    return SearchView.this.m21335X(view, i2, keyEvent);
                }
                if (SearchView.this.f1241u.m21310b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView2 = SearchView.this;
                searchView2.m21343P(0, null, searchView2.f1241u.getText().toString());
                return true;
            }
        };
        this.f1238r0 = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.m21336W();
                return true;
            }
        };
        this.f1239s0 = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m21340S(i2, 0, null);
            }
        };
        this.f1240t0 = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m21339T(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.f1242u0 = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.m21334Y(charSequence);
            }
        };
        TintTypedArray v = TintTypedArray.m21244v(context, attributeSet, C0042R.styleable.SearchView, i, 0);
        LayoutInflater.from(context).inflate(v.m21252n(C0042R.styleable.SearchView_layout, C0042R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C0042R.C0045id.search_src_text);
        this.f1241u = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1243v = findViewById(C0042R.C0045id.search_edit_frame);
        this.f1244w = findViewById(C0042R.C0045id.search_plate);
        this.f1245x = findViewById(C0042R.C0045id.submit_area);
        this.f1246y = (ImageView) findViewById(C0042R.C0045id.search_button);
        this.f1247z = (ImageView) findViewById(C0042R.C0045id.search_go_btn);
        this.f1198A = (ImageView) findViewById(C0042R.C0045id.search_close_btn);
        this.f1199B = (ImageView) findViewById(C0042R.C0045id.search_voice_btn);
        this.f1206I = (ImageView) findViewById(C0042R.C0045id.search_mag_icon);
        ViewCompat.m19177q0(this.f1244w, v.m21259g(C0042R.styleable.SearchView_queryBackground));
        ViewCompat.m19177q0(this.f1245x, v.m21259g(C0042R.styleable.SearchView_submitBackground));
        this.f1246y.setImageDrawable(v.m21259g(C0042R.styleable.SearchView_searchIcon));
        this.f1247z.setImageDrawable(v.m21259g(C0042R.styleable.SearchView_goIcon));
        this.f1198A.setImageDrawable(v.m21259g(C0042R.styleable.SearchView_closeIcon));
        this.f1199B.setImageDrawable(v.m21259g(C0042R.styleable.SearchView_voiceIcon));
        this.f1206I.setImageDrawable(v.m21259g(C0042R.styleable.SearchView_searchIcon));
        this.f1207J = v.m21259g(C0042R.styleable.SearchView_searchHintIcon);
        TooltipCompat.m21170a(this.f1246y, getResources().getString(C0042R.string.abc_searchview_description_search));
        this.f1208K = v.m21252n(C0042R.styleable.SearchView_suggestionRowLayout, C0042R.layout.abc_search_dropdown_item_icons_2line);
        this.f1209L = v.m21252n(C0042R.styleable.SearchView_commitIcon, 0);
        this.f1246y.setOnClickListener(this.f1236p0);
        this.f1198A.setOnClickListener(this.f1236p0);
        this.f1247z.setOnClickListener(this.f1236p0);
        this.f1199B.setOnClickListener(this.f1236p0);
        this.f1241u.setOnClickListener(this.f1236p0);
        this.f1241u.addTextChangedListener(this.f1242u0);
        this.f1241u.setOnEditorActionListener(this.f1238r0);
        this.f1241u.setOnItemClickListener(this.f1239s0);
        this.f1241u.setOnItemSelectedListener(this.f1240t0);
        this.f1241u.setOnKeyListener(this.f1237q0);
        this.f1241u.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                SearchView searchView = SearchView.this;
                View.OnFocusChangeListener onFocusChangeListener = searchView.f1215R;
                if (onFocusChangeListener != null) {
                    onFocusChangeListener.onFocusChange(searchView, z);
                }
            }
        });
        setIconifiedByDefault(v.m21265a(C0042R.styleable.SearchView_iconifiedByDefault, true));
        int f = v.m21260f(C0042R.styleable.SearchView_android_maxWidth, -1);
        if (f != -1) {
            setMaxWidth(f);
        }
        this.f1212O = v.m21250p(C0042R.styleable.SearchView_defaultQueryHint);
        this.f1222b0 = v.m21250p(C0042R.styleable.SearchView_queryHint);
        int k = v.m21255k(C0042R.styleable.SearchView_android_imeOptions, -1);
        if (k != -1) {
            setImeOptions(k);
        }
        int k2 = v.m21255k(C0042R.styleable.SearchView_android_inputType, -1);
        if (k2 != -1) {
            setInputType(k2);
        }
        setFocusable(v.m21265a(C0042R.styleable.SearchView_android_focusable, true));
        v.m21243w();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1210M = intent;
        intent.addFlags(268435456);
        this.f1210M.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1211N = intent2;
        intent2.addFlags(268435456);
        View findViewById = findViewById(this.f1241u.getDropDownAnchor());
        this.f1200C = findViewById;
        if (findViewById != null) {
            findViewById.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView.this.m21357B();
                }
            });
        }
        m21321j0(this.f1218U);
        m21325f0();
    }

    /* renamed from: C */
    private Intent m21356C(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1228h0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1232l0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1231k0.getSearchActivity());
        return intent;
    }

    /* renamed from: D */
    private Intent m21355D(Cursor cursor, int i, String str) {
        int i2;
        String o;
        try {
            String o2 = SuggestionsAdapter.m21298o(cursor, "suggest_intent_action");
            String str2 = o2;
            if (o2 == null) {
                str2 = this.f1231k0.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String o3 = SuggestionsAdapter.m21298o(cursor, "suggest_intent_data");
            String str4 = o3;
            if (o3 == null) {
                str4 = this.f1231k0.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (SuggestionsAdapter.m21298o(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(o);
                }
            }
            return m21356C(str3, str5 == null ? null : Uri.parse(str5), SuggestionsAdapter.m21298o(cursor, "suggest_intent_extra_data"), SuggestionsAdapter.m21298o(cursor, "suggest_intent_query"), i, str);
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
    private Intent m21354E(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1232l0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        int i = 1;
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String str = null;
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i);
        if (searchActivity != null) {
            str = searchActivity.flattenToShortString();
        }
        intent3.putExtra("calling_package", str);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* renamed from: F */
    private Intent m21353F(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* renamed from: G */
    private void m21352G() {
        this.f1241u.dismissDropDown();
    }

    /* renamed from: I */
    private void m21350I(View view, Rect rect) {
        view.getLocationInWindow(this.f1204G);
        getLocationInWindow(this.f1205H);
        int[] iArr = this.f1204G;
        int i = iArr[1];
        int[] iArr2 = this.f1205H;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* renamed from: J */
    private CharSequence m21349J(CharSequence charSequence) {
        if (!this.f1218U || this.f1207J == null) {
            return charSequence;
        }
        int textSize = (int) (this.f1241u.getTextSize() * 1.25d);
        this.f1207J.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1207J), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    /* renamed from: K */
    private boolean m21348K() {
        SearchableInfo searchableInfo = this.f1231k0;
        boolean z = false;
        if (searchableInfo != null) {
            z = false;
            if (searchableInfo.getVoiceSearchEnabled()) {
                Intent intent = null;
                if (this.f1231k0.getVoiceSearchLaunchWebSearch()) {
                    intent = this.f1210M;
                } else if (this.f1231k0.getVoiceSearchLaunchRecognizer()) {
                    intent = this.f1211N;
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
    static boolean m21346M(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: N */
    private boolean m21345N() {
        return (this.f1221a0 || this.f1226f0) && !m21347L();
    }

    /* renamed from: O */
    private void m21344O(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e) {
                Log.e("SearchView", "Failed launch activity: " + intent, e);
            }
        }
    }

    /* renamed from: Q */
    private boolean m21342Q(int i, int i2, String str) {
        Cursor c = this.f1220W.mo18805c();
        if (c == null || !c.moveToPosition(i)) {
            return false;
        }
        m21344O(m21355D(c, i2, str));
        return true;
    }

    /* renamed from: b0 */
    private void m21331b0() {
        post(this.f1233m0);
    }

    /* renamed from: c0 */
    private void m21329c0(int i) {
        Editable text = this.f1241u.getText();
        Cursor c = this.f1220W.mo18805c();
        if (c != null) {
            if (c.moveToPosition(i)) {
                CharSequence a = this.f1220W.mo18801a(c);
                if (a != null) {
                    setQuery(a);
                } else {
                    setQuery(text);
                }
            } else {
                setQuery(text);
            }
        }
    }

    /* renamed from: d0 */
    private void m21328d0() {
        boolean z = !TextUtils.isEmpty(this.f1241u.getText());
        int i = 0;
        boolean z2 = true;
        if (!z) {
            z2 = this.f1218U && !this.f1229i0;
        }
        ImageView imageView = this.f1198A;
        if (!z2) {
            i = 8;
        }
        imageView.setVisibility(i);
        Drawable drawable = this.f1198A.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* renamed from: f0 */
    private void m21325f0() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1241u;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m21349J(charSequence));
    }

    /* renamed from: g0 */
    private void m21324g0() {
        this.f1241u.setThreshold(this.f1231k0.getSuggestThreshold());
        this.f1241u.setImeOptions(this.f1231k0.getImeOptions());
        int inputType = this.f1231k0.getInputType();
        int i = 1;
        int i2 = inputType;
        if ((inputType & 15) == 1) {
            int i3 = inputType & (-65537);
            i2 = i3;
            if (this.f1231k0.getSuggestAuthority() != null) {
                i2 = i3 | 65536 | 524288;
            }
        }
        this.f1241u.setInputType(i2);
        CursorAdapter cursorAdapter = this.f1220W;
        if (cursorAdapter != null) {
            cursorAdapter.mo18806b(null);
        }
        if (this.f1231k0.getSuggestAuthority() != null) {
            SuggestionsAdapter suggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.f1231k0, this.f1235o0);
            this.f1220W = suggestionsAdapter;
            this.f1241u.setAdapter(suggestionsAdapter);
            SuggestionsAdapter suggestionsAdapter2 = (SuggestionsAdapter) this.f1220W;
            if (this.f1223c0) {
                i = 2;
            }
            suggestionsAdapter2.m21289x(i);
        }
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0042R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0042R.dimen.abc_search_view_preferred_width);
    }

    /* renamed from: h0 */
    private void m21323h0() {
        this.f1245x.setVisibility((!m21345N() || !(this.f1247z.getVisibility() == 0 || this.f1199B.getVisibility() == 0)) ? 8 : 0);
    }

    /* renamed from: i0 */
    private void m21322i0(boolean z) {
        this.f1247z.setVisibility((!this.f1221a0 || !m21345N() || !hasFocus() || (!z && this.f1226f0)) ? 8 : 0);
    }

    /* renamed from: j0 */
    private void m21321j0(boolean z) {
        this.f1219V = z;
        int i = 0;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f1241u.getText());
        this.f1246y.setVisibility(i2);
        m21322i0(z2);
        this.f1243v.setVisibility(z ? 8 : 0);
        if (this.f1206I.getDrawable() == null || this.f1218U) {
            i = 8;
        }
        this.f1206I.setVisibility(i);
        m21328d0();
        m21320k0(!z2);
        m21323h0();
    }

    /* renamed from: k0 */
    private void m21320k0(boolean z) {
        int i = 8;
        if (this.f1226f0) {
            i = 8;
            if (!m21347L()) {
                i = 8;
                if (z) {
                    this.f1247z.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f1199B.setVisibility(i);
    }

    private void setQuery(CharSequence charSequence) {
        this.f1241u.setText(charSequence);
        this.f1241u.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: B */
    void m21357B() {
        if (this.f1200C.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1244w.getPaddingLeft();
            Rect rect = new Rect();
            boolean b = ViewUtils.m21149b(this);
            int dimensionPixelSize = this.f1218U ? resources.getDimensionPixelSize(C0042R.dimen.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C0042R.dimen.abc_dropdownitem_text_padding_left) : 0;
            this.f1241u.getDropDownBackground().getPadding(rect);
            this.f1241u.setDropDownHorizontalOffset(b ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1241u.setDropDownWidth((((this.f1200C.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* renamed from: H */
    void m21351H() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1241u.refreshAutoCompleteResults();
            return;
        }
        f1197v0.m21317b(this.f1241u);
        f1197v0.m21318a(this.f1241u);
    }

    /* renamed from: L */
    public boolean m21347L() {
        return this.f1219V;
    }

    /* renamed from: P */
    void m21343P(int i, String str, String str2) {
        getContext().startActivity(m21356C("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    /* renamed from: R */
    void m21341R() {
        if (!TextUtils.isEmpty(this.f1241u.getText())) {
            this.f1241u.setText("");
            this.f1241u.requestFocus();
            this.f1241u.setImeVisibility(true);
        } else if (this.f1218U) {
            OnCloseListener onCloseListener = this.f1214Q;
            if (onCloseListener == null || !onCloseListener.m21319a()) {
                clearFocus();
                m21321j0(true);
            }
        }
    }

    /* renamed from: S */
    boolean m21340S(int i, int i2, String str) {
        OnSuggestionListener onSuggestionListener = this.f1216S;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionClick(i)) {
            return false;
        }
        m21342Q(i, 0, null);
        this.f1241u.setImeVisibility(false);
        m21352G();
        return true;
    }

    /* renamed from: T */
    boolean m21339T(int i) {
        OnSuggestionListener onSuggestionListener = this.f1216S;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionSelect(i)) {
            return false;
        }
        m21329c0(i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: U */
    public void m21338U(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: V */
    void m21337V() {
        m21321j0(false);
        this.f1241u.requestFocus();
        this.f1241u.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f1217T;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: W */
    void m21336W() {
        Editable text = this.f1241u.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            OnQueryTextListener onQueryTextListener = this.f1213P;
            if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
                if (this.f1231k0 != null) {
                    m21343P(0, null, text.toString());
                }
                this.f1241u.setImeVisibility(false);
                m21352G();
            }
        }
    }

    /* renamed from: X */
    boolean m21335X(View view, int i, KeyEvent keyEvent) {
        if (this.f1231k0 == null || this.f1220W == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
            return false;
        }
        if (i == 66 || i == 84 || i == 61) {
            return m21340S(this.f1241u.getListSelection(), 0, null);
        }
        if (i != 21 && i != 22) {
            return (i == 19 && this.f1241u.getListSelection() == 0) ? false : false;
        }
        this.f1241u.setSelection(i == 21 ? 0 : this.f1241u.length());
        this.f1241u.setListSelection(0);
        this.f1241u.clearListSelection();
        this.f1241u.m21311a();
        return true;
    }

    /* renamed from: Y */
    void m21334Y(CharSequence charSequence) {
        Editable text = this.f1241u.getText();
        this.f1228h0 = text;
        boolean z = !TextUtils.isEmpty(text);
        m21322i0(z);
        m21320k0(!z);
        m21328d0();
        m21323h0();
        if (this.f1213P != null && !TextUtils.equals(charSequence, this.f1227g0)) {
            this.f1213P.onQueryTextChange(charSequence.toString());
        }
        this.f1227g0 = charSequence.toString();
    }

    /* renamed from: Z */
    void m21333Z() {
        m21321j0(m21347L());
        m21331b0();
        if (this.f1241u.hasFocus()) {
            m21351H();
        }
    }

    /* renamed from: a0 */
    void m21332a0() {
        SearchableInfo searchableInfo = this.f1231k0;
        if (searchableInfo != null) {
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(m21353F(this.f1210M, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(m21354E(this.f1211N, searchableInfo));
                }
            } catch (ActivityNotFoundException e) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    /* renamed from: c */
    public void mo21330c() {
        if (!this.f1229i0) {
            this.f1229i0 = true;
            int imeOptions = this.f1241u.getImeOptions();
            this.f1230j0 = imeOptions;
            this.f1241u.setImeOptions(imeOptions | 33554432);
            this.f1241u.setText("");
            setIconified(false);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f1224d0 = true;
        super.clearFocus();
        this.f1241u.clearFocus();
        this.f1241u.setImeVisibility(false);
        this.f1224d0 = false;
    }

    /* renamed from: e0 */
    void m21327e0() {
        int[] iArr = this.f1241u.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1244w.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1245x.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    /* renamed from: f */
    public void mo21326f() {
        setQuery("", false);
        clearFocus();
        m21321j0(true);
        this.f1241u.setImeOptions(this.f1230j0);
        this.f1229i0 = false;
    }

    public int getImeOptions() {
        return this.f1241u.getImeOptions();
    }

    public int getInputType() {
        return this.f1241u.getInputType();
    }

    public int getMaxWidth() {
        return this.f1225e0;
    }

    public CharSequence getQuery() {
        return this.f1241u.getText();
    }

    @Nullable
    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f1222b0;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f1231k0;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1212O : getContext().getText(this.f1231k0.getHintId());
        }
        return charSequence;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionCommitIconResId() {
        return this.f1209L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSuggestionRowLayout() {
        return this.f1208K;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.f1220W;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f1233m0);
        post(this.f1234n0);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m21350I(this.f1241u, this.f1202E);
            Rect rect = this.f1203F;
            Rect rect2 = this.f1202E;
            rect.set(rect2.left, 0, rect2.right, i4 - i2);
            UpdatableTouchDelegate updatableTouchDelegate = this.f1201D;
            if (updatableTouchDelegate == null) {
                UpdatableTouchDelegate updatableTouchDelegate2 = new UpdatableTouchDelegate(this.f1203F, this.f1202E, this.f1241u);
                this.f1201D = updatableTouchDelegate2;
                setTouchDelegate(updatableTouchDelegate2);
                return;
            }
            updatableTouchDelegate.m21308a(this.f1203F, this.f1202E);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (m21347L()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f1225e0;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            i3 = this.f1225e0;
            if (i3 <= 0) {
                i3 = getPreferredWidth();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f1225e0;
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
        super.onRestoreInstanceState(savedState.m18793a());
        m21321j0(savedState.f1261h);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1261h = m21347L();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m21331b0();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f1224d0 || !isFocusable()) {
            return false;
        }
        if (m21347L()) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f1241u.requestFocus(i, rect);
        if (requestFocus) {
            m21321j0(false);
        }
        return requestFocus;
    }

    @RestrictTo
    public void setAppSearchData(Bundle bundle) {
        this.f1232l0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m21341R();
        } else {
            m21337V();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f1218U != z) {
            this.f1218U = z;
            m21321j0(z);
            m21325f0();
        }
    }

    public void setImeOptions(int i) {
        this.f1241u.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f1241u.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f1225e0 = i;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.f1214Q = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1215R = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.f1213P = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1217T = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.f1216S = onSuggestionListener;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.f1241u.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1241u;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f1228h0 = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            m21336W();
        }
    }

    public void setQueryHint(@Nullable CharSequence charSequence) {
        this.f1222b0 = charSequence;
        m21325f0();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f1223c0 = z;
        CursorAdapter cursorAdapter = this.f1220W;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).m21289x(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1231k0 = searchableInfo;
        if (searchableInfo != null) {
            m21324g0();
            m21325f0();
        }
        boolean K = m21348K();
        this.f1226f0 = K;
        if (K) {
            this.f1241u.setPrivateImeOptions("nm");
        }
        m21321j0(m21347L());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f1221a0 = z;
        m21321j0(m21347L());
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.f1220W = cursorAdapter;
        this.f1241u.setAdapter(cursorAdapter);
    }
}
