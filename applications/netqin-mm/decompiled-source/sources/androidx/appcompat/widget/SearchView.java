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
import androidx.customview.view.AbsSavedState;
import com.applovin.sdk.AppLovinEventParameters;
import com.google.common.collect.MapMakerInternalMap;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p012b.p016b.C0574a;
import p012b.p016b.C0577d;
import p012b.p016b.C0579f;
import p012b.p016b.C0580g;
import p012b.p016b.C0581h;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.AbstractC0624c;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0697h0;
import p012b.p016b.p026q.C0708l0;
import p012b.p016b.p026q.View$OnClickListenerC0742z;
import p012b.p042i.p054p.C1002u;
import p012b.p057j.p058a.AbstractC1037a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC0624c {

    /* renamed from: q0 */
    public static final C0166n f671q0;

    /* renamed from: A */
    public Rect f672A;

    /* renamed from: B */
    public int[] f673B;

    /* renamed from: C */
    public int[] f674C;

    /* renamed from: D */
    public final ImageView f675D;

    /* renamed from: E */
    public final Drawable f676E;

    /* renamed from: F */
    public final int f677F;

    /* renamed from: G */
    public final int f678G;

    /* renamed from: H */
    public final Intent f679H;

    /* renamed from: I */
    public final Intent f680I;

    /* renamed from: J */
    public final CharSequence f681J;

    /* renamed from: K */
    public AbstractC0164l f682K;

    /* renamed from: L */
    public AbstractC0163k f683L;

    /* renamed from: M */
    public View.OnFocusChangeListener f684M;

    /* renamed from: N */
    public AbstractC0165m f685N;

    /* renamed from: O */
    public View.OnClickListener f686O;

    /* renamed from: P */
    public boolean f687P;

    /* renamed from: Q */
    public boolean f688Q;

    /* renamed from: R */
    public AbstractC1037a f689R;

    /* renamed from: S */
    public boolean f690S;

    /* renamed from: T */
    public CharSequence f691T;

    /* renamed from: U */
    public boolean f692U;

    /* renamed from: V */
    public boolean f693V;

    /* renamed from: W */
    public int f694W;

    /* renamed from: a0 */
    public boolean f695a0;

    /* renamed from: b0 */
    public CharSequence f696b0;

    /* renamed from: c0 */
    public CharSequence f697c0;

    /* renamed from: d0 */
    public boolean f698d0;

    /* renamed from: e0 */
    public int f699e0;

    /* renamed from: f0 */
    public SearchableInfo f700f0;

    /* renamed from: g0 */
    public Bundle f701g0;

    /* renamed from: h0 */
    public final Runnable f702h0;

    /* renamed from: i0 */
    public Runnable f703i0;

    /* renamed from: j0 */
    public final WeakHashMap<String, Drawable.ConstantState> f704j0;

    /* renamed from: k0 */
    public final View.OnClickListener f705k0;

    /* renamed from: l0 */
    public View.OnKeyListener f706l0;

    /* renamed from: m0 */
    public final TextView.OnEditorActionListener f707m0;

    /* renamed from: n0 */
    public final AdapterView.OnItemClickListener f708n0;

    /* renamed from: o0 */
    public final AdapterView.OnItemSelectedListener f709o0;

    /* renamed from: p */
    public final SearchAutoComplete f710p;

    /* renamed from: p0 */
    public TextWatcher f711p0;

    /* renamed from: q */
    public final View f712q;

    /* renamed from: r */
    public final View f713r;

    /* renamed from: s */
    public final View f714s;

    /* renamed from: t */
    public final ImageView f715t;

    /* renamed from: u */
    public final ImageView f716u;

    /* renamed from: v */
    public final ImageView f717v;

    /* renamed from: w */
    public final ImageView f718w;

    /* renamed from: x */
    public final View f719x;

    /* renamed from: y */
    public C0167o f720y;

    /* renamed from: z */
    public Rect f721z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0151a();

        /* renamed from: c */
        public boolean f722c;

        /* renamed from: androidx.appcompat.widget.SearchView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState$a.class */
        public class C0151a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f722c = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f722c + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.f722c));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: d */
        public int f723d;

        /* renamed from: e */
        public SearchView f724e;

        /* renamed from: f */
        public boolean f725f;

        /* renamed from: g */
        public final Runnable f726g;

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
        public class RunnableC0152a implements Runnable {
            public RunnableC0152a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete.this.m38900c();
            }
        }

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, C0574a.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f726g = new RunnableC0152a();
            this.f723d = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i >= 960 && i2 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i < 600) {
                return (i < 640 || i2 < 480) ? 160 : 192;
            }
            return 192;
        }

        /* renamed from: a */
        public void m38902a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            SearchView.f671q0.m38892c(this);
        }

        /* renamed from: b */
        public boolean m38901b() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        /* renamed from: c */
        public void m38900c() {
            if (this.f725f) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                this.f725f = false;
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.f723d <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f725f) {
                removeCallbacks(this.f726g);
                post(this.f726g);
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
            this.f724e.m38910l();
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
                        this.f724e.clearFocus();
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
            if (z && this.f724e.hasFocus() && getVisibility() == 0) {
                this.f725f = true;
                if (SearchView.m38937a(getContext())) {
                    m38902a();
                }
            }
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
                this.f725f = false;
                removeCallbacks(this.f726g);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (inputMethodManager.isActive(this)) {
                this.f725f = false;
                removeCallbacks(this.f726g);
                inputMethodManager.showSoftInput(this, 0);
            } else {
                this.f725f = true;
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f724e = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f723d = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public class C0153a implements TextWatcher {
        public C0153a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.m38922c(charSequence);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public class RunnableC0154b implements Runnable {
        public RunnableC0154b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m38906p();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public class RunnableC0155c implements Runnable {
        public RunnableC0155c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC1037a aVar = SearchView.this.f689R;
            if (aVar instanceof View$OnClickListenerC0742z) {
                aVar.mo35078a((Cursor) null);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public class View$OnFocusChangeListenerC0156d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0156d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f684M;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    public class View$OnLayoutChangeListenerC0157e implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC0157e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView.this.m38923c();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
    public class View$OnClickListenerC0158f implements View.OnClickListener {
        public View$OnClickListenerC0158f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f715t) {
                searchView.m38912j();
            } else if (view == searchView.f717v) {
                searchView.m38913i();
            } else if (view == searchView.f716u) {
                searchView.m38911k();
            } else if (view == searchView.f718w) {
                searchView.m38909m();
            } else if (view == searchView.f710p) {
                searchView.m38918e();
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
    public class View$OnKeyListenerC0159g implements View.OnKeyListener {
        public View$OnKeyListenerC0159g() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f700f0 == null) {
                return false;
            }
            if (searchView.f710p.isPopupShowing() && SearchView.this.f710p.getListSelection() != -1) {
                return SearchView.this.m38933a(view, i, keyEvent);
            }
            if (SearchView.this.f710p.m38901b() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.m38938a(0, (String) null, searchView2.f710p.getText().toString());
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
    public class C0160h implements TextView.OnEditorActionListener {
        public C0160h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m38911k();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$i.class */
    public class C0161i implements AdapterView.OnItemClickListener {
        public C0161i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m38927b(i, 0, null);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
    public class C0162j implements AdapterView.OnItemSelectedListener {
        public C0162j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m38919d(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$k.class */
    public interface AbstractC0163k {
        boolean onClose();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$l.class */
    public interface AbstractC0164l {
        /* renamed from: a */
        boolean m38899a(String str);

        /* renamed from: b */
        boolean m38898b(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$m.class */
    public interface AbstractC0165m {
        /* renamed from: a */
        boolean m38897a(int i);

        /* renamed from: b */
        boolean m38896b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$n */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
    public static class C0166n {

        /* renamed from: a */
        public Method f738a;

        /* renamed from: b */
        public Method f739b;

        /* renamed from: c */
        public Method f740c;

        public C0166n() {
            this.f738a = null;
            this.f739b = null;
            this.f740c = null;
            m38895a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f738a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f739b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f740c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        public static void m38895a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }

        /* renamed from: a */
        public void m38894a(AutoCompleteTextView autoCompleteTextView) {
            m38895a();
            Method method = this.f739b;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: b */
        public void m38893b(AutoCompleteTextView autoCompleteTextView) {
            m38895a();
            Method method = this.f738a;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        /* renamed from: c */
        public void m38892c(AutoCompleteTextView autoCompleteTextView) {
            m38895a();
            Method method = this.f740c;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, true);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$o */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o.class */
    public static class C0167o extends TouchDelegate {

        /* renamed from: a */
        public final View f741a;

        /* renamed from: e */
        public final int f745e;

        /* renamed from: f */
        public boolean f746f;

        /* renamed from: b */
        public final Rect f742b = new Rect();

        /* renamed from: d */
        public final Rect f744d = new Rect();

        /* renamed from: c */
        public final Rect f743c = new Rect();

        public C0167o(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f745e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m38891a(rect, rect2);
            this.f741a = view;
        }

        /* renamed from: a */
        public void m38891a(Rect rect, Rect rect2) {
            this.f742b.set(rect);
            this.f744d.set(rect);
            Rect rect3 = this.f744d;
            int i = this.f745e;
            rect3.inset(-i, -i);
            this.f743c.set(rect2);
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
                    boolean z4 = this.f746f;
                    z2 = z4;
                    if (z4) {
                        z2 = z4;
                        if (!this.f744d.contains(x, y)) {
                            z2 = z4;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f746f;
                        this.f746f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f742b.contains(x, y)) {
                    this.f746f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            if (z2) {
                if (!z || this.f743c.contains(x, y)) {
                    Rect rect = this.f743c;
                    motionEvent.setLocation(x - rect.left, y - rect.top);
                } else {
                    motionEvent.setLocation(this.f741a.getWidth() / 2, this.f741a.getHeight() / 2);
                }
                z3 = this.f741a.dispatchTouchEvent(motionEvent);
            }
            return z3;
        }
    }

    static {
        f671q0 = Build.VERSION.SDK_INT < 29 ? new C0166n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f721z = new Rect();
        this.f672A = new Rect();
        this.f673B = new int[2];
        this.f674C = new int[2];
        this.f702h0 = new RunnableC0154b();
        this.f703i0 = new RunnableC0155c();
        this.f704j0 = new WeakHashMap<>();
        this.f705k0 = new View$OnClickListenerC0158f();
        this.f706l0 = new View$OnKeyListenerC0159g();
        this.f707m0 = new C0160h();
        this.f708n0 = new C0161i();
        this.f709o0 = new C0162j();
        this.f711p0 = new C0153a();
        C0691f0 a = C0691f0.m36414a(context, attributeSet, C0583j.SearchView, i, 0);
        LayoutInflater.from(context).inflate(a.m36401g(C0583j.SearchView_layout, C0580g.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C0579f.search_src_text);
        this.f710p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f712q = findViewById(C0579f.search_edit_frame);
        this.f713r = findViewById(C0579f.search_plate);
        this.f714s = findViewById(C0579f.submit_area);
        this.f715t = (ImageView) findViewById(C0579f.search_button);
        this.f716u = (ImageView) findViewById(C0579f.search_go_btn);
        this.f717v = (ImageView) findViewById(C0579f.search_close_btn);
        this.f718w = (ImageView) findViewById(C0579f.search_voice_btn);
        this.f675D = (ImageView) findViewById(C0579f.search_mag_icon);
        C1002u.m35240a(this.f713r, a.m36412b(C0583j.SearchView_queryBackground));
        C1002u.m35240a(this.f714s, a.m36412b(C0583j.SearchView_submitBackground));
        this.f715t.setImageDrawable(a.m36412b(C0583j.SearchView_searchIcon));
        this.f716u.setImageDrawable(a.m36412b(C0583j.SearchView_goIcon));
        this.f717v.setImageDrawable(a.m36412b(C0583j.SearchView_closeIcon));
        this.f718w.setImageDrawable(a.m36412b(C0583j.SearchView_voiceIcon));
        this.f675D.setImageDrawable(a.m36412b(C0583j.SearchView_searchIcon));
        this.f676E = a.m36412b(C0583j.SearchView_searchHintIcon);
        C0697h0.m36376a(this.f715t, getResources().getString(C0581h.abc_searchview_description_search));
        this.f677F = a.m36401g(C0583j.SearchView_suggestionRowLayout, C0580g.abc_search_dropdown_item_icons_2line);
        this.f678G = a.m36401g(C0583j.SearchView_commitIcon, 0);
        this.f715t.setOnClickListener(this.f705k0);
        this.f717v.setOnClickListener(this.f705k0);
        this.f716u.setOnClickListener(this.f705k0);
        this.f718w.setOnClickListener(this.f705k0);
        this.f710p.setOnClickListener(this.f705k0);
        this.f710p.addTextChangedListener(this.f711p0);
        this.f710p.setOnEditorActionListener(this.f707m0);
        this.f710p.setOnItemClickListener(this.f708n0);
        this.f710p.setOnItemSelectedListener(this.f709o0);
        this.f710p.setOnKeyListener(this.f706l0);
        this.f710p.setOnFocusChangeListener(new View$OnFocusChangeListenerC0156d());
        setIconifiedByDefault(a.m36417a(C0583j.SearchView_iconifiedByDefault, true));
        int c = a.m36409c(C0583j.SearchView_android_maxWidth, -1);
        if (c != -1) {
            setMaxWidth(c);
        }
        this.f681J = a.m36406e(C0583j.SearchView_defaultQueryHint);
        this.f691T = a.m36406e(C0583j.SearchView_queryHint);
        int d = a.m36407d(C0583j.SearchView_android_imeOptions, -1);
        if (d != -1) {
            setImeOptions(d);
        }
        int d2 = a.m36407d(C0583j.SearchView_android_inputType, -1);
        if (d2 != -1) {
            setInputType(d2);
        }
        setFocusable(a.m36417a(C0583j.SearchView_android_focusable, true));
        a.m36413b();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f679H = intent;
        intent.addFlags(268435456);
        this.f679H.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f680I = intent2;
        intent2.addFlags(268435456);
        View findViewById = findViewById(this.f710p.getDropDownAnchor());
        this.f719x = findViewById;
        if (findViewById != null) {
            findViewById.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0157e());
        }
        m38924b(this.f687P);
        m38905q();
    }

    /* renamed from: a */
    public static boolean m38937a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0577d.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0577d.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        this.f710p.setText(charSequence);
        this.f710p.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: a */
    public final Intent m38935a(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f701g0;
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

    /* renamed from: a */
    public final Intent m38934a(Cursor cursor, int i, String str) {
        int i2;
        String a;
        try {
            String a2 = View$OnClickListenerC0742z.m36162a(cursor, "suggest_intent_action");
            String str2 = a2;
            if (a2 == null) {
                str2 = this.f700f0.getSuggestIntentAction();
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = "android.intent.action.SEARCH";
            }
            String a3 = View$OnClickListenerC0742z.m36162a(cursor, "suggest_intent_data");
            String str4 = a3;
            if (a3 == null) {
                str4 = this.f700f0.getSuggestIntentData();
            }
            String str5 = str4;
            if (str4 != null) {
                str5 = str4;
                if (View$OnClickListenerC0742z.m36162a(cursor, "suggest_intent_data_id") != null) {
                    str5 = str4 + "/" + Uri.encode(a);
                }
            }
            return m38929a(str3, str5 == null ? null : Uri.parse(str5), View$OnClickListenerC0742z.m36162a(cursor, "suggest_intent_extra_data"), View$OnClickListenerC0742z.m36162a(cursor, "suggest_intent_query"), i, str);
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
    public final Intent m38929a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f697c0);
        if (str3 != null) {
            intent.putExtra(AppLovinEventParameters.SEARCH_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f701g0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f700f0.getSearchActivity());
        return intent;
    }

    /* renamed from: a */
    public final CharSequence m38931a(CharSequence charSequence) {
        if (!this.f687P || this.f676E == null) {
            return charSequence;
        }
        double textSize = this.f710p.getTextSize();
        Double.isNaN(textSize);
        int i = (int) (textSize * 1.25d);
        this.f676E.setBounds(0, 0, i, i);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f676E), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    @Override // p012b.p016b.p024p.AbstractC0624c
    /* renamed from: a */
    public void mo36548a() {
        if (!this.f698d0) {
            this.f698d0 = true;
            int imeOptions = this.f710p.getImeOptions();
            this.f699e0 = imeOptions;
            this.f710p.setImeOptions(imeOptions | 33554432);
            this.f710p.setText("");
            setIconified(false);
        }
    }

    /* renamed from: a */
    public void m38938a(int i, String str, String str2) {
        getContext().startActivity(m38929a("android.intent.action.SEARCH", (Uri) null, (String) null, str2, i, str));
    }

    /* renamed from: a */
    public final void m38936a(Intent intent) {
        if (intent != null) {
            try {
                getContext().startActivity(intent);
            } catch (RuntimeException e) {
                Log.e("SearchView", "Failed launch activity: " + intent, e);
            }
        }
    }

    /* renamed from: a */
    public final void m38932a(View view, Rect rect) {
        view.getLocationInWindow(this.f673B);
        getLocationInWindow(this.f674C);
        int[] iArr = this.f673B;
        int i = iArr[1];
        int[] iArr2 = this.f674C;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    /* renamed from: a */
    public void m38930a(CharSequence charSequence, boolean z) {
        this.f710p.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f710p;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f697c0 = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            m38911k();
        }
    }

    /* renamed from: a */
    public final void m38928a(boolean z) {
        this.f716u.setVisibility((!this.f690S || !m38914h() || !hasFocus() || (!z && this.f695a0)) ? 8 : 0);
    }

    /* renamed from: a */
    public final boolean m38939a(int i, int i2, String str) {
        Cursor a = this.f689R.mo35079a();
        if (a == null || !a.moveToPosition(i)) {
            return false;
        }
        m38936a(m38934a(a, i2, str));
        return true;
    }

    /* renamed from: a */
    public boolean m38933a(View view, int i, KeyEvent keyEvent) {
        if (this.f700f0 == null || this.f689R == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
            return false;
        }
        if (i == 66 || i == 84 || i == 61) {
            return m38927b(this.f710p.getListSelection(), 0, null);
        }
        if (i != 21 && i != 22) {
            return (i == 19 && this.f710p.getListSelection() == 0) ? false : false;
        }
        this.f710p.setSelection(i == 21 ? 0 : this.f710p.length());
        this.f710p.setListSelection(0);
        this.f710p.clearListSelection();
        this.f710p.m38902a();
        return true;
    }

    /* renamed from: b */
    public final Intent m38926b(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    @Override // p012b.p016b.p024p.AbstractC0624c
    /* renamed from: b */
    public void mo36547b() {
        m38930a("", false);
        clearFocus();
        m38924b(true);
        this.f710p.setImeOptions(this.f699e0);
        this.f698d0 = false;
    }

    /* renamed from: b */
    public void m38925b(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: b */
    public final void m38924b(boolean z) {
        this.f688Q = z;
        int i = 0;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.f710p.getText());
        this.f715t.setVisibility(i2);
        m38928a(z2);
        this.f712q.setVisibility(z ? 8 : 0);
        if (this.f675D.getDrawable() == null || this.f687P) {
            i = 8;
        }
        this.f675D.setVisibility(i);
        m38907o();
        m38921c(!z2);
        m38903s();
    }

    /* renamed from: b */
    public boolean m38927b(int i, int i2, String str) {
        AbstractC0165m mVar = this.f685N;
        if (mVar != null && mVar.m38896b(i)) {
            return false;
        }
        m38939a(i, 0, (String) null);
        this.f710p.setImeVisibility(false);
        m38920d();
        return true;
    }

    /* renamed from: c */
    public void m38923c() {
        if (this.f719x.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.f713r.getPaddingLeft();
            Rect rect = new Rect();
            boolean a = C0708l0.m36319a(this);
            int dimensionPixelSize = this.f687P ? resources.getDimensionPixelSize(C0577d.abc_dropdownitem_icon_width) + resources.getDimensionPixelSize(C0577d.abc_dropdownitem_text_padding_left) : 0;
            this.f710p.getDropDownBackground().getPadding(rect);
            this.f710p.setDropDownHorizontalOffset(a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.f710p.setDropDownWidth((((this.f719x.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }

    /* renamed from: c */
    public void m38922c(CharSequence charSequence) {
        Editable text = this.f710p.getText();
        this.f697c0 = text;
        boolean z = !TextUtils.isEmpty(text);
        m38928a(z);
        m38921c(!z);
        m38907o();
        m38903s();
        if (this.f682K != null && !TextUtils.equals(charSequence, this.f696b0)) {
            this.f682K.m38899a(charSequence.toString());
        }
        this.f696b0 = charSequence.toString();
    }

    /* renamed from: c */
    public final void m38921c(boolean z) {
        int i = 8;
        if (this.f695a0) {
            i = 8;
            if (!m38915g()) {
                i = 8;
                if (z) {
                    this.f716u.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f718w.setVisibility(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f693V = true;
        super.clearFocus();
        this.f710p.clearFocus();
        this.f710p.setImeVisibility(false);
        this.f693V = false;
    }

    /* renamed from: d */
    public final void m38920d() {
        this.f710p.dismissDropDown();
    }

    /* renamed from: d */
    public boolean m38919d(int i) {
        AbstractC0165m mVar = this.f685N;
        if (mVar != null && mVar.m38897a(i)) {
            return false;
        }
        m38917e(i);
        return true;
    }

    /* renamed from: e */
    public void m38918e() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f710p.refreshAutoCompleteResults();
            return;
        }
        f671q0.m38893b(this.f710p);
        f671q0.m38894a(this.f710p);
    }

    /* renamed from: e */
    public final void m38917e(int i) {
        Editable text = this.f710p.getText();
        Cursor a = this.f689R.mo35079a();
        if (a != null) {
            if (a.moveToPosition(i)) {
                CharSequence b = this.f689R.mo35076b(a);
                if (b != null) {
                    setQuery(b);
                } else {
                    setQuery(text);
                }
            } else {
                setQuery(text);
            }
        }
    }

    /* renamed from: f */
    public final boolean m38916f() {
        SearchableInfo searchableInfo = this.f700f0;
        boolean z = false;
        if (searchableInfo != null) {
            z = false;
            if (searchableInfo.getVoiceSearchEnabled()) {
                Intent intent = null;
                if (this.f700f0.getVoiceSearchLaunchWebSearch()) {
                    intent = this.f679H;
                } else if (this.f700f0.getVoiceSearchLaunchRecognizer()) {
                    intent = this.f680I;
                }
                z = false;
                if (intent != null) {
                    z = false;
                    if (getContext().getPackageManager().resolveActivity(intent, MapMakerInternalMap.MAX_SEGMENTS) != null) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public boolean m38915g() {
        return this.f688Q;
    }

    public int getImeOptions() {
        return this.f710p.getImeOptions();
    }

    public int getInputType() {
        return this.f710p.getInputType();
    }

    public int getMaxWidth() {
        return this.f694W;
    }

    public CharSequence getQuery() {
        return this.f710p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f691T;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f700f0;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f681J : getContext().getText(this.f700f0.getHintId());
        }
        return charSequence;
    }

    public int getSuggestionCommitIconResId() {
        return this.f678G;
    }

    public int getSuggestionRowLayout() {
        return this.f677F;
    }

    public AbstractC1037a getSuggestionsAdapter() {
        return this.f689R;
    }

    /* renamed from: h */
    public final boolean m38914h() {
        return (this.f690S || this.f695a0) && !m38915g();
    }

    /* renamed from: i */
    public void m38913i() {
        if (!TextUtils.isEmpty(this.f710p.getText())) {
            this.f710p.setText("");
            this.f710p.requestFocus();
            this.f710p.setImeVisibility(true);
        } else if (this.f687P) {
            AbstractC0163k kVar = this.f683L;
            if (kVar == null || !kVar.onClose()) {
                clearFocus();
                m38924b(true);
            }
        }
    }

    /* renamed from: j */
    public void m38912j() {
        m38924b(false);
        this.f710p.requestFocus();
        this.f710p.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f686O;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: k */
    public void m38911k() {
        Editable text = this.f710p.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            AbstractC0164l lVar = this.f682K;
            if (lVar == null || !lVar.m38898b(text.toString())) {
                if (this.f700f0 != null) {
                    m38938a(0, (String) null, text.toString());
                }
                this.f710p.setImeVisibility(false);
                m38920d();
            }
        }
    }

    /* renamed from: l */
    public void m38910l() {
        m38924b(m38915g());
        m38908n();
        if (this.f710p.hasFocus()) {
            m38918e();
        }
    }

    /* renamed from: m */
    public void m38909m() {
        SearchableInfo searchableInfo = this.f700f0;
        if (searchableInfo != null) {
            try {
                if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    getContext().startActivity(m38926b(this.f679H, searchableInfo));
                } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    getContext().startActivity(m38935a(this.f680I, searchableInfo));
                }
            } catch (ActivityNotFoundException e) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    /* renamed from: n */
    public final void m38908n() {
        post(this.f702h0);
    }

    /* renamed from: o */
    public final void m38907o() {
        boolean z = !TextUtils.isEmpty(this.f710p.getText());
        int i = 0;
        boolean z2 = true;
        if (!z) {
            z2 = this.f687P && !this.f698d0;
        }
        ImageView imageView = this.f717v;
        if (!z2) {
            i = 8;
        }
        imageView.setVisibility(i);
        Drawable drawable = this.f717v.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f702h0);
        post(this.f703i0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m38932a(this.f710p, this.f721z);
            Rect rect = this.f672A;
            Rect rect2 = this.f721z;
            rect.set(rect2.left, 0, rect2.right, i4 - i2);
            C0167o oVar = this.f720y;
            if (oVar == null) {
                C0167o oVar2 = new C0167o(this.f672A, this.f721z, this.f710p);
                this.f720y = oVar2;
                setTouchDelegate(oVar2);
                return;
            }
            oVar.m38891a(this.f672A, this.f721z);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (m38915g()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f694W;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            i3 = this.f694W;
            if (i3 <= 0) {
                i3 = getPreferredWidth();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f694W;
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
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m38516a());
        m38924b(savedState.f722c);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f722c = m38915g();
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m38908n();
    }

    /* renamed from: p */
    public void m38906p() {
        int[] iArr = this.f710p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f713r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f714s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: q */
    public final void m38905q() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f710p;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        searchAutoComplete.setHint(m38931a(charSequence));
    }

    /* renamed from: r */
    public final void m38904r() {
        this.f710p.setThreshold(this.f700f0.getSuggestThreshold());
        this.f710p.setImeOptions(this.f700f0.getImeOptions());
        int inputType = this.f700f0.getInputType();
        int i = 1;
        int i2 = inputType;
        if ((inputType & 15) == 1) {
            int i3 = inputType & (-65537);
            i2 = i3;
            if (this.f700f0.getSuggestAuthority() != null) {
                i2 = i3 | MapMakerInternalMap.MAX_SEGMENTS | 524288;
            }
        }
        this.f710p.setInputType(i2);
        AbstractC1037a aVar = this.f689R;
        if (aVar != null) {
            aVar.mo35078a((Cursor) null);
        }
        if (this.f700f0.getSuggestAuthority() != null) {
            View$OnClickListenerC0742z zVar = new View$OnClickListenerC0742z(getContext(), this, this.f700f0, this.f704j0);
            this.f689R = zVar;
            this.f710p.setAdapter(zVar);
            View$OnClickListenerC0742z zVar2 = (View$OnClickListenerC0742z) this.f689R;
            if (this.f692U) {
                i = 2;
            }
            zVar2.m36166a(i);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.f693V || !isFocusable()) {
            return false;
        }
        if (m38915g()) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f710p.requestFocus(i, rect);
        if (requestFocus) {
            m38924b(false);
        }
        return requestFocus;
    }

    /* renamed from: s */
    public final void m38903s() {
        this.f714s.setVisibility((!m38914h() || !(this.f716u.getVisibility() == 0 || this.f718w.getVisibility() == 0)) ? 8 : 0);
    }

    public void setAppSearchData(Bundle bundle) {
        this.f701g0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m38913i();
        } else {
            m38912j();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f687P != z) {
            this.f687P = z;
            m38924b(z);
            m38905q();
        }
    }

    public void setImeOptions(int i) {
        this.f710p.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f710p.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f694W = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0163k kVar) {
        this.f683L = kVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f684M = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0164l lVar) {
        this.f682K = lVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f686O = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0165m mVar) {
        this.f685N = mVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f691T = charSequence;
        m38905q();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f692U = z;
        AbstractC1037a aVar = this.f689R;
        if (aVar instanceof View$OnClickListenerC0742z) {
            ((View$OnClickListenerC0742z) aVar).m36166a(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f700f0 = searchableInfo;
        if (searchableInfo != null) {
            m38904r();
            m38905q();
        }
        boolean f = m38916f();
        this.f695a0 = f;
        if (f) {
            this.f710p.setPrivateImeOptions("nm");
        }
        m38924b(m38915g());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f690S = z;
        m38924b(m38915g());
    }

    public void setSuggestionsAdapter(AbstractC1037a aVar) {
        this.f689R = aVar;
        this.f710p.setAdapter(aVar);
    }
}
