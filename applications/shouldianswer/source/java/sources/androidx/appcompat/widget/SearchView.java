package androidx.appcompat.widget;

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
import androidx.appcompat.C0051a;
import androidx.appcompat.view.AbstractC0157c;
import androidx.core.p023g.C0552u;
import androidx.customview.view.AbsSavedState;
import androidx.p027d.p028a.AbstractC0624a;
import com.google.android.gms.actions.SearchIntents;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends C0277ae implements AbstractC0157c {

    /* renamed from: i */
    static final C0252a f979i = new C0252a();

    /* renamed from: A */
    private AbstractC0254c f980A;

    /* renamed from: B */
    private AbstractC0253b f981B;

    /* renamed from: C */
    private AbstractC0255d f982C;

    /* renamed from: D */
    private View.OnClickListener f983D;

    /* renamed from: E */
    private boolean f984E;

    /* renamed from: F */
    private boolean f985F;

    /* renamed from: G */
    private boolean f986G;

    /* renamed from: H */
    private CharSequence f987H;

    /* renamed from: I */
    private boolean f988I;

    /* renamed from: J */
    private boolean f989J;

    /* renamed from: K */
    private int f990K;

    /* renamed from: L */
    private boolean f991L;

    /* renamed from: M */
    private CharSequence f992M;

    /* renamed from: N */
    private CharSequence f993N;

    /* renamed from: O */
    private boolean f994O;

    /* renamed from: P */
    private int f995P;

    /* renamed from: Q */
    private Bundle f996Q;

    /* renamed from: R */
    private final Runnable f997R;

    /* renamed from: S */
    private Runnable f998S;

    /* renamed from: T */
    private final WeakHashMap<String, Drawable.ConstantState> f999T;

    /* renamed from: U */
    private final View.OnClickListener f1000U;

    /* renamed from: V */
    private final TextView.OnEditorActionListener f1001V;

    /* renamed from: W */
    private final AdapterView.OnItemClickListener f1002W;

    /* renamed from: a */
    final SearchAutoComplete f1003a;

    /* renamed from: aa */
    private final AdapterView.OnItemSelectedListener f1004aa;

    /* renamed from: ab */
    private TextWatcher f1005ab;

    /* renamed from: b */
    final ImageView f1006b;

    /* renamed from: c */
    final ImageView f1007c;

    /* renamed from: d */
    final ImageView f1008d;

    /* renamed from: e */
    final ImageView f1009e;

    /* renamed from: f */
    View.OnFocusChangeListener f1010f;

    /* renamed from: g */
    AbstractC0624a f1011g;

    /* renamed from: h */
    SearchableInfo f1012h;

    /* renamed from: j */
    View.OnKeyListener f1013j;

    /* renamed from: k */
    private final View f1014k;

    /* renamed from: l */
    private final View f1015l;

    /* renamed from: m */
    private final View f1016m;

    /* renamed from: n */
    private final View f1017n;

    /* renamed from: o */
    private C0256e f1018o;

    /* renamed from: p */
    private Rect f1019p;

    /* renamed from: q */
    private Rect f1020q;

    /* renamed from: r */
    private int[] f1021r;

    /* renamed from: s */
    private int[] f1022s;

    /* renamed from: t */
    private final ImageView f1023t;

    /* renamed from: u */
    private final Drawable f1024u;

    /* renamed from: v */
    private final int f1025v;

    /* renamed from: w */
    private final int f1026w;

    /* renamed from: x */
    private final Intent f1027x;

    /* renamed from: y */
    private final Intent f1028y;

    /* renamed from: z */
    private final CharSequence f1029z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.SearchView.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a */
        boolean f1040a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1040a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1040a + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f1040a));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends C0330d {

        /* renamed from: a */
        final Runnable f1041a;

        /* renamed from: b */
        private int f1042b;

        /* renamed from: c */
        private SearchView f1043c;

        /* renamed from: d */
        private boolean f1044d;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0051a.C0052a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1041a = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.m7346b();
                }
            };
            this.f1042b = getThreshold();
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
        boolean m7347a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* renamed from: b */
        void m7346b() {
            if (this.f1044d) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1044d = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1042b <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.C0330d, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1044d) {
                removeCallbacks(this.f1041a);
                post(this.f1041a);
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
            this.f1043c.m7361i();
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
                        this.f1043c.clearFocus();
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
            if (!z || !this.f1043c.hasFocus() || getVisibility() != 0) {
                return;
            }
            this.f1044d = true;
            if (!SearchView.m7385a(getContext())) {
                return;
            }
            SearchView.f979i.m7344a(this, true);
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
                this.f1044d = false;
                removeCallbacks(this.f1041a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f1044d = true;
            } else {
                this.f1044d = false;
                removeCallbacks(this.f1041a);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1043c = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1042b = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public static class C0252a {

        /* renamed from: a */
        private Method f1046a;

        /* renamed from: b */
        private Method f1047b;

        /* renamed from: c */
        private Method f1048c;

        C0252a() {
            try {
                this.f1046a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1046a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.f1047b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1047b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.f1048c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1048c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        void m7345a(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f1046a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: a */
        void m7344a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            Method method = this.f1048c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        void m7343b(AutoCompleteTextView autoCompleteTextView) {
            Method method = this.f1047b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public interface AbstractC0253b {
        /* renamed from: a */
        boolean m7342a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public interface AbstractC0254c {
        /* renamed from: a */
        boolean m7341a(String str);

        /* renamed from: b */
        boolean m7340b(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public interface AbstractC0255d {
        /* renamed from: a */
        boolean m7339a(int i);

        /* renamed from: b */
        boolean m7338b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    private static class C0256e extends TouchDelegate {

        /* renamed from: a */
        private final View f1049a;

        /* renamed from: e */
        private final int f1053e;

        /* renamed from: f */
        private boolean f1054f;

        /* renamed from: b */
        private final Rect f1050b = new Rect();

        /* renamed from: d */
        private final Rect f1052d = new Rect();

        /* renamed from: c */
        private final Rect f1051c = new Rect();

        public C0256e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1053e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m7337a(rect, rect2);
            this.f1049a = view;
        }

        /* renamed from: a */
        public void m7337a(Rect rect, Rect rect2) {
            this.f1050b.set(rect);
            this.f1052d.set(rect);
            Rect rect3 = this.f1052d;
            int i = this.f1053e;
            rect3.inset(-i, -i);
            this.f1051c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z3 = false;
            if (action == 0) {
                if (this.f1050b.contains(x, y)) {
                    this.f1054f = true;
                    z = true;
                    z2 = true;
                }
                z = false;
                z2 = true;
            } else if (action == 1 || action == 2) {
                boolean z4 = this.f1054f;
                z = z4;
                z2 = true;
                if (z4) {
                    z = z4;
                    z2 = true;
                    if (!this.f1052d.contains(x, y)) {
                        z2 = false;
                        z = z4;
                    }
                }
            } else {
                if (action == 3) {
                    z = this.f1054f;
                    this.f1054f = false;
                    z2 = true;
                }
                z = false;
                z2 = true;
            }
            if (z) {
                if (!z2 || this.f1051c.contains(x, y)) {
                    motionEvent.setLocation(x - this.f1051c.left, y - this.f1051c.top);
                } else {
                    motionEvent.setLocation(this.f1049a.getWidth() / 2, this.f1049a.getHeight() / 2);
                }
                z3 = this.f1049a.dispatchTouchEvent(motionEvent);
            }
            return z3;
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0051a.C0052a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1019p = new Rect();
        this.f1020q = new Rect();
        this.f1021r = new int[2];
        this.f1022s = new int[2];
        this.f997R = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.m7366d();
            }
        };
        this.f998S = new Runnable() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.f1011g instanceof View$OnClickListenerC0304am) {
                    SearchView.this.f1011g.mo5882a((Cursor) null);
                }
            }
        };
        this.f999T = new WeakHashMap<>();
        this.f1000U = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.f1006b) {
                    SearchView.this.m7363g();
                } else if (view == SearchView.this.f1008d) {
                    SearchView.this.m7364f();
                } else if (view == SearchView.this.f1007c) {
                    SearchView.this.m7365e();
                } else if (view == SearchView.this.f1009e) {
                    SearchView.this.m7362h();
                } else if (view != SearchView.this.f1003a) {
                } else {
                    SearchView.this.m7359k();
                }
            }
        };
        this.f1013j = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (SearchView.this.f1012h == null) {
                    return false;
                }
                if (SearchView.this.f1003a.isPopupShowing() && SearchView.this.f1003a.getListSelection() != -1) {
                    return SearchView.this.m7381a(view, i2, keyEvent);
                }
                if (SearchView.this.f1003a.m7347a() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView = SearchView.this;
                searchView.m7386a(0, (String) null, searchView.f1003a.getText().toString());
                return true;
            }
        };
        this.f1001V = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.m7365e();
                return true;
            }
        };
        this.f1002W = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m7387a(i2, 0, (String) null);
            }
        };
        this.f1004aa = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m7388a(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.f1005ab = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.m7371b(charSequence);
            }
        };
        C0311as m7156a = C0311as.m7156a(context, attributeSet, C0051a.C0061j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(m7156a.m7143g(C0051a.C0061j.SearchView_layout, C0051a.C0058g.abc_search_view), (ViewGroup) this, true);
        this.f1003a = (SearchAutoComplete) findViewById(C0051a.C0057f.search_src_text);
        this.f1003a.setSearchView(this);
        this.f1014k = findViewById(C0051a.C0057f.search_edit_frame);
        this.f1015l = findViewById(C0051a.C0057f.search_plate);
        this.f1016m = findViewById(C0051a.C0057f.submit_area);
        this.f1006b = (ImageView) findViewById(C0051a.C0057f.search_button);
        this.f1007c = (ImageView) findViewById(C0051a.C0057f.search_go_btn);
        this.f1008d = (ImageView) findViewById(C0051a.C0057f.search_close_btn);
        this.f1009e = (ImageView) findViewById(C0051a.C0057f.search_voice_btn);
        this.f1023t = (ImageView) findViewById(C0051a.C0057f.search_mag_icon);
        C0552u.m6272a(this.f1015l, m7156a.m7163a(C0051a.C0061j.SearchView_queryBackground));
        C0552u.m6272a(this.f1016m, m7156a.m7163a(C0051a.C0061j.SearchView_submitBackground));
        this.f1006b.setImageDrawable(m7156a.m7163a(C0051a.C0061j.SearchView_searchIcon));
        this.f1007c.setImageDrawable(m7156a.m7163a(C0051a.C0061j.SearchView_goIcon));
        this.f1008d.setImageDrawable(m7156a.m7163a(C0051a.C0061j.SearchView_closeIcon));
        this.f1009e.setImageDrawable(m7156a.m7163a(C0051a.C0061j.SearchView_voiceIcon));
        this.f1023t.setImageDrawable(m7156a.m7163a(C0051a.C0061j.SearchView_searchIcon));
        this.f1024u = m7156a.m7163a(C0051a.C0061j.SearchView_searchHintIcon);
        C0315au.m7132a(this.f1006b, getResources().getString(C0051a.C0059h.abc_searchview_description_search));
        this.f1025v = m7156a.m7143g(C0051a.C0061j.SearchView_suggestionRowLayout, C0051a.C0058g.abc_search_dropdown_item_icons_2line);
        this.f1026w = m7156a.m7143g(C0051a.C0061j.SearchView_commitIcon, 0);
        this.f1006b.setOnClickListener(this.f1000U);
        this.f1008d.setOnClickListener(this.f1000U);
        this.f1007c.setOnClickListener(this.f1000U);
        this.f1009e.setOnClickListener(this.f1000U);
        this.f1003a.setOnClickListener(this.f1000U);
        this.f1003a.addTextChangedListener(this.f1005ab);
        this.f1003a.setOnEditorActionListener(this.f1001V);
        this.f1003a.setOnItemClickListener(this.f1002W);
        this.f1003a.setOnItemSelectedListener(this.f1004aa);
        this.f1003a.setOnKeyListener(this.f1013j);
        this.f1003a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.f1010f != null) {
                    SearchView.this.f1010f.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(m7156a.m7159a(C0051a.C0061j.SearchView_iconifiedByDefault, true));
        int m7147e = m7156a.m7147e(C0051a.C0061j.SearchView_android_maxWidth, -1);
        if (m7147e != -1) {
            setMaxWidth(m7147e);
        }
        this.f1029z = m7156a.m7152c(C0051a.C0061j.SearchView_defaultQueryHint);
        this.f987H = m7156a.m7152c(C0051a.C0061j.SearchView_queryHint);
        int m7161a = m7156a.m7161a(C0051a.C0061j.SearchView_android_imeOptions, -1);
        if (m7161a != -1) {
            setImeOptions(m7161a);
        }
        int m7161a2 = m7156a.m7161a(C0051a.C0061j.SearchView_android_inputType, -1);
        if (m7161a2 != -1) {
            setInputType(m7161a2);
        }
        setFocusable(m7156a.m7159a(C0051a.C0061j.SearchView_android_focusable, true));
        m7156a.m7164a();
        this.f1027x = new Intent("android.speech.action.WEB_SEARCH");
        this.f1027x.addFlags(268435456);
        this.f1027x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.f1028y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1028y.addFlags(268435456);
        this.f1017n = findViewById(this.f1003a.getDropDownAnchor());
        View view = this.f1017n;
        if (view != null) {
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.5
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView.this.m7360j();
                }
            });
        }
        m7376a(this.f984E);
        m7353q();
    }

    /* renamed from: a */
    private Intent m7383a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* renamed from: a */
    private Intent m7382a(Cursor cursor, int i, String str) {
        int i2;
        String m7188a;
        try {
            String m7188a2 = View$OnClickListenerC0304am.m7188a(cursor, "suggest_intent_action");
            String str2 = m7188a2;
            if (m7188a2 == null) {
                str2 = this.f1012h.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String m7188a3 = View$OnClickListenerC0304am.m7188a(cursor, "suggest_intent_data");
            String str4 = m7188a3;
            if (m7188a3 == null) {
                str4 = this.f1012h.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (View$OnClickListenerC0304am.m7188a(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(m7188a);
                }
            }
            return m7377a(str3, str5 == null ? null : Uri.parse(str5), View$OnClickListenerC0304am.m7188a(cursor, "suggest_intent_extra_data"), View$OnClickListenerC0304am.m7188a(cursor, "suggest_intent_query"), i, str);
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

    /* renamed from: a */
    private Intent m7377a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f993N);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f996Q;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1012h.getSearchActivity());
        return intent;
    }

    /* renamed from: a */
    private void m7384a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e) {
            Log.e("SearchView", "Failed launch activity: " + intent, e);
        }
    }

    /* renamed from: a */
    private void m7380a(View view, Rect rect) {
        view.getLocationInWindow(this.f1021r);
        getLocationInWindow(this.f1022s);
        int[] iArr = this.f1021r;
        int i = iArr[1];
        int[] iArr2 = this.f1022s;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r4.f984E != false) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m7376a(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.f985F = r1
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
            androidx.appcompat.widget.SearchView$SearchAutoComplete r0 = r0.f1003a
            android.text.Editable r0 = r0.getText()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r4
            android.widget.ImageView r0 = r0.f1006b
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r1 = r8
            r0.m7370b(r1)
            r0 = r4
            android.view.View r0 = r0.f1014k
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
            android.widget.ImageView r0 = r0.f1023t
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L5a
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f984E
            if (r0 == 0) goto L5d
        L5a:
            r0 = 8
            r7 = r0
        L5d:
            r0 = r4
            android.widget.ImageView r0 = r0.f1023t
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r0.m7355o()
            r0 = r4
            r1 = r8
            r2 = 1
            r1 = r1 ^ r2
            r0.m7367c(r1)
            r0 = r4
            r0.m7356n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m7376a(boolean):void");
    }

    /* renamed from: a */
    static boolean m7385a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: b */
    private Intent m7372b(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f996Q;
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

    /* renamed from: b */
    private void m7374b(int i) {
        Editable text = this.f1003a.getText();
        Cursor mo5883a = this.f1011g.mo5883a();
        if (mo5883a == null) {
            return;
        }
        if (!mo5883a.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        CharSequence mo5880b = this.f1011g.mo5880b(mo5883a);
        if (mo5880b != null) {
            setQuery(mo5880b);
        } else {
            setQuery(text);
        }
    }

    /* renamed from: b */
    private void m7370b(boolean z) {
        this.f1007c.setVisibility((!this.f986G || !m7357m() || !hasFocus() || (!z && this.f991L)) ? 8 : 0);
    }

    /* renamed from: b */
    private boolean m7373b(int i, int i2, String str) {
        Cursor mo5883a = this.f1011g.mo5883a();
        if (mo5883a == null || !mo5883a.moveToPosition(i)) {
            return false;
        }
        m7384a(m7382a(mo5883a, i2, str));
        return true;
    }

    /* renamed from: c */
    private CharSequence m7368c(CharSequence charSequence) {
        if (!this.f984E || this.f1024u == null) {
            return charSequence;
        }
        int textSize = (int) (this.f1003a.getTextSize() * 1.25d);
        this.f1024u.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1024u), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    /* renamed from: c */
    private void m7367c(boolean z) {
        int i;
        if (!this.f991L || m7369c() || !z) {
            i = 8;
        } else {
            i = 0;
            this.f1007c.setVisibility(8);
        }
        this.f1009e.setVisibility(i);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0051a.C0055d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0051a.C0055d.abc_search_view_preferred_width);
    }

    /* renamed from: l */
    private boolean m7358l() {
        SearchableInfo searchableInfo = this.f1012h;
        boolean z = false;
        if (searchableInfo != null) {
            z = false;
            if (searchableInfo.getVoiceSearchEnabled()) {
                Intent intent = null;
                if (this.f1012h.getVoiceSearchLaunchWebSearch()) {
                    intent = this.f1027x;
                } else if (this.f1012h.getVoiceSearchLaunchRecognizer()) {
                    intent = this.f1028y;
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

    /* renamed from: m */
    private boolean m7357m() {
        return (this.f986G || this.f991L) && !m7369c();
    }

    /* renamed from: n */
    private void m7356n() {
        this.f1016m.setVisibility((!m7357m() || !(this.f1007c.getVisibility() == 0 || this.f1009e.getVisibility() == 0)) ? 8 : 0);
    }

    /* renamed from: o */
    private void m7355o() {
        boolean z = !TextUtils.isEmpty(this.f1003a.getText());
        boolean z2 = true;
        if (!z) {
            z2 = this.f984E && !this.f994O;
        }
        this.f1008d.setVisibility(z2 ? 0 : 8);
        Drawable drawable = this.f1008d.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    /* renamed from: p */
    private void m7354p() {
        post(this.f997R);
    }

    /* renamed from: q */
    private void m7353q() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1003a;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m7368c(charSequence));
    }

    /* renamed from: r */
    private void m7352r() {
        this.f1003a.setThreshold(this.f1012h.getSuggestThreshold());
        this.f1003a.setImeOptions(this.f1012h.getImeOptions());
        int inputType = this.f1012h.getInputType();
        int i = inputType;
        if ((inputType & 15) == 1) {
            int i2 = inputType & (-65537);
            i = i2;
            if (this.f1012h.getSuggestAuthority() != null) {
                i = i2 | 65536 | 524288;
            }
        }
        this.f1003a.setInputType(i);
        AbstractC0624a abstractC0624a = this.f1011g;
        if (abstractC0624a != null) {
            abstractC0624a.mo5882a((Cursor) null);
        }
        if (this.f1012h.getSuggestAuthority() != null) {
            this.f1011g = new View$OnClickListenerC0304am(getContext(), this, this.f1012h, this.f999T);
            this.f1003a.setAdapter(this.f1011g);
            View$OnClickListenerC0304am view$OnClickListenerC0304am = (View$OnClickListenerC0304am) this.f1011g;
            int i3 = 1;
            if (this.f988I) {
                i3 = 2;
            }
            view$OnClickListenerC0304am.m7192a(i3);
        }
    }

    /* renamed from: s */
    private void m7351s() {
        this.f1003a.dismissDropDown();
    }

    private void setQuery(CharSequence charSequence) {
        this.f1003a.setText(charSequence);
        this.f1003a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    @Override // androidx.appcompat.view.AbstractC0157c
    /* renamed from: a */
    public void mo7389a() {
        if (this.f994O) {
            return;
        }
        this.f994O = true;
        this.f995P = this.f1003a.getImeOptions();
        this.f1003a.setImeOptions(this.f995P | 33554432);
        this.f1003a.setText("");
        setIconified(false);
    }

    /* renamed from: a */
    void m7386a(int i, String str, String str2) {
        getContext().startActivity(m7377a("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    /* renamed from: a */
    public void m7379a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: a */
    public void m7378a(CharSequence charSequence, boolean z) {
        this.f1003a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1003a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f993N = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m7365e();
    }

    /* renamed from: a */
    boolean m7388a(int i) {
        AbstractC0255d abstractC0255d = this.f982C;
        if (abstractC0255d == null || !abstractC0255d.m7339a(i)) {
            m7374b(i);
            return true;
        }
        return false;
    }

    /* renamed from: a */
    boolean m7387a(int i, int i2, String str) {
        AbstractC0255d abstractC0255d = this.f982C;
        if (abstractC0255d == null || !abstractC0255d.m7338b(i)) {
            m7373b(i, 0, null);
            this.f1003a.setImeVisibility(false);
            m7351s();
            return true;
        }
        return false;
    }

    /* renamed from: a */
    boolean m7381a(View view, int i, KeyEvent keyEvent) {
        if (this.f1012h != null && this.f1011g != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i == 66 || i == 84 || i == 61) {
                return m7387a(this.f1003a.getListSelection(), 0, (String) null);
            }
            if (i != 21 && i != 22) {
                return (i == 19 && this.f1003a.getListSelection() == 0) ? false : false;
            }
            this.f1003a.setSelection(i == 21 ? 0 : this.f1003a.length());
            this.f1003a.setListSelection(0);
            this.f1003a.clearListSelection();
            f979i.m7344a(this.f1003a, true);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.AbstractC0157c
    /* renamed from: b */
    public void mo7375b() {
        m7378a("", false);
        clearFocus();
        m7376a(true);
        this.f1003a.setImeOptions(this.f995P);
        this.f994O = false;
    }

    /* renamed from: b */
    void m7371b(CharSequence charSequence) {
        Editable text = this.f1003a.getText();
        this.f993N = text;
        boolean z = !TextUtils.isEmpty(text);
        m7370b(z);
        m7367c(!z);
        m7355o();
        m7356n();
        if (this.f980A != null && !TextUtils.equals(charSequence, this.f992M)) {
            this.f980A.m7340b(charSequence.toString());
        }
        this.f992M = charSequence.toString();
    }

    /* renamed from: c */
    public boolean m7369c() {
        return this.f985F;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f989J = true;
        super.clearFocus();
        this.f1003a.clearFocus();
        this.f1003a.setImeVisibility(false);
        this.f989J = false;
    }

    /* renamed from: d */
    void m7366d() {
        int[] iArr = this.f1003a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f1015l.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1016m.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: e */
    void m7365e() {
        Editable text = this.f1003a.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        AbstractC0254c abstractC0254c = this.f980A;
        if (abstractC0254c != null && abstractC0254c.m7341a(text.toString())) {
            return;
        }
        if (this.f1012h != null) {
            m7386a(0, (String) null, text.toString());
        }
        this.f1003a.setImeVisibility(false);
        m7351s();
    }

    /* renamed from: f */
    void m7364f() {
        if (!TextUtils.isEmpty(this.f1003a.getText())) {
            this.f1003a.setText("");
            this.f1003a.requestFocus();
            this.f1003a.setImeVisibility(true);
        } else if (!this.f984E) {
        } else {
            AbstractC0253b abstractC0253b = this.f981B;
            if (abstractC0253b != null && abstractC0253b.m7342a()) {
                return;
            }
            clearFocus();
            m7376a(true);
        }
    }

    /* renamed from: g */
    void m7363g() {
        m7376a(false);
        this.f1003a.requestFocus();
        this.f1003a.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f983D;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public int getImeOptions() {
        return this.f1003a.getImeOptions();
    }

    public int getInputType() {
        return this.f1003a.getInputType();
    }

    public int getMaxWidth() {
        return this.f990K;
    }

    public CharSequence getQuery() {
        return this.f1003a.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f987H;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f1012h;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1029z : getContext().getText(this.f1012h.getHintId());
        }
        return charSequence;
    }

    public int getSuggestionCommitIconResId() {
        return this.f1026w;
    }

    public int getSuggestionRowLayout() {
        return this.f1025v;
    }

    public AbstractC0624a getSuggestionsAdapter() {
        return this.f1011g;
    }

    /* renamed from: h */
    void m7362h() {
        SearchableInfo searchableInfo = this.f1012h;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(m7383a(this.f1027x, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(m7372b(this.f1028y, searchableInfo));
            }
        } catch (ActivityNotFoundException e) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    /* renamed from: i */
    void m7361i() {
        m7376a(m7369c());
        m7354p();
        if (this.f1003a.hasFocus()) {
            m7359k();
        }
    }

    /* renamed from: j */
    void m7360j() {
        if (this.f1017n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1015l.getPaddingLeft();
            Rect rect = new Rect();
            boolean m7115a = C0321ay.m7115a(this);
            int dimensionPixelSize = this.f984E ? resources.getDimensionPixelSize(C0051a.C0055d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C0051a.C0055d.abc_dropdownitem_text_padding_left) : 0;
            this.f1003a.getDropDownBackground().getPadding(rect);
            this.f1003a.setDropDownHorizontalOffset(m7115a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1003a.setDropDownWidth((((this.f1017n.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* renamed from: k */
    void m7359k() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1003a.refreshAutoCompleteResults();
            return;
        }
        f979i.m7345a(this.f1003a);
        f979i.m7343b(this.f1003a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f997R);
        post(this.f998S);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.C0277ae, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m7380a(this.f1003a, this.f1019p);
            this.f1020q.set(this.f1019p.left, 0, this.f1019p.right, i4 - i2);
            C0256e c0256e = this.f1018o;
            if (c0256e != null) {
                c0256e.m7337a(this.f1020q, this.f1019p);
                return;
            }
            this.f1018o = new C0256e(this.f1020q, this.f1019p, this.f1003a);
            setTouchDelegate(this.f1018o);
        }
    }

    @Override // androidx.appcompat.widget.C0277ae, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (m7369c()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f990K;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            i3 = this.f990K;
            if (i3 <= 0) {
                i3 = getPreferredWidth();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f990K;
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
        super.onRestoreInstanceState(savedState.getSuperState());
        m7376a(savedState.f1040a);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1040a = m7369c();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m7354p();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (!this.f989J && isFocusable()) {
            if (m7369c()) {
                return super.requestFocus(i, rect);
            }
            boolean requestFocus = this.f1003a.requestFocus(i, rect);
            if (requestFocus) {
                m7376a(false);
            }
            return requestFocus;
        }
        return false;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f996Q = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m7364f();
        } else {
            m7363g();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f984E == z) {
            return;
        }
        this.f984E = z;
        m7376a(z);
        m7353q();
    }

    public void setImeOptions(int i) {
        this.f1003a.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f1003a.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f990K = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0253b abstractC0253b) {
        this.f981B = abstractC0253b;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1010f = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0254c abstractC0254c) {
        this.f980A = abstractC0254c;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f983D = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0255d abstractC0255d) {
        this.f982C = abstractC0255d;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f987H = charSequence;
        m7353q();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f988I = z;
        AbstractC0624a abstractC0624a = this.f1011g;
        if (abstractC0624a instanceof View$OnClickListenerC0304am) {
            ((View$OnClickListenerC0304am) abstractC0624a).m7192a(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1012h = searchableInfo;
        if (this.f1012h != null) {
            m7352r();
            m7353q();
        }
        this.f991L = m7358l();
        if (this.f991L) {
            this.f1003a.setPrivateImeOptions("nm");
        }
        m7376a(m7369c());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f986G = z;
        m7376a(m7369c());
    }

    public void setSuggestionsAdapter(AbstractC0624a abstractC0624a) {
        this.f1011g = abstractC0624a;
        this.f1003a.setAdapter(this.f1011g);
    }
}
