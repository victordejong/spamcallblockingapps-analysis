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
import androidx.appcompat.C0083a;
import androidx.appcompat.view.AbstractC0174c;
import androidx.core.p026h.C0595u;
import androidx.p015c.p016a.AbstractC0394a;
import androidx.p029d.p030a.AbstractC0633a;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC0174c {

    /* renamed from: i */
    static final C0262a f1058i = new C0262a();

    /* renamed from: A */
    private AbstractC0264c f1059A;

    /* renamed from: B */
    private AbstractC0263b f1060B;

    /* renamed from: C */
    private AbstractC0265d f1061C;

    /* renamed from: D */
    private View.OnClickListener f1062D;

    /* renamed from: E */
    private boolean f1063E;

    /* renamed from: F */
    private boolean f1064F;

    /* renamed from: G */
    private boolean f1065G;

    /* renamed from: H */
    private CharSequence f1066H;

    /* renamed from: I */
    private boolean f1067I;

    /* renamed from: J */
    private boolean f1068J;

    /* renamed from: K */
    private int f1069K;

    /* renamed from: L */
    private boolean f1070L;

    /* renamed from: M */
    private CharSequence f1071M;

    /* renamed from: N */
    private CharSequence f1072N;

    /* renamed from: O */
    private boolean f1073O;

    /* renamed from: P */
    private int f1074P;

    /* renamed from: Q */
    private Bundle f1075Q;

    /* renamed from: R */
    private final Runnable f1076R;

    /* renamed from: S */
    private Runnable f1077S;

    /* renamed from: T */
    private final WeakHashMap<String, Drawable.ConstantState> f1078T;

    /* renamed from: U */
    private final View.OnClickListener f1079U;

    /* renamed from: V */
    private final TextView.OnEditorActionListener f1080V;

    /* renamed from: W */
    private final AdapterView.OnItemClickListener f1081W;

    /* renamed from: a */
    final SearchAutoComplete f1082a;

    /* renamed from: aa */
    private final AdapterView.OnItemSelectedListener f1083aa;

    /* renamed from: ab */
    private TextWatcher f1084ab;

    /* renamed from: b */
    final ImageView f1085b;

    /* renamed from: c */
    final ImageView f1086c;

    /* renamed from: d */
    final ImageView f1087d;

    /* renamed from: e */
    final ImageView f1088e;

    /* renamed from: f */
    View.OnFocusChangeListener f1089f;

    /* renamed from: g */
    AbstractC0394a f1090g;

    /* renamed from: h */
    SearchableInfo f1091h;

    /* renamed from: j */
    View.OnKeyListener f1092j;

    /* renamed from: k */
    private final View f1093k;

    /* renamed from: l */
    private final View f1094l;

    /* renamed from: m */
    private final View f1095m;

    /* renamed from: n */
    private final View f1096n;

    /* renamed from: o */
    private C0268f f1097o;

    /* renamed from: p */
    private Rect f1098p;

    /* renamed from: q */
    private Rect f1099q;

    /* renamed from: r */
    private int[] f1100r;

    /* renamed from: s */
    private int[] f1101s;

    /* renamed from: t */
    private final ImageView f1102t;

    /* renamed from: u */
    private final Drawable f1103u;

    /* renamed from: v */
    private final int f1104v;

    /* renamed from: w */
    private final int f1105w;

    /* renamed from: x */
    private final Intent f1106x;

    /* renamed from: y */
    private final Intent f1107y;

    /* renamed from: z */
    private final CharSequence f1108z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends C0346e {

        /* renamed from: a */
        final Runnable f1119a;

        /* renamed from: b */
        private int f1120b;

        /* renamed from: c */
        private SearchView f1121c;

        /* renamed from: d */
        private boolean f1122d;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0083a.C0084a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1119a = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public void run() {
                    SearchAutoComplete.this.m21631b();
                }
            };
            this.f1120b = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            return (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : 256;
        }

        /* renamed from: a */
        boolean m21632a() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* renamed from: b */
        void m21631b() {
            if (this.f1122d) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f1122d = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1120b <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.C0346e, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1122d) {
                removeCallbacks(this.f1119a);
                post(this.f1119a);
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
            this.f1121c.m21643i();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            boolean onKeyPreIme;
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    onKeyPreIme = true;
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                        onKeyPreIme = true;
                    }
                } else if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1121c.clearFocus();
                        setImeVisibility(false);
                        onKeyPreIme = true;
                    }
                }
                return onKeyPreIme;
            }
            onKeyPreIme = super.onKeyPreIme(i, keyEvent);
            return onKeyPreIme;
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (!z || !this.f1121c.hasFocus() || getVisibility() != 0) {
                return;
            }
            this.f1122d = true;
            if (!SearchView.m21667a(getContext())) {
                return;
            }
            SearchView.f1058i.m21629a(this, true);
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
                this.f1122d = false;
                removeCallbacks(this.f1119a);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f1122d = true;
            } else {
                this.f1122d = false;
                removeCallbacks(this.f1119a);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.f1121c = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1120b = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public static class C0262a {

        /* renamed from: a */
        private Method f1124a;

        /* renamed from: b */
        private Method f1125b;

        /* renamed from: c */
        private Method f1126c;

        C0262a() {
            try {
                this.f1124a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1124a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.f1125b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1125b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.f1126c = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1126c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        void m21630a(AutoCompleteTextView autoCompleteTextView) {
            if (this.f1124a != null) {
                try {
                    this.f1124a.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: a */
        void m21629a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            if (this.f1126c != null) {
                try {
                    this.f1126c.invoke(autoCompleteTextView, Boolean.valueOf(z));
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        void m21628b(AutoCompleteTextView autoCompleteTextView) {
            if (this.f1125b != null) {
                try {
                    this.f1125b.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public interface AbstractC0263b {
        /* renamed from: a */
        boolean m21627a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public interface AbstractC0264c {
        /* renamed from: a */
        boolean m21626a(String str);

        /* renamed from: b */
        boolean m21625b(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public interface AbstractC0265d {
        /* renamed from: a */
        boolean m21624a(int i);

        /* renamed from: b */
        boolean m21623b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    public static class C0266e extends AbstractC0633a {
        public static final Parcelable.Creator<C0266e> CREATOR = new Parcelable.ClassLoaderCreator<C0266e>() { // from class: androidx.appcompat.widget.SearchView.e.1
            /* renamed from: a */
            public C0266e createFromParcel(Parcel parcel) {
                return new C0266e(parcel, null);
            }

            /* renamed from: a */
            public C0266e createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0266e(parcel, classLoader);
            }

            /* renamed from: a */
            public C0266e[] newArray(int i) {
                return new C0266e[i];
            }
        };

        /* renamed from: a */
        boolean f1127a;

        public C0266e(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1127a = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        C0266e(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f1127a + "}";
        }

        @Override // androidx.p029d.p030a.AbstractC0633a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f1127a));
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
    private static class C0268f extends TouchDelegate {

        /* renamed from: a */
        private final View f1128a;

        /* renamed from: e */
        private final int f1132e;

        /* renamed from: f */
        private boolean f1133f;

        /* renamed from: b */
        private final Rect f1129b = new Rect();

        /* renamed from: d */
        private final Rect f1131d = new Rect();

        /* renamed from: c */
        private final Rect f1130c = new Rect();

        public C0268f(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1132e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m21619a(rect, rect2);
            this.f1128a = view;
        }

        /* renamed from: a */
        public void m21619a(Rect rect, Rect rect2) {
            this.f1129b.set(rect);
            this.f1131d.set(rect);
            this.f1131d.inset(-this.f1132e, -this.f1132e);
            this.f1130c.set(rect2);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    if (this.f1129b.contains(x, y)) {
                        this.f1133f = true;
                        z2 = true;
                        z = true;
                        break;
                    }
                    z2 = true;
                    z = false;
                    break;
                case 1:
                case 2:
                    boolean z3 = this.f1133f;
                    z = z3;
                    if (z3) {
                        z = z3;
                        if (!this.f1131d.contains(x, y)) {
                            z2 = false;
                            z = z3;
                            break;
                        }
                    }
                    z2 = true;
                    break;
                case 3:
                    z = this.f1133f;
                    this.f1133f = false;
                    z2 = true;
                    break;
                default:
                    z2 = true;
                    z = false;
                    break;
            }
            boolean z4 = false;
            if (z) {
                if (!z2 || this.f1130c.contains(x, y)) {
                    motionEvent.setLocation(x - this.f1130c.left, y - this.f1130c.top);
                } else {
                    motionEvent.setLocation(this.f1128a.getWidth() / 2, this.f1128a.getHeight() / 2);
                }
                z4 = this.f1128a.dispatchTouchEvent(motionEvent);
            }
            return z4;
        }
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0083a.C0084a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1098p = new Rect();
        this.f1099q = new Rect();
        this.f1100r = new int[2];
        this.f1101s = new int[2];
        this.f1076R = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public void run() {
                SearchView.this.m21649d();
            }
        };
        this.f1077S = new Runnable() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // java.lang.Runnable
            public void run() {
                if (SearchView.this.f1090g instanceof View$OnClickListenerC0310aj) {
                    SearchView.this.f1090g.mo21058a((Cursor) null);
                }
            }
        };
        this.f1078T = new WeakHashMap<>();
        this.f1079U = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == SearchView.this.f1085b) {
                    SearchView.this.m21645g();
                } else if (view == SearchView.this.f1087d) {
                    SearchView.this.m21646f();
                } else if (view == SearchView.this.f1086c) {
                    SearchView.this.m21648e();
                } else if (view == SearchView.this.f1088e) {
                    SearchView.this.m21644h();
                } else if (view != SearchView.this.f1082a) {
                } else {
                    SearchView.this.m21641l();
                }
            }
        };
        this.f1092j = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                boolean z;
                if (SearchView.this.f1091h == null) {
                    z = false;
                } else if (!SearchView.this.f1082a.isPopupShowing() || SearchView.this.f1082a.getListSelection() == -1) {
                    z = false;
                    if (!SearchView.this.f1082a.m21632a()) {
                        z = false;
                        if (keyEvent.hasNoModifiers()) {
                            z = false;
                            if (keyEvent.getAction() == 1) {
                                z = false;
                                if (i2 == 66) {
                                    view.cancelLongPress();
                                    SearchView.this.m21668a(0, (String) null, SearchView.this.f1082a.getText().toString());
                                    z = true;
                                }
                            }
                        }
                    }
                } else {
                    z = SearchView.this.m21663a(view, i2, keyEvent);
                }
                return z;
            }
        };
        this.f1080V = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.m21648e();
                return true;
            }
        };
        this.f1081W = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m21669a(i2, 0, (String) null);
            }
        };
        this.f1083aa = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m21670a(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.f1084ab = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.m21654b(charSequence);
            }
        };
        C0317ap m21433a = C0317ap.m21433a(context, attributeSet, C0083a.C0093j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(m21433a.m21420g(C0083a.C0093j.SearchView_layout, C0083a.C0090g.abc_search_view), (ViewGroup) this, true);
        this.f1082a = (SearchAutoComplete) findViewById(C0083a.C0089f.search_src_text);
        this.f1082a.setSearchView(this);
        this.f1093k = findViewById(C0083a.C0089f.search_edit_frame);
        this.f1094l = findViewById(C0083a.C0089f.search_plate);
        this.f1095m = findViewById(C0083a.C0089f.submit_area);
        this.f1085b = (ImageView) findViewById(C0083a.C0089f.search_button);
        this.f1086c = (ImageView) findViewById(C0083a.C0089f.search_go_btn);
        this.f1087d = (ImageView) findViewById(C0083a.C0089f.search_close_btn);
        this.f1088e = (ImageView) findViewById(C0083a.C0089f.search_voice_btn);
        this.f1102t = (ImageView) findViewById(C0083a.C0089f.search_mag_icon);
        C0595u.m20350a(this.f1094l, m21433a.m21440a(C0083a.C0093j.SearchView_queryBackground));
        C0595u.m20350a(this.f1095m, m21433a.m21440a(C0083a.C0093j.SearchView_submitBackground));
        this.f1085b.setImageDrawable(m21433a.m21440a(C0083a.C0093j.SearchView_searchIcon));
        this.f1086c.setImageDrawable(m21433a.m21440a(C0083a.C0093j.SearchView_goIcon));
        this.f1087d.setImageDrawable(m21433a.m21440a(C0083a.C0093j.SearchView_closeIcon));
        this.f1088e.setImageDrawable(m21433a.m21440a(C0083a.C0093j.SearchView_voiceIcon));
        this.f1102t.setImageDrawable(m21433a.m21440a(C0083a.C0093j.SearchView_searchIcon));
        this.f1103u = m21433a.m21440a(C0083a.C0093j.SearchView_searchHintIcon);
        C0321ar.m21406a(this.f1085b, getResources().getString(C0083a.C0091h.abc_searchview_description_search));
        this.f1104v = m21433a.m21420g(C0083a.C0093j.SearchView_suggestionRowLayout, C0083a.C0090g.abc_search_dropdown_item_icons_2line);
        this.f1105w = m21433a.m21420g(C0083a.C0093j.SearchView_commitIcon, 0);
        this.f1085b.setOnClickListener(this.f1079U);
        this.f1087d.setOnClickListener(this.f1079U);
        this.f1086c.setOnClickListener(this.f1079U);
        this.f1088e.setOnClickListener(this.f1079U);
        this.f1082a.setOnClickListener(this.f1079U);
        this.f1082a.addTextChangedListener(this.f1084ab);
        this.f1082a.setOnEditorActionListener(this.f1080V);
        this.f1082a.setOnItemClickListener(this.f1081W);
        this.f1082a.setOnItemSelectedListener(this.f1083aa);
        this.f1082a.setOnKeyListener(this.f1092j);
        this.f1082a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (SearchView.this.f1089f != null) {
                    SearchView.this.f1089f.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(m21433a.m21436a(C0083a.C0093j.SearchView_iconifiedByDefault, true));
        int m21424e = m21433a.m21424e(C0083a.C0093j.SearchView_android_maxWidth, -1);
        if (m21424e != -1) {
            setMaxWidth(m21424e);
        }
        this.f1108z = m21433a.m21429c(C0083a.C0093j.SearchView_defaultQueryHint);
        this.f1066H = m21433a.m21429c(C0083a.C0093j.SearchView_queryHint);
        int m21438a = m21433a.m21438a(C0083a.C0093j.SearchView_android_imeOptions, -1);
        if (m21438a != -1) {
            setImeOptions(m21438a);
        }
        int m21438a2 = m21433a.m21438a(C0083a.C0093j.SearchView_android_inputType, -1);
        if (m21438a2 != -1) {
            setInputType(m21438a2);
        }
        setFocusable(m21433a.m21436a(C0083a.C0093j.SearchView_android_focusable, true));
        m21433a.m21441a();
        this.f1106x = new Intent("android.speech.action.WEB_SEARCH");
        this.f1106x.addFlags(268435456);
        this.f1106x.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        this.f1107y = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1107y.addFlags(268435456);
        this.f1096n = findViewById(this.f1082a.getDropDownAnchor());
        if (this.f1096n != null) {
            this.f1096n.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.5
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView.this.m21642k();
                }
            });
        }
        m21658a(this.f1063E);
        m21635r();
    }

    /* renamed from: a */
    private Intent m21665a(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    /* renamed from: a */
    private Intent m21664a(Cursor cursor, int i, String str) {
        int i2;
        Intent intent;
        String m21465a;
        try {
            String m21465a2 = View$OnClickListenerC0310aj.m21465a(cursor, "suggest_intent_action");
            String str2 = m21465a2;
            if (m21465a2 == null) {
                str2 = this.f1091h.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String m21465a3 = View$OnClickListenerC0310aj.m21465a(cursor, "suggest_intent_data");
            String str4 = m21465a3;
            if (m21465a3 == null) {
                str4 = this.f1091h.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (View$OnClickListenerC0310aj.m21465a(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(m21465a);
                }
            }
            intent = m21659a(str3, str5 == null ? null : Uri.parse(str5), View$OnClickListenerC0310aj.m21465a(cursor, "suggest_intent_extra_data"), View$OnClickListenerC0310aj.m21465a(cursor, "suggest_intent_query"), i, str);
        } catch (RuntimeException e) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException e2) {
                i2 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e);
            intent = null;
        }
        return intent;
    }

    /* renamed from: a */
    private Intent m21659a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1072N);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.f1075Q != null) {
            intent.putExtra("app_data", this.f1075Q);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1091h.getSearchActivity());
        return intent;
    }

    /* renamed from: a */
    private void m21666a(Intent intent) {
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
    private void m21662a(View view, Rect rect) {
        view.getLocationInWindow(this.f1100r);
        getLocationInWindow(this.f1101s);
        int i = this.f1100r[1] - this.f1101s[1];
        int i2 = this.f1100r[0] - this.f1101s[0];
        rect.set(i2, i, view.getWidth() + i2, view.getHeight() + i);
    }

    /* renamed from: a */
    private void m21658a(boolean z) {
        this.f1064F = z;
        int i = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f1082a.getText());
        this.f1085b.setVisibility(i);
        m21653b(z2);
        this.f1093k.setVisibility(z ? 8 : 0);
        int i2 = 8;
        if (this.f1102t.getDrawable() != null) {
            i2 = this.f1063E ? 8 : 0;
        }
        this.f1102t.setVisibility(i2);
        m21637p();
        m21650c(!z2);
        m21638o();
    }

    /* renamed from: a */
    static boolean m21667a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: b */
    private Intent m21655b(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        if (this.f1075Q != null) {
            bundle.putParcelable("app_data", this.f1075Q);
        }
        Intent intent3 = new Intent(intent);
        String str = "free_form";
        int i = 1;
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            str = resources.getString(searchableInfo.getVoiceLanguageModeId());
        }
        String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        if (searchableInfo.getVoiceMaxResults() != 0) {
            i = searchableInfo.getVoiceMaxResults();
        }
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", str);
        intent3.putExtra("android.speech.extra.PROMPT", string);
        intent3.putExtra("android.speech.extra.LANGUAGE", string2);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", i);
        intent3.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
        if (r3.f1070L == false) goto L12;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21653b(boolean r4) {
        /*
            r3 = this;
            r0 = 8
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.f1065G
            if (r0 == 0) goto L2d
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.m21639n()
            if (r0 == 0) goto L2d
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.hasFocus()
            if (r0 == 0) goto L2d
            r0 = r4
            if (r0 != 0) goto L2b
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.f1070L
            if (r0 != 0) goto L2d
        L2b:
            r0 = 0
            r6 = r0
        L2d:
            r0 = r3
            android.widget.ImageView r0 = r0.f1086c
            r1 = r6
            r0.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m21653b(boolean):void");
    }

    /* renamed from: b */
    private boolean m21656b(int i, int i2, String str) {
        boolean z;
        Cursor mo21059a = this.f1090g.mo21059a();
        if (mo21059a == null || !mo21059a.moveToPosition(i)) {
            z = false;
        } else {
            m21666a(m21664a(mo21059a, i2, str));
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    private CharSequence m21651c(CharSequence charSequence) {
        SpannableStringBuilder spannableStringBuilder = charSequence;
        if (this.f1063E) {
            if (this.f1103u == null) {
                spannableStringBuilder = charSequence;
            } else {
                int textSize = (int) (this.f1082a.getTextSize() * 1.25d);
                this.f1103u.setBounds(0, 0, textSize, textSize);
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("   ");
                spannableStringBuilder2.setSpan(new ImageSpan(this.f1103u), 1, 2, 33);
                spannableStringBuilder2.append(charSequence);
                spannableStringBuilder = spannableStringBuilder2;
            }
        }
        return spannableStringBuilder;
    }

    /* renamed from: c */
    private void m21650c(boolean z) {
        int i;
        if (!this.f1070L || m21652c() || !z) {
            i = 8;
        } else {
            i = 0;
            this.f1086c.setVisibility(8);
        }
        this.f1088e.setVisibility(i);
    }

    /* renamed from: e */
    private void m21647e(int i) {
        Editable text = this.f1082a.getText();
        Cursor mo21059a = this.f1090g.mo21059a();
        if (mo21059a == null) {
            return;
        }
        if (!mo21059a.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        CharSequence mo21056b = this.f1090g.mo21056b(mo21059a);
        if (mo21056b != null) {
            setQuery(mo21056b);
        } else {
            setQuery(text);
        }
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0083a.C0087d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0083a.C0087d.abc_search_view_preferred_width);
    }

    /* renamed from: m */
    private boolean m21640m() {
        boolean z = false;
        if (this.f1091h != null) {
            z = false;
            if (this.f1091h.getVoiceSearchEnabled()) {
                Intent intent = null;
                if (this.f1091h.getVoiceSearchLaunchWebSearch()) {
                    intent = this.f1106x;
                } else if (this.f1091h.getVoiceSearchLaunchRecognizer()) {
                    intent = this.f1107y;
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

    /* renamed from: n */
    private boolean m21639n() {
        return (this.f1065G || this.f1070L) && !m21652c();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
        if (r3.f1088e.getVisibility() == 0) goto L8;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m21638o() {
        /*
            r3 = this;
            r0 = 8
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.m21639n()
            if (r0 == 0) goto L24
            r0 = r3
            android.widget.ImageView r0 = r0.f1086c
            int r0 = r0.getVisibility()
            if (r0 == 0) goto L22
            r0 = r4
            r5 = r0
            r0 = r3
            android.widget.ImageView r0 = r0.f1088e
            int r0 = r0.getVisibility()
            if (r0 != 0) goto L24
        L22:
            r0 = 0
            r5 = r0
        L24:
            r0 = r3
            android.view.View r0 = r0.f1095m
            r1 = r5
            r0.setVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m21638o():void");
    }

    /* renamed from: p */
    private void m21637p() {
        boolean z = !TextUtils.isEmpty(this.f1082a.getText());
        boolean z2 = true;
        if (!z) {
            z2 = this.f1063E && !this.f1073O;
        }
        this.f1087d.setVisibility(z2 ? 0 : 8);
        Drawable drawable = this.f1087d.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    /* renamed from: q */
    private void m21636q() {
        post(this.f1076R);
    }

    /* renamed from: r */
    private void m21635r() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1082a;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m21651c(charSequence));
    }

    /* renamed from: s */
    private void m21634s() {
        this.f1082a.setThreshold(this.f1091h.getSuggestThreshold());
        this.f1082a.setImeOptions(this.f1091h.getImeOptions());
        int inputType = this.f1091h.getInputType();
        int i = inputType;
        if ((inputType & 15) == 1) {
            int i2 = inputType & (-65537);
            i = i2;
            if (this.f1091h.getSuggestAuthority() != null) {
                i = i2 | 65536 | 524288;
            }
        }
        this.f1082a.setInputType(i);
        if (this.f1090g != null) {
            this.f1090g.mo21058a((Cursor) null);
        }
        if (this.f1091h.getSuggestAuthority() != null) {
            this.f1090g = new View$OnClickListenerC0310aj(getContext(), this, this.f1091h, this.f1078T);
            this.f1082a.setAdapter(this.f1090g);
            View$OnClickListenerC0310aj view$OnClickListenerC0310aj = (View$OnClickListenerC0310aj) this.f1090g;
            int i3 = 1;
            if (this.f1067I) {
                i3 = 2;
            }
            view$OnClickListenerC0310aj.m21469a(i3);
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.f1082a.setText(charSequence);
        this.f1082a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: t */
    private void m21633t() {
        this.f1082a.dismissDropDown();
    }

    @Override // androidx.appcompat.view.AbstractC0174c
    /* renamed from: a */
    public void mo21671a() {
        if (this.f1073O) {
            return;
        }
        this.f1073O = true;
        this.f1074P = this.f1082a.getImeOptions();
        this.f1082a.setImeOptions(this.f1074P | 33554432);
        this.f1082a.setText("");
        setIconified(false);
    }

    /* renamed from: a */
    void m21668a(int i, String str, String str2) {
        getContext().startActivity(m21659a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i, str));
    }

    /* renamed from: a */
    public void m21661a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: a */
    public void m21660a(CharSequence charSequence, boolean z) {
        this.f1082a.setText(charSequence);
        if (charSequence != null) {
            this.f1082a.setSelection(this.f1082a.length());
            this.f1072N = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m21648e();
    }

    /* renamed from: a */
    boolean m21670a(int i) {
        boolean z;
        if (this.f1061C == null || !this.f1061C.m21624a(i)) {
            m21647e(i);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    boolean m21669a(int i, int i2, String str) {
        boolean z = false;
        if (this.f1061C == null || !this.f1061C.m21623b(i)) {
            m21656b(i, 0, null);
            this.f1082a.setImeVisibility(false);
            m21633t();
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    boolean m21663a(View view, int i, KeyEvent keyEvent) {
        boolean z;
        if (this.f1091h == null) {
            z = false;
        } else {
            z = false;
            if (this.f1090g != null) {
                z = false;
                if (keyEvent.getAction() == 0) {
                    z = false;
                    if (keyEvent.hasNoModifiers()) {
                        if (i == 66 || i == 84 || i == 61) {
                            z = m21669a(this.f1082a.getListSelection(), 0, (String) null);
                        } else if (i == 21 || i == 22) {
                            this.f1082a.setSelection(i == 21 ? 0 : this.f1082a.length());
                            this.f1082a.setListSelection(0);
                            this.f1082a.clearListSelection();
                            f1058i.m21629a(this.f1082a, true);
                            z = true;
                        } else {
                            z = false;
                            if (i == 19) {
                                z = false;
                                if (this.f1082a.getListSelection() == 0) {
                                    z = false;
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // androidx.appcompat.view.AbstractC0174c
    /* renamed from: b */
    public void mo21657b() {
        m21660a("", false);
        clearFocus();
        m21658a(true);
        this.f1082a.setImeOptions(this.f1074P);
        this.f1073O = false;
    }

    /* renamed from: b */
    void m21654b(CharSequence charSequence) {
        Editable text = this.f1082a.getText();
        this.f1072N = text;
        boolean z = !TextUtils.isEmpty(text);
        m21653b(z);
        m21650c(!z);
        m21637p();
        m21638o();
        if (this.f1059A != null && !TextUtils.equals(charSequence, this.f1071M)) {
            this.f1059A.m21625b(charSequence.toString());
        }
        this.f1071M = charSequence.toString();
    }

    /* renamed from: c */
    public boolean m21652c() {
        return this.f1064F;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f1068J = true;
        super.clearFocus();
        this.f1082a.clearFocus();
        this.f1082a.setImeVisibility(false);
        this.f1068J = false;
    }

    /* renamed from: d */
    void m21649d() {
        int[] iArr = this.f1082a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f1094l.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1095m.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: e */
    void m21648e() {
        Editable text = this.f1082a.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        if (this.f1059A != null && this.f1059A.m21626a(text.toString())) {
            return;
        }
        if (this.f1091h != null) {
            m21668a(0, (String) null, text.toString());
        }
        this.f1082a.setImeVisibility(false);
        m21633t();
    }

    /* renamed from: f */
    void m21646f() {
        if (!TextUtils.isEmpty(this.f1082a.getText())) {
            this.f1082a.setText("");
            this.f1082a.requestFocus();
            this.f1082a.setImeVisibility(true);
        } else if (!this.f1063E) {
        } else {
            if (this.f1060B != null && this.f1060B.m21627a()) {
                return;
            }
            clearFocus();
            m21658a(true);
        }
    }

    /* renamed from: g */
    void m21645g() {
        m21658a(false);
        this.f1082a.requestFocus();
        this.f1082a.setImeVisibility(true);
        if (this.f1062D != null) {
            this.f1062D.onClick(this);
        }
    }

    public int getImeOptions() {
        return this.f1082a.getImeOptions();
    }

    public int getInputType() {
        return this.f1082a.getInputType();
    }

    public int getMaxWidth() {
        return this.f1069K;
    }

    public CharSequence getQuery() {
        return this.f1082a.getText();
    }

    public CharSequence getQueryHint() {
        return this.f1066H != null ? this.f1066H : (this.f1091h == null || this.f1091h.getHintId() == 0) ? this.f1108z : getContext().getText(this.f1091h.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.f1105w;
    }

    public int getSuggestionRowLayout() {
        return this.f1104v;
    }

    public AbstractC0394a getSuggestionsAdapter() {
        return this.f1090g;
    }

    /* renamed from: h */
    void m21644h() {
        if (this.f1091h == null) {
            return;
        }
        SearchableInfo searchableInfo = this.f1091h;
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(m21665a(this.f1106x, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(m21655b(this.f1107y, searchableInfo));
            }
        } catch (ActivityNotFoundException e) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }

    /* renamed from: i */
    void m21643i() {
        m21658a(m21652c());
        m21636q();
        if (this.f1082a.hasFocus()) {
            m21641l();
        }
    }

    /* renamed from: k */
    void m21642k() {
        if (this.f1096n.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f1094l.getPaddingLeft();
            Rect rect = new Rect();
            boolean m21389a = C0327av.m21389a(this);
            int dimensionPixelSize = this.f1063E ? resources.getDimensionPixelSize(C0083a.C0087d.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(C0083a.C0087d.abc_dropdownitem_icon_width) : 0;
            this.f1082a.getDropDownBackground().getPadding(rect);
            this.f1082a.setDropDownHorizontalOffset(m21389a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f1082a.setDropDownWidth((dimensionPixelSize + ((this.f1096n.getWidth() + rect.left) + rect.right)) - paddingLeft);
        }
    }

    /* renamed from: l */
    void m21641l() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1082a.refreshAutoCompleteResults();
            return;
        }
        f1058i.m21630a(this.f1082a);
        f1058i.m21628b(this.f1082a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f1076R);
        post(this.f1077S);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m21662a(this.f1082a, this.f1098p);
            this.f1099q.set(this.f1098p.left, 0, this.f1098p.right, i4 - i2);
            if (this.f1097o != null) {
                this.f1097o.m21619a(this.f1099q, this.f1098p);
                return;
            }
            this.f1097o = new C0268f(this.f1099q, this.f1098p, this.f1082a);
            setTouchDelegate(this.f1097o);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int preferredWidth;
        if (m21652c()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                if (this.f1069K <= 0) {
                    preferredWidth = Math.min(getPreferredWidth(), size);
                    break;
                } else {
                    preferredWidth = Math.min(this.f1069K, size);
                    break;
                }
            case 0:
                if (this.f1069K <= 0) {
                    preferredWidth = getPreferredWidth();
                    break;
                } else {
                    preferredWidth = this.f1069K;
                    break;
                }
            case 1073741824:
                preferredWidth = size;
                if (this.f1069K > 0) {
                    preferredWidth = Math.min(this.f1069K, size);
                    break;
                }
                break;
            default:
                preferredWidth = size;
                break;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        switch (mode2) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                size2 = Math.min(getPreferredHeight(), size2);
                break;
            case 0:
                size2 = getPreferredHeight();
                break;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(preferredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0266e)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0266e c0266e = (C0266e) parcelable;
        super.onRestoreInstanceState(c0266e.m20121a());
        m21658a(c0266e.f1127a);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0266e c0266e = new C0266e(super.onSaveInstanceState());
        c0266e.f1127a = m21652c();
        return c0266e;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m21636q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        boolean z = false;
        if (!this.f1068J && isFocusable()) {
            if (!m21652c()) {
                z = this.f1082a.requestFocus(i, rect);
                if (z) {
                    m21658a(false);
                }
            } else {
                z = super.requestFocus(i, rect);
            }
        }
        return z;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1075Q = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m21646f();
        } else {
            m21645g();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f1063E == z) {
            return;
        }
        this.f1063E = z;
        m21658a(z);
        m21635r();
    }

    public void setImeOptions(int i) {
        this.f1082a.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f1082a.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f1069K = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0263b abstractC0263b) {
        this.f1060B = abstractC0263b;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1089f = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0264c abstractC0264c) {
        this.f1059A = abstractC0264c;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1062D = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0265d abstractC0265d) {
        this.f1061C = abstractC0265d;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f1066H = charSequence;
        m21635r();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f1067I = z;
        if (this.f1090g instanceof View$OnClickListenerC0310aj) {
            ((View$OnClickListenerC0310aj) this.f1090g).m21469a(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1091h = searchableInfo;
        if (this.f1091h != null) {
            m21634s();
            m21635r();
        }
        this.f1070L = m21640m();
        if (this.f1070L) {
            this.f1082a.setPrivateImeOptions("nm");
        }
        m21658a(m21652c());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f1065G = z;
        m21658a(m21652c());
    }

    public void setSuggestionsAdapter(AbstractC0394a abstractC0394a) {
        this.f1090g = abstractC0394a;
        this.f1082a.setAdapter(this.f1090g);
    }
}
