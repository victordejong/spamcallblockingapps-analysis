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
import androidx.appcompat.C0142a;
import androidx.appcompat.view.AbstractC0243c;
import androidx.core.view.C0926v;
import androidx.customview.view.AbsSavedState;
import androidx.p040d.p041a.AbstractC0978a;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC0243c {

    /* renamed from: r */
    static final C0357d f1310r;

    /* renamed from: A */
    private final ImageView f1311A;

    /* renamed from: B */
    private final Drawable f1312B;

    /* renamed from: C */
    private final CharSequence f1313C;

    /* renamed from: D */
    private AbstractC0355b f1314D;

    /* renamed from: E */
    private AbstractC0354a f1315E;

    /* renamed from: F */
    private View.OnClickListener f1316F;

    /* renamed from: G */
    private boolean f1317G;

    /* renamed from: H */
    private boolean f1318H;

    /* renamed from: I */
    private CharSequence f1319I;

    /* renamed from: J */
    private boolean f1320J;

    /* renamed from: K */
    private boolean f1321K;

    /* renamed from: L */
    private int f1322L;

    /* renamed from: M */
    private boolean f1323M;

    /* renamed from: N */
    private CharSequence f1324N;

    /* renamed from: O */
    private CharSequence f1325O;

    /* renamed from: P */
    private boolean f1326P;

    /* renamed from: Q */
    private int f1327Q;

    /* renamed from: R */
    private final Runnable f1328R;

    /* renamed from: S */
    private Runnable f1329S;

    /* renamed from: T */
    private final WeakHashMap<String, Drawable.ConstantState> f1330T;

    /* renamed from: U */
    private final View.OnClickListener f1331U;

    /* renamed from: V */
    private final TextView.OnEditorActionListener f1332V;

    /* renamed from: W */
    private final AdapterView.OnItemClickListener f1333W;

    /* renamed from: a */
    final SearchAutoComplete f1334a;

    /* renamed from: aa */
    private final AdapterView.OnItemSelectedListener f1335aa;

    /* renamed from: ab */
    private TextWatcher f1336ab;

    /* renamed from: b */
    final View f1337b;

    /* renamed from: c */
    final ImageView f1338c;

    /* renamed from: d */
    final ImageView f1339d;

    /* renamed from: e */
    final ImageView f1340e;

    /* renamed from: f */
    final ImageView f1341f;

    /* renamed from: g */
    final View f1342g;

    /* renamed from: h */
    final int f1343h;

    /* renamed from: i */
    final int f1344i;

    /* renamed from: j */
    final Intent f1345j;

    /* renamed from: k */
    final Intent f1346k;

    /* renamed from: l */
    View.OnFocusChangeListener f1347l;

    /* renamed from: m */
    AbstractC0356c f1348m;

    /* renamed from: n */
    boolean f1349n;

    /* renamed from: o */
    AbstractC0978a f1350o;

    /* renamed from: p */
    SearchableInfo f1351p;

    /* renamed from: q */
    Bundle f1352q;

    /* renamed from: s */
    View.OnKeyListener f1353s;

    /* renamed from: t */
    private final View f1354t;

    /* renamed from: u */
    private final View f1355u;

    /* renamed from: v */
    private C0358e f1356v;

    /* renamed from: w */
    private Rect f1357w;

    /* renamed from: x */
    private Rect f1358x;

    /* renamed from: y */
    private int[] f1359y;

    /* renamed from: z */
    private int[] f1360z;

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

        /* renamed from: a */
        SearchView f1371a;

        /* renamed from: b */
        boolean f1372b;

        /* renamed from: c */
        final Runnable f1373c;

        /* renamed from: d */
        private int f1374d;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0142a.C0143a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1373c = new Runnable() { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                @Override // java.lang.Runnable
                public final void run() {
                    SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                    if (searchAutoComplete.f1372b) {
                        ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                        searchAutoComplete.f1372b = false;
                    }
                }
            };
            this.f1374d = getThreshold();
        }

        /* renamed from: a */
        final void m45875a() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.f1310r.m45866c(this);
                return;
            }
            setInputMethodMode(1);
            if (!enoughToFilter()) {
                return;
            }
            showDropDown();
        }

        /* renamed from: a */
        final void m45874a(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z) {
                this.f1372b = false;
                removeCallbacks(this.f1373c);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f1372b = true;
            } else {
                this.f1372b = false;
                removeCallbacks(this.f1373c);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f1374d <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1372b) {
                removeCallbacks(this.f1373c);
                post(this.f1373c);
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
            setMinWidth((int) TypedValue.applyDimension(1, (i < 960 || i2 < 720 || configuration.orientation != 2) ? (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160 : 256, displayMetrics));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f1371a.m45885k();
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
                        this.f1371a.clearFocus();
                        m45874a(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (!z || !this.f1371a.hasFocus() || getVisibility() != 0) {
                return;
            }
            this.f1372b = true;
            if (!SearchView.m45902a(getContext())) {
                return;
            }
            m45875a();
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
            this.f1374d = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public interface AbstractC0354a {
        /* renamed from: a */
        boolean m45873a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public interface AbstractC0355b {
        /* renamed from: a */
        boolean m45872a();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public interface AbstractC0356c {
        /* renamed from: a */
        boolean m45871a();

        /* renamed from: b */
        boolean m45870b();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public static final class C0357d {

        /* renamed from: a */
        private Method f1376a;

        /* renamed from: b */
        private Method f1377b;

        /* renamed from: c */
        private Method f1378c;

        C0357d() {
            this.f1376a = null;
            this.f1377b = null;
            this.f1378c = null;
            m45869a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1376a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1377b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1378c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        private static void m45869a() {
            if (Build.VERSION.SDK_INT < 29) {
                return;
            }
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }

        /* renamed from: a */
        final void m45868a(AutoCompleteTextView autoCompleteTextView) {
            m45869a();
            Method method = this.f1376a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        final void m45867b(AutoCompleteTextView autoCompleteTextView) {
            m45869a();
            Method method = this.f1377b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: c */
        final void m45866c(AutoCompleteTextView autoCompleteTextView) {
            m45869a();
            Method method = this.f1378c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, Boolean.TRUE);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    static final class C0358e extends TouchDelegate {

        /* renamed from: a */
        private final View f1379a;

        /* renamed from: e */
        private final int f1383e;

        /* renamed from: f */
        private boolean f1384f;

        /* renamed from: b */
        private final Rect f1380b = new Rect();

        /* renamed from: d */
        private final Rect f1382d = new Rect();

        /* renamed from: c */
        private final Rect f1381c = new Rect();

        public C0358e(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1383e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m45865a(rect, rect2);
            this.f1379a = view;
        }

        /* renamed from: a */
        public final void m45865a(Rect rect, Rect rect2) {
            this.f1380b.set(rect);
            this.f1382d.set(rect);
            Rect rect3 = this.f1382d;
            int i = this.f1383e;
            rect3.inset(-i, -i);
            this.f1381c.set(rect2);
        }

        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z2 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    boolean z3 = this.f1384f;
                    z2 = z3;
                    if (z3) {
                        z2 = z3;
                        if (!this.f1382d.contains(x, y)) {
                            z2 = z3;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f1384f;
                        this.f1384f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f1380b.contains(x, y)) {
                    this.f1384f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            boolean z4 = false;
            if (z2) {
                if (!z || this.f1381c.contains(x, y)) {
                    motionEvent.setLocation(x - this.f1381c.left, y - this.f1381c.top);
                } else {
                    motionEvent.setLocation(this.f1379a.getWidth() / 2, this.f1379a.getHeight() / 2);
                }
                z4 = this.f1379a.dispatchTouchEvent(motionEvent);
            }
            return z4;
        }
    }

    static {
        f1310r = Build.VERSION.SDK_INT < 29 ? new C0357d() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0142a.C0143a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1357w = new Rect();
        this.f1358x = new Rect();
        this.f1359y = new int[2];
        this.f1360z = new int[2];
        this.f1328R = new Runnable() { // from class: androidx.appcompat.widget.SearchView.1
            @Override // java.lang.Runnable
            public final void run() {
                SearchView.this.m45891c();
            }
        };
        this.f1329S = new Runnable() { // from class: androidx.appcompat.widget.SearchView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (SearchView.this.f1350o instanceof View$OnClickListenerC0423w) {
                    SearchView.this.f1350o.mo43875a((Cursor) null);
                }
            }
        };
        this.f1330T = new WeakHashMap<>();
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: androidx.appcompat.widget.SearchView.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (view == SearchView.this.f1338c) {
                    SearchView.this.m45886j();
                } else if (view == SearchView.this.f1340e) {
                    SearchView.this.m45887i();
                } else if (view == SearchView.this.f1339d) {
                    SearchView.this.m45888h();
                } else if (view != SearchView.this.f1341f) {
                    if (view != SearchView.this.f1334a) {
                        return;
                    }
                    SearchView.this.m45884l();
                } else {
                    SearchView searchView = SearchView.this;
                    if (searchView.f1351p == null) {
                        return;
                    }
                    SearchableInfo searchableInfo = searchView.f1351p;
                    try {
                        String str = null;
                        if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                            Intent intent = new Intent(searchView.f1345j);
                            ComponentName searchActivity = searchableInfo.getSearchActivity();
                            if (searchActivity != null) {
                                str = searchActivity.flattenToShortString();
                            }
                            intent.putExtra("calling_package", str);
                            searchView.getContext().startActivity(intent);
                        } else if (!searchableInfo.getVoiceSearchLaunchRecognizer()) {
                        } else {
                            Intent intent2 = searchView.f1346k;
                            ComponentName searchActivity2 = searchableInfo.getSearchActivity();
                            Intent intent3 = new Intent("android.intent.action.SEARCH");
                            intent3.setComponent(searchActivity2);
                            PendingIntent activity = PendingIntent.getActivity(searchView.getContext(), 0, intent3, 1073741824);
                            Bundle bundle = new Bundle();
                            if (searchView.f1352q != null) {
                                bundle.putParcelable("app_data", searchView.f1352q);
                            }
                            Intent intent4 = new Intent(intent2);
                            String str2 = "free_form";
                            int i2 = 1;
                            Resources resources = searchView.getResources();
                            if (searchableInfo.getVoiceLanguageModeId() != 0) {
                                str2 = resources.getString(searchableInfo.getVoiceLanguageModeId());
                            }
                            String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
                            String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
                            if (searchableInfo.getVoiceMaxResults() != 0) {
                                i2 = searchableInfo.getVoiceMaxResults();
                            }
                            intent4.putExtra("android.speech.extra.LANGUAGE_MODEL", str2);
                            intent4.putExtra("android.speech.extra.PROMPT", string);
                            intent4.putExtra("android.speech.extra.LANGUAGE", string2);
                            intent4.putExtra("android.speech.extra.MAX_RESULTS", i2);
                            intent4.putExtra("calling_package", searchActivity2 == null ? null : searchActivity2.flattenToShortString());
                            intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
                            intent4.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
                            searchView.getContext().startActivity(intent4);
                        }
                    } catch (ActivityNotFoundException e) {
                        Log.w("SearchView", "Could not find voice search activity");
                    }
                }
            }
        };
        this.f1331U = onClickListener;
        this.f1353s = new View.OnKeyListener() { // from class: androidx.appcompat.widget.SearchView.7
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (SearchView.this.f1351p == null) {
                    return false;
                }
                if (!SearchView.this.f1334a.isPopupShowing() || SearchView.this.f1334a.getListSelection() == -1) {
                    if ((TextUtils.getTrimmedLength(SearchView.this.f1334a.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                        return false;
                    }
                    view.cancelLongPress();
                    SearchView searchView = SearchView.this;
                    searchView.m45898a(searchView.f1334a.getText().toString());
                    return true;
                }
                SearchView searchView2 = SearchView.this;
                if (searchView2.f1351p == null || searchView2.f1350o == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
                    return false;
                }
                if (i2 == 66 || i2 == 84 || i2 == 61) {
                    return searchView2.m45894b(searchView2.f1334a.getListSelection());
                }
                if (i2 != 21 && i2 != 22) {
                    if (i2 != 19) {
                        return false;
                    }
                    searchView2.f1334a.getListSelection();
                    return false;
                }
                searchView2.f1334a.setSelection(i2 == 21 ? 0 : searchView2.f1334a.length());
                searchView2.f1334a.setListSelection(0);
                searchView2.f1334a.clearListSelection();
                searchView2.f1334a.m45875a();
                return true;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener() { // from class: androidx.appcompat.widget.SearchView.8
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                SearchView.this.m45888h();
                return true;
            }
        };
        this.f1332V = onEditorActionListener;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.widget.SearchView.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView.this.m45894b(i2);
            }
        };
        this.f1333W = onItemClickListener;
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.SearchView.10
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                SearchView searchView = SearchView.this;
                if (searchView.f1348m == null || !searchView.f1348m.m45871a()) {
                    Editable text = searchView.f1334a.getText();
                    Cursor mo43876a = searchView.f1350o.mo43876a();
                    if (mo43876a == null) {
                        return;
                    }
                    if (!mo43876a.moveToPosition(i2)) {
                        searchView.m45893b(text);
                        return;
                    }
                    CharSequence mo43873b = searchView.f1350o.mo43873b(mo43876a);
                    if (mo43873b != null) {
                        searchView.m45893b(mo43873b);
                    } else {
                        searchView.m45893b(text);
                    }
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public final void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.f1335aa = onItemSelectedListener;
        this.f1336ab = new TextWatcher() { // from class: androidx.appcompat.widget.SearchView.2
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                SearchView.this.m45899a(charSequence);
            }
        };
        C0370ab m45804a = C0370ab.m45804a(context, attributeSet, C0142a.C0152j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(m45804a.m45792g(C0142a.C0152j.SearchView_layout, C0142a.C0149g.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C0142a.C0148f.search_src_text);
        this.f1334a = searchAutoComplete;
        searchAutoComplete.f1371a = this;
        this.f1354t = findViewById(C0142a.C0148f.search_edit_frame);
        View findViewById = findViewById(C0142a.C0148f.search_plate);
        this.f1337b = findViewById;
        View findViewById2 = findViewById(C0142a.C0148f.submit_area);
        this.f1355u = findViewById2;
        ImageView imageView = (ImageView) findViewById(C0142a.C0148f.search_button);
        this.f1338c = imageView;
        ImageView imageView2 = (ImageView) findViewById(C0142a.C0148f.search_go_btn);
        this.f1339d = imageView2;
        ImageView imageView3 = (ImageView) findViewById(C0142a.C0148f.search_close_btn);
        this.f1340e = imageView3;
        ImageView imageView4 = (ImageView) findViewById(C0142a.C0148f.search_voice_btn);
        this.f1341f = imageView4;
        ImageView imageView5 = (ImageView) findViewById(C0142a.C0148f.search_mag_icon);
        this.f1311A = imageView5;
        C0926v.m44128a(findViewById, m45804a.m45810a(C0142a.C0152j.SearchView_queryBackground));
        C0926v.m44128a(findViewById2, m45804a.m45810a(C0142a.C0152j.SearchView_submitBackground));
        imageView.setImageDrawable(m45804a.m45810a(C0142a.C0152j.SearchView_searchIcon));
        imageView2.setImageDrawable(m45804a.m45810a(C0142a.C0152j.SearchView_goIcon));
        imageView3.setImageDrawable(m45804a.m45810a(C0142a.C0152j.SearchView_closeIcon));
        imageView4.setImageDrawable(m45804a.m45810a(C0142a.C0152j.SearchView_voiceIcon));
        imageView5.setImageDrawable(m45804a.m45810a(C0142a.C0152j.SearchView_searchIcon));
        this.f1312B = m45804a.m45810a(C0142a.C0152j.SearchView_searchHintIcon);
        C0374ad.m45785a(imageView, getResources().getString(C0142a.C0150h.abc_searchview_description_search));
        this.f1343h = m45804a.m45792g(C0142a.C0152j.SearchView_suggestionRowLayout, C0142a.C0149g.abc_search_dropdown_item_icons_2line);
        this.f1344i = m45804a.m45792g(C0142a.C0152j.SearchView_commitIcon, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(this.f1336ab);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(onItemClickListener);
        searchAutoComplete.setOnItemSelectedListener(onItemSelectedListener);
        searchAutoComplete.setOnKeyListener(this.f1353s);
        searchAutoComplete.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: androidx.appcompat.widget.SearchView.4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                if (SearchView.this.f1347l != null) {
                    SearchView.this.f1347l.onFocusChange(SearchView.this, z);
                }
            }
        });
        setIconifiedByDefault(m45804a.m45807a(C0142a.C0152j.SearchView_iconifiedByDefault, true));
        int m45796e = m45804a.m45796e(C0142a.C0152j.SearchView_android_maxWidth, -1);
        if (m45796e != -1) {
            setMaxWidth(m45796e);
        }
        this.f1313C = m45804a.m45801c(C0142a.C0152j.SearchView_defaultQueryHint);
        this.f1319I = m45804a.m45801c(C0142a.C0152j.SearchView_queryHint);
        int m45809a = m45804a.m45809a(C0142a.C0152j.SearchView_android_imeOptions, -1);
        if (m45809a != -1) {
            setImeOptions(m45809a);
        }
        int m45809a2 = m45804a.m45809a(C0142a.C0152j.SearchView_android_inputType, -1);
        if (m45809a2 != -1) {
            setInputType(m45809a2);
        }
        setFocusable(m45804a.m45807a(C0142a.C0152j.SearchView_android_focusable, true));
        m45804a.f1491a.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f1345j = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f1346k = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f1342g = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: androidx.appcompat.widget.SearchView.5
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    SearchView searchView = SearchView.this;
                    if (searchView.f1342g.getWidth() > 1) {
                        Resources resources = searchView.getContext().getResources();
                        int paddingLeft = searchView.f1337b.getPaddingLeft();
                        Rect rect = new Rect();
                        boolean m45770a = C0380ah.m45770a(searchView);
                        int dimensionPixelSize = searchView.f1349n ? resources.getDimensionPixelSize(C0142a.C0146d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C0142a.C0146d.abc_dropdownitem_text_padding_left) : 0;
                        searchView.f1334a.getDropDownBackground().getPadding(rect);
                        searchView.f1334a.setDropDownHorizontalOffset(m45770a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                        searchView.f1334a.setDropDownWidth((((searchView.f1342g.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
                    }
                }
            });
        }
        m45896a(this.f1349n);
        m45876t();
    }

    /* renamed from: a */
    private Intent m45900a(Cursor cursor, int i, String str) {
        int i2;
        String m45582a;
        try {
            String m45582a2 = View$OnClickListenerC0423w.m45582a(cursor, "suggest_intent_action");
            String str2 = m45582a2;
            if (m45582a2 == null) {
                str2 = this.f1351p.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String m45582a3 = View$OnClickListenerC0423w.m45582a(cursor, "suggest_intent_data");
            String str4 = m45582a3;
            if (m45582a3 == null) {
                str4 = this.f1351p.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (View$OnClickListenerC0423w.m45582a(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(m45582a);
                }
            }
            return m45897a(str3, str5 == null ? null : Uri.parse(str5), View$OnClickListenerC0423w.m45582a(cursor, "suggest_intent_extra_data"), View$OnClickListenerC0423w.m45582a(cursor, "suggest_intent_query"), 0, null);
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
    private Intent m45897a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1325O);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1352q;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f1351p.getSearchActivity());
        return intent;
    }

    /* renamed from: a */
    private void m45901a(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e) {
            Log.e("SearchView", "Failed launch activity: ".concat(String.valueOf(intent)), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r4.f1349n != false) goto L14;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m45896a(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.f1317G = r1
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
            androidx.appcompat.widget.SearchView$SearchAutoComplete r0 = r0.f1334a
            android.text.Editable r0 = r0.getText()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r4
            android.widget.ImageView r0 = r0.f1338c
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r1 = r8
            r0.m45892b(r1)
            r0 = r4
            android.view.View r0 = r0.f1354t
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
            android.widget.ImageView r0 = r0.f1311A
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L5a
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f1349n
            if (r0 == 0) goto L5d
        L5a:
            r0 = 8
            r7 = r0
        L5d:
            r0 = r4
            android.widget.ImageView r0 = r0.f1311A
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r0.m45878r()
            r0 = r4
            r1 = r8
            r2 = 1
            r1 = r1 ^ r2
            r0.m45889c(r1)
            r0 = r4
            r0.m45879q()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m45896a(boolean):void");
    }

    /* renamed from: a */
    static boolean m45902a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    /* renamed from: b */
    private void m45892b(boolean z) {
        this.f1339d.setVisibility((!this.f1318H || !m45880p() || !hasFocus() || (!z && this.f1323M)) ? 8 : 0);
    }

    /* renamed from: c */
    private CharSequence m45890c(CharSequence charSequence) {
        if (!this.f1349n || this.f1312B == null) {
            return charSequence;
        }
        int textSize = (int) (this.f1334a.getTextSize() * 1.25d);
        this.f1312B.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1312B), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    /* renamed from: c */
    private void m45889c(boolean z) {
        int i = 8;
        if (this.f1323M) {
            i = 8;
            if (!this.f1317G) {
                i = 8;
                if (z) {
                    this.f1339d.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f1341f.setVisibility(i);
    }

    /* renamed from: m */
    private CharSequence m45883m() {
        CharSequence charSequence = this.f1319I;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f1351p;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f1313C : getContext().getText(this.f1351p.getHintId());
        }
        return charSequence;
    }

    /* renamed from: n */
    private int m45882n() {
        return getContext().getResources().getDimensionPixelSize(C0142a.C0146d.abc_search_view_preferred_width);
    }

    /* renamed from: o */
    private int m45881o() {
        return getContext().getResources().getDimensionPixelSize(C0142a.C0146d.abc_search_view_preferred_height);
    }

    /* renamed from: p */
    private boolean m45880p() {
        return (this.f1318H || this.f1323M) && !this.f1317G;
    }

    /* renamed from: q */
    private void m45879q() {
        this.f1355u.setVisibility((!m45880p() || !(this.f1339d.getVisibility() == 0 || this.f1341f.getVisibility() == 0)) ? 8 : 0);
    }

    /* renamed from: r */
    private void m45878r() {
        boolean z = !TextUtils.isEmpty(this.f1334a.getText());
        boolean z2 = true;
        if (!z) {
            z2 = this.f1349n && !this.f1326P;
        }
        this.f1340e.setVisibility(z2 ? 0 : 8);
        Drawable drawable = this.f1340e.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    /* renamed from: s */
    private void m45877s() {
        post(this.f1328R);
    }

    /* renamed from: t */
    private void m45876t() {
        CharSequence m45883m = m45883m();
        SearchAutoComplete searchAutoComplete = this.f1334a;
        CharSequence charSequence = m45883m;
        if (m45883m == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m45890c(charSequence));
    }

    @Override // androidx.appcompat.view.AbstractC0243c
    /* renamed from: a */
    public final void mo45903a() {
        if (this.f1326P) {
            return;
        }
        this.f1326P = true;
        int imeOptions = this.f1334a.getImeOptions();
        this.f1327Q = imeOptions;
        this.f1334a.setImeOptions(imeOptions | 33554432);
        this.f1334a.setText("");
        setIconified(false);
    }

    /* renamed from: a */
    final void m45899a(CharSequence charSequence) {
        Editable text = this.f1334a.getText();
        this.f1325O = text;
        boolean z = !TextUtils.isEmpty(text);
        m45892b(z);
        m45889c(!z);
        m45878r();
        m45879q();
        if (this.f1314D != null && !TextUtils.equals(charSequence, this.f1324N)) {
            charSequence.toString();
        }
        this.f1324N = charSequence.toString();
    }

    /* renamed from: a */
    final void m45898a(String str) {
        getContext().startActivity(m45897a("android.intent.action.SEARCH", null, null, str, 0, null));
    }

    @Override // androidx.appcompat.view.AbstractC0243c
    /* renamed from: b */
    public final void mo45895b() {
        setQuery("", false);
        clearFocus();
        m45896a(true);
        this.f1334a.setImeOptions(this.f1327Q);
        this.f1326P = false;
    }

    /* renamed from: b */
    public final void m45893b(CharSequence charSequence) {
        this.f1334a.setText(charSequence);
        this.f1334a.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: b */
    final boolean m45894b(int i) {
        AbstractC0356c abstractC0356c = this.f1348m;
        if (abstractC0356c == null || !abstractC0356c.m45870b()) {
            Cursor mo43876a = this.f1350o.mo43876a();
            if (mo43876a != null && mo43876a.moveToPosition(i)) {
                m45901a(m45900a(mo43876a, 0, null));
            }
            this.f1334a.m45874a(false);
            this.f1334a.dismissDropDown();
            return true;
        }
        return false;
    }

    /* renamed from: c */
    final void m45891c() {
        int[] iArr = this.f1334a.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.f1337b.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1355u.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f1321K = true;
        super.clearFocus();
        this.f1334a.clearFocus();
        this.f1334a.m45874a(false);
        this.f1321K = false;
    }

    /* renamed from: h */
    final void m45888h() {
        Editable text = this.f1334a.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        AbstractC0355b abstractC0355b = this.f1314D;
        if (abstractC0355b != null) {
            text.toString();
            if (abstractC0355b.m45872a()) {
                return;
            }
        }
        if (this.f1351p != null) {
            m45898a(text.toString());
        }
        this.f1334a.m45874a(false);
        this.f1334a.dismissDropDown();
    }

    /* renamed from: i */
    final void m45887i() {
        if (!TextUtils.isEmpty(this.f1334a.getText())) {
            this.f1334a.setText("");
            this.f1334a.requestFocus();
            this.f1334a.m45874a(true);
        } else if (!this.f1349n) {
        } else {
            AbstractC0354a abstractC0354a = this.f1315E;
            if (abstractC0354a != null && abstractC0354a.m45873a()) {
                return;
            }
            clearFocus();
            m45896a(true);
        }
    }

    /* renamed from: j */
    final void m45886j() {
        m45896a(false);
        this.f1334a.requestFocus();
        this.f1334a.m45874a(true);
        View.OnClickListener onClickListener = this.f1316F;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: k */
    final void m45885k() {
        m45896a(this.f1317G);
        m45877s();
        if (this.f1334a.hasFocus()) {
            m45884l();
        }
    }

    /* renamed from: l */
    final void m45884l() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f1334a.refreshAutoCompleteResults();
            return;
        }
        C0357d c0357d = f1310r;
        c0357d.m45868a(this.f1334a);
        c0357d.m45867b(this.f1334a);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f1328R);
        post(this.f1329S);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f1334a;
            Rect rect = this.f1357w;
            searchAutoComplete.getLocationInWindow(this.f1359y);
            getLocationInWindow(this.f1360z);
            int[] iArr = this.f1359y;
            int i5 = iArr[1];
            int[] iArr2 = this.f1360z;
            int i6 = i5 - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            rect.set(i7, i6, searchAutoComplete.getWidth() + i7, searchAutoComplete.getHeight() + i6);
            this.f1358x.set(this.f1357w.left, 0, this.f1357w.right, i4 - i2);
            C0358e c0358e = this.f1356v;
            if (c0358e != null) {
                c0358e.m45865a(this.f1358x, this.f1357w);
                return;
            }
            C0358e c0358e2 = new C0358e(this.f1358x, this.f1357w, this.f1334a);
            this.f1356v = c0358e2;
            setTouchDelegate(c0358e2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.f1317G) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f1322L;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(m45882n(), size);
        } else if (mode == 0) {
            i3 = this.f1322L;
            if (i3 <= 0) {
                i3 = m45882n();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f1322L;
            i3 = size;
            if (i5 > 0) {
                i3 = Math.min(i5, size);
            }
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(m45881o(), size2);
        } else if (mode2 == 0) {
            size2 = m45881o();
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
        m45896a(savedState.isIconified);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = this.f1317G;
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m45877s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (!this.f1321K && isFocusable()) {
            if (this.f1317G) {
                return super.requestFocus(i, rect);
            }
            boolean requestFocus = this.f1334a.requestFocus(i, rect);
            if (requestFocus) {
                m45896a(false);
            }
            return requestFocus;
        }
        return false;
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1352q = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m45887i();
        } else {
            m45886j();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f1349n == z) {
            return;
        }
        this.f1349n = z;
        m45896a(z);
        m45876t();
    }

    public void setImeOptions(int i) {
        this.f1334a.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f1334a.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f1322L = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0354a abstractC0354a) {
        this.f1315E = abstractC0354a;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f1347l = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0355b abstractC0355b) {
        this.f1314D = abstractC0355b;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f1316F = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0356c abstractC0356c) {
        this.f1348m = abstractC0356c;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.f1334a.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f1334a;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f1325O = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m45888h();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f1319I = charSequence;
        m45876t();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f1320J = z;
        AbstractC0978a abstractC0978a = this.f1350o;
        if (abstractC0978a instanceof View$OnClickListenerC0423w) {
            ((View$OnClickListenerC0423w) abstractC0978a).f1664a = z ? 2 : 1;
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
        this.f1318H = z;
        m45896a(this.f1317G);
    }

    public void setSuggestionsAdapter(AbstractC0978a abstractC0978a) {
        this.f1350o = abstractC0978a;
        this.f1334a.setAdapter(abstractC0978a);
    }
}
