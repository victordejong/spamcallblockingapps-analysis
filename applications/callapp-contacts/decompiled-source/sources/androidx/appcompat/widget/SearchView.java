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
import android.util.DisplayMetrics;
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
import androidx.appcompat.a;
import androidx.core.view.v;
import androidx.customview.view.AbsSavedState;
import io.objectbox.model.PropertyFlags;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements androidx.appcompat.view.c {
    static final d r;
    private final ImageView A;
    private final Drawable B;
    private final CharSequence C;
    private b D;
    private a E;
    private View.OnClickListener F;
    private boolean G;
    private boolean H;
    private CharSequence I;
    private boolean J;
    private boolean K;
    private int L;
    private boolean M;
    private CharSequence N;
    private CharSequence O;
    private boolean P;
    private int Q;
    private final Runnable R;
    private Runnable S;
    private final WeakHashMap<String, Drawable.ConstantState> T;
    private final View.OnClickListener U;
    private final TextView.OnEditorActionListener V;
    private final AdapterView.OnItemClickListener W;

    /* renamed from: a  reason: collision with root package name */
    final SearchAutoComplete f991a;
    private final AdapterView.OnItemSelectedListener aa;
    private TextWatcher ab;

    /* renamed from: b  reason: collision with root package name */
    final View f992b;

    /* renamed from: c  reason: collision with root package name */
    final ImageView f993c;

    /* renamed from: d  reason: collision with root package name */
    final ImageView f994d;
    final ImageView e;
    final ImageView f;
    final View g;
    final int h;
    final int i;
    final Intent j;
    final Intent k;
    View.OnFocusChangeListener l;
    c m;
    boolean n;
    androidx.d.a.a o;
    SearchableInfo p;
    Bundle q;
    View.OnKeyListener s;
    private final View t;
    private final View u;
    private e v;
    private Rect w;
    private Rect x;
    private int[] y;
    private int[] z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.SearchView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isIconified;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.isIconified));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: a  reason: collision with root package name */
        SearchView f1005a;

        /* renamed from: b  reason: collision with root package name */
        boolean f1006b;

        /* renamed from: c  reason: collision with root package name */
        final Runnable f1007c;

        /* renamed from: d  reason: collision with root package name */
        private int f1008d;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, a.C0018a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1007c = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public final void run() {
                    SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                    if (searchAutoComplete.f1006b) {
                        ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                        searchAutoComplete.f1006b = false;
                    }
                }
            };
            this.f1008d = getThreshold();
        }

        final void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.r.c(this);
        }

        final void a(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f1006b = false;
                removeCallbacks(this.f1007c);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f1006b = false;
                removeCallbacks(this.f1007c);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f1006b = true;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1008d <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1006b) {
                removeCallbacks(this.f1007c);
                post(this.f1007c);
            }
            return onCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            setMinWidth((int) TypedValue.applyDimension(1, (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : PropertyFlags.INDEX_PARTIAL_SKIP_NULL, displayMetrics));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f1005a.k();
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
                        this.f1005a.clearFocus();
                        a(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f1005a.hasFocus() && getVisibility() == 0) {
                this.f1006b = true;
                if (SearchView.a(getContext())) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1008d = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public interface a {
        boolean a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public interface b {
        boolean a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public interface c {
        boolean a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private Method f1010a;

        /* renamed from: b  reason: collision with root package name */
        private Method f1011b;

        /* renamed from: c  reason: collision with root package name */
        private Method f1012c;

        d() {
            this.f1010a = null;
            this.f1011b = null;
            this.f1012c = null;
            a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1010a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1011b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1012c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        private static void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        final void a(AutoCompleteTextView autoCompleteTextView) {
            a();
            Method method = this.f1010a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        final void b(AutoCompleteTextView autoCompleteTextView) {
            a();
            Method method = this.f1011b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        final void c(AutoCompleteTextView autoCompleteTextView) {
            a();
            Method method = this.f1012c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception e) {
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    static final class e extends TouchDelegate {

        /* renamed from: a  reason: collision with root package name */
        private final View f1013a;
        private final int e;
        private boolean f;

        /* renamed from: b  reason: collision with root package name */
        private final Rect f1014b = new Rect();

        /* renamed from: d  reason: collision with root package name */
        private final Rect f1016d = new Rect();

        /* renamed from: c  reason: collision with root package name */
        private final Rect f1015c = new Rect();

        public e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            a(rect, rect2);
            this.f1013a = view;
        }

        public final void a(Rect rect, Rect rect2) {
            this.f1014b.set(rect);
            this.f1016d.set(rect);
            Rect rect3 = this.f1016d;
            int i = this.e;
            rect3.inset(-i, -i);
            this.f1015c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z2 = true;
            boolean z3 = false;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    boolean z4 = this.f;
                    z2 = z4;
                    if (z4) {
                        z2 = z4;
                        if (!this.f1016d.contains(x, y)) {
                            z2 = z4;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f;
                        this.f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f1014b.contains(x, y)) {
                    this.f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            if (z2) {
                if (!z || this.f1015c.contains(x, y)) {
                    motionEvent.setLocation(x - this.f1015c.left, y - this.f1015c.top);
                } else {
                    motionEvent.setLocation(this.f1013a.getWidth() / 2, this.f1013a.getHeight() / 2);
                }
                z3 = this.f1013a.dispatchTouchEvent(motionEvent);
            }
            return z3;
        }
    }

    static {
        r = Build.VERSION.SDK_INT < 29 ? new d() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0018a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.w = new Rect();
        this.x = new Rect();
        this.y = new int[2];
        this.z = new int[2];
        this.R = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public final void run() {
                SearchView.this.c();
            }
        };
        this.S = new Runnable() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (SearchView.this.o instanceof w) {
                    SearchView.this.o.a((Cursor) null);
                }
            }
        };
        this.T = new WeakHashMap<>();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (view == SearchView.this.f993c) {
                    SearchView.this.j();
                } else if (view == SearchView.this.e) {
                    SearchView.this.i();
                } else if (view == SearchView.this.f994d) {
                    SearchView.this.h();
                } else if (view == SearchView.this.f) {
                    SearchView searchView = SearchView.this;
                    if (searchView.p != null) {
                        SearchableInfo searchableInfo = searchView.p;
                        try {
                            String str = null;
                            String str2 = null;
                            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                                Intent intent = new Intent(searchView.j);
                                ComponentName searchActivity = searchableInfo.getSearchActivity();
                                if (searchActivity != null) {
                                    str2 = searchActivity.flattenToShortString();
                                }
                                intent.putExtra("calling_package", str2);
                                searchView.getContext().startActivity(intent);
                            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                                Intent intent2 = searchView.k;
                                ComponentName searchActivity2 = searchableInfo.getSearchActivity();
                                Intent intent3 = new Intent("android.intent.action.SEARCH");
                                intent3.setComponent(searchActivity2);
                                PendingIntent activity = PendingIntent.getActivity(searchView.getContext(), 0, intent3, 1073741824);
                                Bundle bundle = new Bundle();
                                if (searchView.q != null) {
                                    bundle.putParcelable("app_data", searchView.q);
                                }
                                Intent intent4 = new Intent(intent2);
                                String str3 = "free_form";
                                int i2 = 1;
                                Resources resources = searchView.getResources();
                                if (searchableInfo.getVoiceLanguageModeId() != 0) {
                                    str3 = resources.getString(searchableInfo.getVoiceLanguageModeId());
                                }
                                String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
                                String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
                                if (searchableInfo.getVoiceMaxResults() != 0) {
                                    i2 = searchableInfo.getVoiceMaxResults();
                                }
                                intent4.putExtra("android.speech.extra.LANGUAGE_MODEL", str3);
                                intent4.putExtra("android.speech.extra.PROMPT", string);
                                intent4.putExtra("android.speech.extra.LANGUAGE", string2);
                                intent4.putExtra("android.speech.extra.MAX_RESULTS", i2);
                                if (searchActivity2 != null) {
                                    str = searchActivity2.flattenToShortString();
                                }
                                intent4.putExtra("calling_package", str);
                                intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
                                intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
                                searchView.getContext().startActivity(intent4);
                            }
                        } catch (ActivityNotFoundException e2) {
                            Log.w("SearchView", "Could not find voice search activity");
                        }
                    }
                } else if (view == SearchView.this.f991a) {
                    SearchView.this.l();
                }
            }
        };
        this.U = onClickListener;
        this.s = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (SearchView.this.p == null) {
                    return false;
                }
                if (!SearchView.this.f991a.isPopupShowing() || SearchView.this.f991a.getListSelection() == -1) {
                    if ((TextUtils.getTrimmedLength(SearchView.this.f991a.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                        return false;
                    }
                    view.cancelLongPress();
                    SearchView searchView = SearchView.this;
                    searchView.a(searchView.f991a.getText().toString());
                    return true;
                }
                SearchView searchView2 = SearchView.this;
                if (searchView2.p == null || searchView2.o == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
                    return false;
                }
                if (i2 == 66 || i2 == 84 || i2 == 61) {
                    return searchView2.b(searchView2.f991a.getListSelection());
                }
                if (i2 == 21 || i2 == 22) {
                    searchView2.f991a.setSelection(i2 == 21 ? 0 : searchView2.f991a.length());
                    searchView2.f991a.setListSelection(0);
                    searchView2.f991a.clearListSelection();
                    searchView2.f991a.a();
                    return true;
                } else if (i2 != 19) {
                    return false;
                } else {
                    searchView2.f991a.getListSelection();
                    return false;
                }
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.h();
                return true;
            }
        };
        this.V = onEditorActionListener;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.b(i2);
            }
        };
        this.W = onItemClickListener;
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView searchView = SearchView.this;
                if (searchView.m == null || !searchView.m.a()) {
                    Editable text = searchView.f991a.getText();
                    Cursor a2 = searchView.o.a();
                    if (a2 == null) {
                        return;
                    }
                    if (a2.moveToPosition(i2)) {
                        CharSequence b2 = searchView.o.b(a2);
                        if (b2 != null) {
                            searchView.b(b2);
                        } else {
                            searchView.b(text);
                        }
                    } else {
                        searchView.b(text);
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.aa = onItemSelectedListener;
        this.ab = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.a(charSequence);
            }
        };
        ab a2 = ab.a(context, attributeSet, a.j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(a2.g(a.j.SearchView_layout, a.g.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(a.f.search_src_text);
        this.f991a = searchAutoComplete;
        searchAutoComplete.f1005a = this;
        this.t = findViewById(a.f.search_edit_frame);
        View findViewById = findViewById(a.f.search_plate);
        this.f992b = findViewById;
        View findViewById2 = findViewById(a.f.submit_area);
        this.u = findViewById2;
        ImageView imageView = (ImageView) findViewById(a.f.search_button);
        this.f993c = imageView;
        ImageView imageView2 = (ImageView) findViewById(a.f.search_go_btn);
        this.f994d = imageView2;
        ImageView imageView3 = (ImageView) findViewById(a.f.search_close_btn);
        this.e = imageView3;
        ImageView imageView4 = (ImageView) findViewById(a.f.search_voice_btn);
        this.f = imageView4;
        ImageView imageView5 = (ImageView) findViewById(a.f.search_mag_icon);
        this.A = imageView5;
        v.a(findViewById, a2.a(a.j.SearchView_queryBackground));
        v.a(findViewById2, a2.a(a.j.SearchView_submitBackground));
        imageView.setImageDrawable(a2.a(a.j.SearchView_searchIcon));
        imageView2.setImageDrawable(a2.a(a.j.SearchView_goIcon));
        imageView3.setImageDrawable(a2.a(a.j.SearchView_closeIcon));
        imageView4.setImageDrawable(a2.a(a.j.SearchView_voiceIcon));
        imageView5.setImageDrawable(a2.a(a.j.SearchView_searchIcon));
        this.B = a2.a(a.j.SearchView_searchHintIcon);
        ad.a(imageView, getResources().getString(a.h.abc_searchview_description_search));
        this.h = a2.g(a.j.SearchView_suggestionRowLayout, a.g.abc_search_dropdown_item_icons_2line);
        this.i = a2.g(a.j.SearchView_commitIcon, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(this.ab);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(onItemClickListener);
        searchAutoComplete.setOnItemSelectedListener(onItemSelectedListener);
        searchAutoComplete.setOnKeyListener(this.s);
        searchAutoComplete.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (SearchView.this.l != null) {
                    SearchView.this.l.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(a2.a(a.j.SearchView_iconifiedByDefault, true));
        int e2 = a2.e(a.j.SearchView_android_maxWidth, -1);
        if (e2 != -1) {
            setMaxWidth(e2);
        }
        this.C = a2.c(a.j.SearchView_defaultQueryHint);
        this.I = a2.c(a.j.SearchView_queryHint);
        int a3 = a2.a(a.j.SearchView_android_imeOptions, -1);
        if (a3 != -1) {
            setImeOptions(a3);
        }
        int a4 = a2.a(a.j.SearchView_android_inputType, -1);
        if (a4 != -1) {
            setInputType(a4);
        }
        setFocusable(a2.a(a.j.SearchView_android_focusable, true));
        a2.f1044a.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.j = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.k = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.g = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.5
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView searchView = SearchView.this;
                    if (searchView.g.getWidth() > 1) {
                        Resources resources = searchView.getContext().getResources();
                        int paddingLeft = searchView.f992b.getPaddingLeft();
                        Rect rect = new Rect();
                        boolean a5 = ah.a(searchView);
                        int dimensionPixelSize = searchView.n ? resources.getDimensionPixelSize(a.d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(a.d.abc_dropdownitem_text_padding_left) : 0;
                        searchView.f991a.getDropDownBackground().getPadding(rect);
                        searchView.f991a.setDropDownHorizontalOffset(a5 ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                        searchView.f991a.setDropDownWidth((((searchView.g.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
                    }
                }
            });
        }
        a(this.n);
        t();
    }

    private Intent a(Cursor cursor, int i, String str) {
        int i2;
        String a2;
        try {
            String a3 = w.a(cursor, "suggest_intent_action");
            String str2 = a3;
            if (a3 == null) {
                str2 = this.p.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String a4 = w.a(cursor, "suggest_intent_data");
            String str4 = a4;
            if (a4 == null) {
                str4 = this.p.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (w.a(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(a2);
                }
            }
            return a(str3, str5 == null ? null : Uri.parse(str5), w.a(cursor, "suggest_intent_extra_data"), w.a(cursor, "suggest_intent_query"), 0, null);
        } catch (RuntimeException e2) {
            try {
                i2 = cursor.getPosition();
            } catch (RuntimeException e3) {
                i2 = -1;
            }
            Log.w("SearchView", "Search suggestions cursor at row " + i2 + " returned exception.", e2);
            return null;
        }
    }

    private Intent a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.O);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.q;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.p.getSearchActivity());
        return intent;
    }

    private void a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e2) {
                Log.e("SearchView", "Failed launch activity: ".concat(String.valueOf(intent)), e2);
            }
        }
    }

    private void a(boolean z) {
        this.G = z;
        int i = 0;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f991a.getText());
        this.f993c.setVisibility(i2);
        b(z2);
        this.t.setVisibility(z ? 8 : 0);
        if (this.A.getDrawable() == null || this.n) {
            i = 8;
        }
        this.A.setVisibility(i);
        r();
        c(!z2);
        q();
    }

    static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private void b(boolean z) {
        this.f994d.setVisibility((!this.H || !p() || !hasFocus() || (!z && this.M)) ? 8 : 0);
    }

    private CharSequence c(CharSequence charSequence) {
        if (!this.n || this.B == null) {
            return charSequence;
        }
        int textSize = (int) (this.f991a.getTextSize() * 1.25d);
        this.B.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.B), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private void c(boolean z) {
        int i = 8;
        if (this.M) {
            i = 8;
            if (!this.G) {
                i = 8;
                if (z) {
                    this.f994d.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f.setVisibility(i);
    }

    private CharSequence m() {
        CharSequence charSequence = this.I;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.p;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.C : getContext().getText(this.p.getHintId());
        }
        return charSequence;
    }

    private int n() {
        return getContext().getResources().getDimensionPixelSize(a.d.abc_search_view_preferred_width);
    }

    private int o() {
        return getContext().getResources().getDimensionPixelSize(a.d.abc_search_view_preferred_height);
    }

    private boolean p() {
        return (this.H || this.M) && !this.G;
    }

    private void q() {
        this.u.setVisibility((!p() || !(this.f994d.getVisibility() == 0 || this.f.getVisibility() == 0)) ? 8 : 0);
    }

    private void r() {
        boolean z = !TextUtils.isEmpty(this.f991a.getText());
        int i = 0;
        boolean z2 = true;
        if (!z) {
            z2 = this.n && !this.P;
        }
        ImageView imageView = this.e;
        if (!z2) {
            i = 8;
        }
        imageView.setVisibility(i);
        Drawable drawable = this.e.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void s() {
        post(this.R);
    }

    private void t() {
        CharSequence m = m();
        SearchAutoComplete searchAutoComplete = this.f991a;
        CharSequence charSequence = m;
        if (m == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(c(charSequence));
    }

    @Override // androidx.appcompat.view.c
    public final void a() {
        if (!this.P) {
            this.P = true;
            int imeOptions = this.f991a.getImeOptions();
            this.Q = imeOptions;
            this.f991a.setImeOptions(imeOptions | 33554432);
            this.f991a.setText("");
            setIconified(false);
        }
    }

    final void a(CharSequence charSequence) {
        Editable text = this.f991a.getText();
        this.O = text;
        boolean z = !TextUtils.isEmpty(text);
        b(z);
        c(!z);
        r();
        q();
        if (this.D != null && !TextUtils.equals(charSequence, this.N)) {
            charSequence.toString();
        }
        this.N = charSequence.toString();
    }

    final void a(String str) {
        getContext().startActivity(a("android.intent.action.SEARCH", null, null, str, 0, null));
    }

    @Override // androidx.appcompat.view.c
    public final void b() {
        setQuery("", false);
        clearFocus();
        a(true);
        this.f991a.setImeOptions(this.Q);
        this.P = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(CharSequence charSequence) {
        this.f991a.setText(charSequence);
        this.f991a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    final boolean b(int i) {
        c cVar = this.m;
        if (cVar != null && cVar.b()) {
            return false;
        }
        Cursor a2 = this.o.a();
        if (a2 != null && a2.moveToPosition(i)) {
            a(a(a2, 0, null));
        }
        this.f991a.a(false);
        this.f991a.dismissDropDown();
        return true;
    }

    final void c() {
        int[] iArr = this.f991a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f992b.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.u.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.K = true;
        super.clearFocus();
        this.f991a.clearFocus();
        this.f991a.a(false);
        this.K = false;
    }

    final void h() {
        Editable text = this.f991a.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            b bVar = this.D;
            if (bVar != null) {
                text.toString();
                if (bVar.a()) {
                    return;
                }
            }
            if (this.p != null) {
                a(text.toString());
            }
            this.f991a.a(false);
            this.f991a.dismissDropDown();
        }
    }

    final void i() {
        if (!TextUtils.isEmpty(this.f991a.getText())) {
            this.f991a.setText("");
            this.f991a.requestFocus();
            this.f991a.a(true);
        } else if (this.n) {
            a aVar = this.E;
            if (aVar == null || !aVar.a()) {
                clearFocus();
                a(true);
            }
        }
    }

    final void j() {
        a(false);
        this.f991a.requestFocus();
        this.f991a.a(true);
        View.OnClickListener onClickListener = this.F;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    final void k() {
        a(this.G);
        s();
        if (this.f991a.hasFocus()) {
            l();
        }
    }

    final void l() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f991a.refreshAutoCompleteResults();
            return;
        }
        d dVar = r;
        dVar.a(this.f991a);
        dVar.b(this.f991a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.R);
        post(this.S);
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f991a;
            Rect rect = this.w;
            searchAutoComplete.getLocationInWindow(this.y);
            getLocationInWindow(this.z);
            int[] iArr = this.y;
            int i5 = iArr[1];
            int[] iArr2 = this.z;
            int i6 = i5 - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            rect.set(i7, i6, searchAutoComplete.getWidth() + i7, searchAutoComplete.getHeight() + i6);
            this.x.set(this.w.left, 0, this.w.right, i4 - i2);
            e eVar = this.v;
            if (eVar == null) {
                e eVar2 = new e(this.x, this.w, this.f991a);
                this.v = eVar2;
                setTouchDelegate(eVar2);
                return;
            }
            eVar.a(this.x, this.w);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.G) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.L;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(n(), size);
        } else if (mode == 0) {
            i3 = this.L;
            if (i3 <= 0) {
                i3 = n();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.L;
            i3 = size;
            if (i5 > 0) {
                i3 = Math.min(i5, size);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(o(), size2);
        } else if (mode2 == 0) {
            size2 = o();
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
        a(savedState.isIconified);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = this.G;
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.K || !isFocusable()) {
            return false;
        }
        if (this.G) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f991a.requestFocus(i, rect);
        if (requestFocus) {
            a(false);
        }
        return requestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.q = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            i();
        } else {
            j();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.n != z) {
            this.n = z;
            a(z);
            t();
        }
    }

    public void setImeOptions(int i) {
        this.f991a.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f991a.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.L = i;
        requestLayout();
    }

    public void setOnCloseListener(a aVar) {
        this.E = aVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.l = onFocusChangeListener;
    }

    public void setOnQueryTextListener(b bVar) {
        this.D = bVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.F = onClickListener;
    }

    public void setOnSuggestionListener(c cVar) {
        this.m = cVar;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.f991a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f991a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.O = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            h();
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.I = charSequence;
        t();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.J = z;
        androidx.d.a.a aVar = this.o;
        if (aVar instanceof w) {
            ((w) aVar).f1139a = z ? 2 : 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0108, code lost:
        if (getContext().getPackageManager().resolveActivity(r8, 65536) != null) goto L_0x0110;
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
        this.H = z;
        a(this.G);
    }

    public void setSuggestionsAdapter(androidx.d.a.a aVar) {
        this.o = aVar;
        this.f991a.setAdapter(aVar);
    }
}
