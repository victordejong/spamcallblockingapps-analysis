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
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
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
import androidx.appcompat.C0032R;
import androidx.customview.view.AbsSavedState;
import com.huawei.hms.actions.SearchIntents;
import com.tenor.android.core.constant.StringConstant;
import io.agora.rtc.Constants;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import n3.b.f.l0;
import p1727n3.p1734b.p1741e.AbstractC25452b;
import p1727n3.p1734b.p1743f.C25540r0;
import p1727n3.p1734b.p1743f.C25558x0;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1827l.p1828a.AbstractC26642a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView.class */
public class SearchView extends LinearLayoutCompat implements AbstractC25452b {

    /* renamed from: A0 */
    public static final C0073n f324A0;

    /* renamed from: A */
    public Rect f325A;

    /* renamed from: B */
    public int[] f326B;

    /* renamed from: C */
    public int[] f327C;

    /* renamed from: D */
    public final ImageView f328D;

    /* renamed from: E */
    public final Drawable f329E;

    /* renamed from: J */
    public final int f330J;

    /* renamed from: K */
    public final int f331K;

    /* renamed from: L */
    public final Intent f332L;

    /* renamed from: M */
    public final Intent f333M;

    /* renamed from: N */
    public final CharSequence f334N;

    /* renamed from: O */
    public AbstractC0071l f335O;

    /* renamed from: P */
    public AbstractC0070k f336P;

    /* renamed from: Q */
    public View.OnFocusChangeListener f337Q;

    /* renamed from: R */
    public AbstractC0072m f338R;

    /* renamed from: S */
    public View.OnClickListener f339S;

    /* renamed from: T */
    public boolean f340T;

    /* renamed from: U */
    public boolean f341U;

    /* renamed from: V */
    public AbstractC26642a f342V;

    /* renamed from: W */
    public boolean f343W;

    /* renamed from: g0 */
    public CharSequence f344g0;

    /* renamed from: h0 */
    public boolean f345h0;

    /* renamed from: i0 */
    public boolean f346i0;

    /* renamed from: j0 */
    public int f347j0;

    /* renamed from: k0 */
    public boolean f348k0;

    /* renamed from: l0 */
    public CharSequence f349l0;

    /* renamed from: m0 */
    public CharSequence f350m0;

    /* renamed from: n0 */
    public boolean f351n0;

    /* renamed from: o0 */
    public int f352o0;

    /* renamed from: p */
    public final SearchAutoComplete f353p;

    /* renamed from: p0 */
    public SearchableInfo f354p0;

    /* renamed from: q */
    public final View f355q;

    /* renamed from: q0 */
    public Bundle f356q0;

    /* renamed from: r */
    public final View f357r;

    /* renamed from: r0 */
    public final Runnable f358r0;

    /* renamed from: s */
    public final View f359s;

    /* renamed from: s0 */
    public Runnable f360s0;

    /* renamed from: t */
    public final ImageView f361t;

    /* renamed from: t0 */
    public final WeakHashMap<String, Drawable.ConstantState> f362t0;

    /* renamed from: u */
    public final ImageView f363u;

    /* renamed from: u0 */
    public final View.OnClickListener f364u0;

    /* renamed from: v */
    public final ImageView f365v;

    /* renamed from: v0 */
    public View.OnKeyListener f366v0;

    /* renamed from: w */
    public final ImageView f367w;

    /* renamed from: w0 */
    public final TextView.OnEditorActionListener f368w0;

    /* renamed from: x */
    public final View f369x;

    /* renamed from: x0 */
    public final AdapterView.OnItemClickListener f370x0;

    /* renamed from: y */
    public C0074o f371y;

    /* renamed from: y0 */
    public final AdapterView.OnItemSelectedListener f372y0;

    /* renamed from: z */
    public Rect f373z;

    /* renamed from: z0 */
    public TextWatcher f374z0;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0058a();

        /* renamed from: c */
        public boolean f375c;

        /* renamed from: androidx.appcompat.widget.SearchView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SavedState$a.class */
        public class C0058a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f375c = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SearchView.SavedState{");
            m8728C.append(Integer.toHexString(System.identityHashCode(this)));
            m8728C.append(" isIconified=");
            return C22128a.m8590o(m8728C, this.f375c, "}");
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.f713a, i);
            parcel.writeValue(Boolean.valueOf(this.f375c));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete.class */
    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {

        /* renamed from: e */
        public SearchView f377e;

        /* renamed from: f */
        public boolean f378f;

        /* renamed from: g */
        public final Runnable f379g = new RunnableC0059a();

        /* renamed from: d */
        public int f376d = getThreshold();

        /* renamed from: androidx.appcompat.widget.SearchView$SearchAutoComplete$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
        public class RunnableC0059a implements Runnable {
            public RunnableC0059a() {
                SearchAutoComplete.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.f378f) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f378f = false;
                }
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, C0032R.attr.autoCompleteTextViewStyle);
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i < 960 || i2 < 720 || configuration.orientation != 2) {
                if (i >= 600) {
                    return 192;
                }
                if (i >= 640 && i2 >= 480) {
                    return 192;
                }
                return Constants.ERR_ALREADY_IN_RECORDING;
            }
            return 256;
        }

        /* renamed from: a */
        public void m43102a() {
            if (Build.VERSION.SDK_INT >= 29) {
                setInputMethodMode(1);
                if (!enoughToFilter()) {
                    return;
                }
                showDropDown();
                return;
            }
            C0073n c0073n = SearchView.f324A0;
            Objects.requireNonNull(c0073n);
            C0073n.m43099a();
            Method method = c0073n.f393c;
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
            return this.f376d <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f378f) {
                removeCallbacks(this.f379g);
                post(this.f379g);
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
            SearchView searchView = this.f377e;
            searchView.m43114H(searchView.f341U);
            searchView.post(searchView.f358r0);
            if (searchView.f353p.hasFocus()) {
                searchView.m43110s();
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
                        this.f377e.clearFocus();
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
            if (!z || !this.f377e.hasFocus() || getVisibility() != 0) {
                return;
            }
            boolean z2 = true;
            this.f378f = true;
            Context context = getContext();
            C0073n c0073n = SearchView.f324A0;
            if (context.getResources().getConfiguration().orientation != 2) {
                z2 = false;
            }
            if (!z2) {
                return;
            }
            m43102a();
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
                this.f378f = false;
                removeCallbacks(this.f379g);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else if (!inputMethodManager.isActive(this)) {
                this.f378f = true;
            } else {
                this.f378f = false;
                removeCallbacks(this.f379g);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f377e = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f376d = i;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$a.class */
    public class C0060a implements TextWatcher {
        public C0060a() {
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
            Editable text = searchView.f353p.getText();
            searchView.f350m0 = text;
            boolean z = !TextUtils.isEmpty(text);
            searchView.m43115G(z);
            searchView.m43113I(!z);
            searchView.m43119C();
            searchView.m43116F();
            if (searchView.f335O != null && !TextUtils.equals(charSequence, searchView.f349l0)) {
                searchView.f335O.onQueryTextChange(charSequence.toString());
            }
            searchView.f349l0 = charSequence.toString();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$b.class */
    public class RunnableC0061b implements Runnable {
        public RunnableC0061b() {
            SearchView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            SearchView.this.m43118D();
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
    public class RunnableC0062c implements Runnable {
        public RunnableC0062c() {
            SearchView.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC26642a abstractC26642a = SearchView.this.f342V;
            if (abstractC26642a instanceof l0) {
                abstractC26642a.mo1527a(null);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$d.class */
    public class View$OnFocusChangeListenerC0063d implements View.OnFocusChangeListener {
        public View$OnFocusChangeListenerC0063d() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.f337Q;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$e.class */
    public class View$OnLayoutChangeListenerC0064e implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC0064e() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            SearchView searchView = SearchView.this;
            if (searchView.f369x.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.f357r.getPaddingLeft();
                Rect rect = new Rect();
                boolean m3244a = C25558x0.m3244a(searchView);
                int dimensionPixelSize = searchView.f340T ? resources.getDimensionPixelSize(C0032R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(C0032R.dimen.abc_dropdownitem_icon_width) : 0;
                searchView.f353p.getDropDownBackground().getPadding(rect);
                searchView.f353p.setDropDownHorizontalOffset(m3244a ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchView.f353p.setDropDownWidth((((searchView.f369x.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$f.class */
    public class View$OnClickListenerC0065f implements View.OnClickListener {
        public View$OnClickListenerC0065f() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.f361t) {
                searchView.m43104y();
            } else if (view == searchView.f365v) {
                searchView.m43108u();
            } else if (view == searchView.f363u) {
                searchView.m43103z();
            } else if (view != searchView.f367w) {
                if (view != searchView.f353p) {
                    return;
                }
                searchView.m43110s();
            } else {
                SearchableInfo searchableInfo = searchView.f354p0;
                if (searchableInfo == null) {
                    return;
                }
                try {
                    if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                        if (!searchableInfo.getVoiceSearchLaunchRecognizer()) {
                            return;
                        }
                        searchView.getContext().startActivity(searchView.m43111r(searchView.f333M, searchableInfo));
                        return;
                    }
                    Intent intent = new Intent(searchView.f332L);
                    ComponentName searchActivity = searchableInfo.getSearchActivity();
                    intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                    searchView.getContext().startActivity(intent);
                } catch (ActivityNotFoundException e) {
                }
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$g.class */
    public class View$OnKeyListenerC0066g implements View.OnKeyListener {
        public View$OnKeyListenerC0066g() {
            SearchView.this = r4;
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f354p0 == null) {
                return false;
            }
            if (searchView.f353p.isPopupShowing() && SearchView.this.f353p.getListSelection() != -1) {
                return SearchView.this.m43121A(i, keyEvent);
            }
            if ((TextUtils.getTrimmedLength(SearchView.this.f353p.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i != 66) {
                return false;
            }
            view.cancelLongPress();
            SearchView searchView2 = SearchView.this;
            searchView2.m43109t(0, null, searchView2.f353p.getText().toString());
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$h.class */
    public class C0067h implements TextView.OnEditorActionListener {
        public C0067h() {
            SearchView.this = r4;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            SearchView.this.m43103z();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$i */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$i.class */
    public class C0068i implements AdapterView.OnItemClickListener {
        public C0068i() {
            SearchView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m43107v(i);
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$j */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$j.class */
    public class C0069j implements AdapterView.OnItemSelectedListener {
        public C0069j() {
            SearchView.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            SearchView.this.m43106w(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$k */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$k.class */
    public interface AbstractC0070k {
        boolean onClose();
    }

    /* renamed from: androidx.appcompat.widget.SearchView$l */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$l.class */
    public interface AbstractC0071l {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$m */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$m.class */
    public interface AbstractC0072m {
        /* renamed from: a */
        boolean m43101a(int i);

        /* renamed from: b */
        boolean m43100b(int i);
    }

    /* renamed from: androidx.appcompat.widget.SearchView$n */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$n.class */
    public static class C0073n {

        /* renamed from: a */
        public Method f391a;

        /* renamed from: b */
        public Method f392b;

        /* renamed from: c */
        public Method f393c;

        public C0073n() {
            this.f391a = null;
            this.f392b = null;
            this.f393c = null;
            m43099a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f391a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f392b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f393c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        /* renamed from: a */
        public static void m43099a() {
            if (Build.VERSION.SDK_INT < 29) {
                return;
            }
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }

    /* renamed from: androidx.appcompat.widget.SearchView$o */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$o.class */
    public static class C0074o extends TouchDelegate {

        /* renamed from: a */
        public final View f394a;

        /* renamed from: e */
        public final int f398e;

        /* renamed from: f */
        public boolean f399f;

        /* renamed from: b */
        public final Rect f395b = new Rect();

        /* renamed from: d */
        public final Rect f397d = new Rect();

        /* renamed from: c */
        public final Rect f396c = new Rect();

        public C0074o(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f398e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            m43098a(rect, rect2);
            this.f394a = view;
        }

        /* renamed from: a */
        public void m43098a(Rect rect, Rect rect2) {
            this.f395b.set(rect);
            this.f397d.set(rect);
            Rect rect3 = this.f397d;
            int i = this.f398e;
            rect3.inset(-i, -i);
            this.f396c.set(rect2);
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
                    boolean z3 = this.f399f;
                    z2 = z3;
                    if (z3) {
                        z2 = z3;
                        if (!this.f397d.contains(x, y)) {
                            z2 = z3;
                            z = false;
                        }
                    }
                } else {
                    if (action == 3) {
                        z2 = this.f399f;
                        this.f399f = false;
                    }
                    z = true;
                    z2 = false;
                }
                z = true;
            } else {
                if (this.f395b.contains(x, y)) {
                    this.f399f = true;
                    z = true;
                }
                z = true;
                z2 = false;
            }
            boolean z4 = false;
            if (z2) {
                if (!z || this.f396c.contains(x, y)) {
                    Rect rect = this.f396c;
                    motionEvent.setLocation(x - rect.left, y - rect.top);
                } else {
                    motionEvent.setLocation(this.f394a.getWidth() / 2, this.f394a.getHeight() / 2);
                }
                z4 = this.f394a.dispatchTouchEvent(motionEvent);
            }
            return z4;
        }
    }

    static {
        f324A0 = Build.VERSION.SDK_INT < 29 ? new C0073n() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0032R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f373z = new Rect();
        this.f325A = new Rect();
        this.f326B = new int[2];
        this.f327C = new int[2];
        this.f358r0 = new RunnableC0061b();
        this.f360s0 = new RunnableC0062c();
        this.f362t0 = new WeakHashMap<>();
        View$OnClickListenerC0065f view$OnClickListenerC0065f = new View$OnClickListenerC0065f();
        this.f364u0 = view$OnClickListenerC0065f;
        this.f366v0 = new View$OnKeyListenerC0066g();
        C0067h c0067h = new C0067h();
        this.f368w0 = c0067h;
        C0068i c0068i = new C0068i();
        this.f370x0 = c0068i;
        C0069j c0069j = new C0069j();
        this.f372y0 = c0069j;
        this.f374z0 = new C0060a();
        C25540r0 c25540r0 = new C25540r0(context, context.obtainStyledAttributes(attributeSet, C0032R.styleable.SearchView, i, 0));
        LayoutInflater.from(context).inflate(c25540r0.m3311l(C0032R.styleable.SearchView_layout, C0032R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(C0032R.C0034id.search_src_text);
        this.f353p = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f355q = findViewById(C0032R.C0034id.search_edit_frame);
        View findViewById = findViewById(C0032R.C0034id.search_plate);
        this.f357r = findViewById;
        View findViewById2 = findViewById(C0032R.C0034id.submit_area);
        this.f359s = findViewById2;
        ImageView imageView = (ImageView) findViewById(C0032R.C0034id.search_button);
        this.f361t = imageView;
        ImageView imageView2 = (ImageView) findViewById(C0032R.C0034id.search_go_btn);
        this.f363u = imageView2;
        ImageView imageView3 = (ImageView) findViewById(C0032R.C0034id.search_close_btn);
        this.f365v = imageView3;
        ImageView imageView4 = (ImageView) findViewById(C0032R.C0034id.search_voice_btn);
        this.f367w = imageView4;
        ImageView imageView5 = (ImageView) findViewById(C0032R.C0034id.search_mag_icon);
        this.f328D = imageView5;
        Drawable m3316g = c25540r0.m3316g(C0032R.styleable.SearchView_queryBackground);
        AtomicInteger atomicInteger = C26614s.f74505a;
        findViewById.setBackground(m3316g);
        findViewById2.setBackground(c25540r0.m3316g(C0032R.styleable.SearchView_submitBackground));
        int i2 = C0032R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(c25540r0.m3316g(i2));
        imageView2.setImageDrawable(c25540r0.m3316g(C0032R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(c25540r0.m3316g(C0032R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(c25540r0.m3316g(C0032R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(c25540r0.m3316g(i2));
        this.f329E = c25540r0.m3316g(C0032R.styleable.SearchView_searchHintIcon);
        MediaSessionCompat.m43179z1(imageView, getResources().getString(C0032R.string.abc_searchview_description_search));
        this.f330J = c25540r0.m3311l(C0032R.styleable.SearchView_suggestionRowLayout, C0032R.layout.abc_search_dropdown_item_icons_2line);
        this.f331K = c25540r0.m3311l(C0032R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(view$OnClickListenerC0065f);
        imageView3.setOnClickListener(view$OnClickListenerC0065f);
        imageView2.setOnClickListener(view$OnClickListenerC0065f);
        imageView4.setOnClickListener(view$OnClickListenerC0065f);
        searchAutoComplete.setOnClickListener(view$OnClickListenerC0065f);
        searchAutoComplete.addTextChangedListener(this.f374z0);
        searchAutoComplete.setOnEditorActionListener(c0067h);
        searchAutoComplete.setOnItemClickListener(c0068i);
        searchAutoComplete.setOnItemSelectedListener(c0069j);
        searchAutoComplete.setOnKeyListener(this.f366v0);
        searchAutoComplete.setOnFocusChangeListener(new View$OnFocusChangeListenerC0063d());
        setIconifiedByDefault(c25540r0.m3322a(C0032R.styleable.SearchView_iconifiedByDefault, true));
        int m3317f = c25540r0.m3317f(C0032R.styleable.SearchView_android_maxWidth, -1);
        if (m3317f != -1) {
            setMaxWidth(m3317f);
        }
        this.f334N = c25540r0.m3309n(C0032R.styleable.SearchView_defaultQueryHint);
        this.f344g0 = c25540r0.m3309n(C0032R.styleable.SearchView_queryHint);
        int m3313j = c25540r0.m3313j(C0032R.styleable.SearchView_android_imeOptions, -1);
        if (m3313j != -1) {
            setImeOptions(m3313j);
        }
        int m3313j2 = c25540r0.m3313j(C0032R.styleable.SearchView_android_inputType, -1);
        if (m3313j2 != -1) {
            setInputType(m3313j2);
        }
        setFocusable(c25540r0.m3322a(C0032R.styleable.SearchView_android_focusable, true));
        c25540r0.f71466b.recycle();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.f332L = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.f333M = intent2;
        intent2.addFlags(268435456);
        View findViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.f369x = findViewById3;
        if (findViewById3 != null) {
            findViewById3.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC0064e());
        }
        m43114H(this.f340T);
        m43117E();
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(C0032R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(C0032R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        this.f353p.setText(charSequence);
        this.f353p.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    /* renamed from: A */
    public boolean m43121A(int i, KeyEvent keyEvent) {
        if (this.f354p0 != null && this.f342V != null && keyEvent.getAction() == 0 && keyEvent.hasNoModifiers()) {
            if (i == 66 || i == 84 || i == 61) {
                return m43107v(this.f353p.getListSelection());
            }
            if (i != 21 && i != 22) {
                return (i == 19 && this.f353p.getListSelection() == 0) ? false : false;
            }
            this.f353p.setSelection(i == 21 ? 0 : this.f353p.length());
            this.f353p.setListSelection(0);
            this.f353p.clearListSelection();
            this.f353p.m43102a();
            return true;
        }
        return false;
    }

    /* renamed from: B */
    public void m43120B(CharSequence charSequence, boolean z) {
        this.f353p.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.f353p;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.f350m0 = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        m43103z();
    }

    /* renamed from: C */
    public final void m43119C() {
        boolean z = !TextUtils.isEmpty(this.f353p.getText());
        boolean z2 = true;
        if (!z) {
            z2 = this.f340T && !this.f351n0;
        }
        this.f365v.setVisibility(z2 ? 0 : 8);
        Drawable drawable = this.f365v.getDrawable();
        if (drawable != null) {
            drawable.setState(z ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    /* renamed from: D */
    public void m43118D() {
        int[] iArr = this.f353p.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f357r.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f359s.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* renamed from: E */
    public final void m43117E() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f353p;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        SpannableStringBuilder spannableStringBuilder = charSequence;
        if (this.f340T) {
            if (this.f329E == null) {
                spannableStringBuilder = charSequence;
            } else {
                int textSize = (int) (searchAutoComplete.getTextSize() * 1.25d);
                this.f329E.setBounds(0, 0, textSize, textSize);
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("   ");
                spannableStringBuilder2.setSpan(new ImageSpan(this.f329E), 1, 2, 33);
                spannableStringBuilder2.append(charSequence);
                spannableStringBuilder = spannableStringBuilder2;
            }
        }
        searchAutoComplete.setHint(spannableStringBuilder);
    }

    /* renamed from: F */
    public final void m43116F() {
        int i;
        if ((this.f343W || this.f348k0) && !this.f341U) {
            i = 0;
            if (this.f363u.getVisibility() != 0) {
                if (this.f367w.getVisibility() == 0) {
                    i = 0;
                }
            }
            this.f359s.setVisibility(i);
        }
        i = 8;
        this.f359s.setVisibility(i);
    }

    /* renamed from: G */
    public final void m43115G(boolean z) {
        int i;
        boolean z2 = this.f343W;
        if (z2) {
            if (((z2 || this.f348k0) && !this.f341U) && hasFocus()) {
                i = 0;
                if (!z) {
                    if (!this.f348k0) {
                        i = 0;
                    }
                }
                this.f363u.setVisibility(i);
            }
        }
        i = 8;
        this.f363u.setVisibility(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0057, code lost:
        if (r4.f340T != false) goto L14;
     */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m43114H(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            r0.f341U = r1
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
            androidx.appcompat.widget.SearchView$SearchAutoComplete r0 = r0.f353p
            android.text.Editable r0 = r0.getText()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 1
            r0 = r0 ^ r1
            r8 = r0
            r0 = r4
            android.widget.ImageView r0 = r0.f361t
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r1 = r8
            r0.m43115G(r1)
            r0 = r4
            android.view.View r0 = r0.f355q
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
            android.widget.ImageView r0 = r0.f328D
            android.graphics.drawable.Drawable r0 = r0.getDrawable()
            if (r0 == 0) goto L5a
            r0 = r6
            r7 = r0
            r0 = r4
            boolean r0 = r0.f340T
            if (r0 == 0) goto L5d
        L5a:
            r0 = 8
            r7 = r0
        L5d:
            r0 = r4
            android.widget.ImageView r0 = r0.f328D
            r1 = r7
            r0.setVisibility(r1)
            r0 = r4
            r0.m43119C()
            r0 = r4
            r1 = r8
            r2 = 1
            r1 = r1 ^ r2
            r0.m43113I(r1)
            r0 = r4
            r0.m43116F()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SearchView.m43114H(boolean):void");
    }

    /* renamed from: I */
    public final void m43113I(boolean z) {
        int i = 8;
        if (this.f348k0) {
            i = 8;
            if (!this.f341U) {
                i = 8;
                if (z) {
                    this.f363u.setVisibility(8);
                    i = 0;
                }
            }
        }
        this.f367w.setVisibility(i);
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25452b
    /* renamed from: b */
    public void mo3444b() {
        m43120B("", false);
        clearFocus();
        m43114H(true);
        this.f353p.setImeOptions(this.f352o0);
        this.f351n0 = false;
    }

    @Override // p1727n3.p1734b.p1741e.AbstractC25452b
    /* renamed from: c */
    public void mo3443c() {
        if (this.f351n0) {
            return;
        }
        this.f351n0 = true;
        int imeOptions = this.f353p.getImeOptions();
        this.f352o0 = imeOptions;
        this.f353p.setImeOptions(imeOptions | 33554432);
        this.f353p.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.f346i0 = true;
        super.clearFocus();
        this.f353p.clearFocus();
        this.f353p.setImeVisibility(false);
        this.f346i0 = false;
    }

    public int getImeOptions() {
        return this.f353p.getImeOptions();
    }

    public int getInputType() {
        return this.f353p.getInputType();
    }

    public int getMaxWidth() {
        return this.f347j0;
    }

    public CharSequence getQuery() {
        return this.f353p.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.f344g0;
        if (charSequence == null) {
            SearchableInfo searchableInfo = this.f354p0;
            charSequence = (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.f334N : getContext().getText(this.f354p0.getHintId());
        }
        return charSequence;
    }

    public int getSuggestionCommitIconResId() {
        return this.f331K;
    }

    public int getSuggestionRowLayout() {
        return this.f330J;
    }

    public AbstractC26642a getSuggestionsAdapter() {
        return this.f342V;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f358r0);
        post(this.f360s0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            SearchAutoComplete searchAutoComplete = this.f353p;
            Rect rect = this.f373z;
            searchAutoComplete.getLocationInWindow(this.f326B);
            getLocationInWindow(this.f327C);
            int[] iArr = this.f326B;
            int i5 = iArr[1];
            int[] iArr2 = this.f327C;
            int i6 = i5 - iArr2[1];
            int i7 = iArr[0] - iArr2[0];
            rect.set(i7, i6, searchAutoComplete.getWidth() + i7, searchAutoComplete.getHeight() + i6);
            Rect rect2 = this.f325A;
            Rect rect3 = this.f373z;
            rect2.set(rect3.left, 0, rect3.right, i4 - i2);
            C0074o c0074o = this.f371y;
            if (c0074o != null) {
                c0074o.m43098a(this.f325A, this.f373z);
                return;
            }
            C0074o c0074o2 = new C0074o(this.f325A, this.f373z, this.f353p);
            this.f371y = c0074o2;
            setTouchDelegate(c0074o2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        if (this.f341U) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            int i4 = this.f347j0;
            i3 = i4 > 0 ? Math.min(i4, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            i3 = this.f347j0;
            if (i3 <= 0) {
                i3 = getPreferredWidth();
            }
        } else if (mode != 1073741824) {
            i3 = size;
        } else {
            int i5 = this.f347j0;
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
        super.onRestoreInstanceState(savedState.f713a);
        m43114H(savedState.f375c);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f375c = this.f341U;
        return savedState;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        post(this.f358r0);
    }

    /* renamed from: q */
    public final Intent m43112q(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f350m0);
        if (str3 != null) {
            intent.putExtra(SearchIntents.EXTRA_QUERY, str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f356q0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        intent.setComponent(this.f354p0.getSearchActivity());
        return intent;
    }

    /* renamed from: r */
    public final Intent m43111r(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1073741824);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f356q0;
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

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (!this.f346i0 && isFocusable()) {
            if (this.f341U) {
                return super.requestFocus(i, rect);
            }
            boolean requestFocus = this.f353p.requestFocus(i, rect);
            if (requestFocus) {
                m43114H(false);
            }
            return requestFocus;
        }
        return false;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x005b -> B:8:0x0036). Please submit an issue!!! */
    /* renamed from: s */
    public void m43110s() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.f353p.refreshAutoCompleteResults();
            return;
        }
        C0073n c0073n = f324A0;
        SearchAutoComplete searchAutoComplete = this.f353p;
        Objects.requireNonNull(c0073n);
        C0073n.m43099a();
        Method method = c0073n.f391a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception e) {
            }
        }
        C0073n c0073n2 = f324A0;
        SearchAutoComplete searchAutoComplete2 = this.f353p;
        Objects.requireNonNull(c0073n2);
        C0073n.m43099a();
        Method method2 = c0073n2.f392b;
        if (method2 == null) {
            return;
        }
        try {
            method2.invoke(searchAutoComplete2, new Object[0]);
        } catch (Exception e2) {
        }
    }

    public void setAppSearchData(Bundle bundle) {
        this.f356q0 = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            m43108u();
        } else {
            m43104y();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f340T == z) {
            return;
        }
        this.f340T = z;
        m43114H(z);
        m43117E();
    }

    public void setImeOptions(int i) {
        this.f353p.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.f353p.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.f347j0 = i;
        requestLayout();
    }

    public void setOnCloseListener(AbstractC0070k abstractC0070k) {
        this.f336P = abstractC0070k;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.f337Q = onFocusChangeListener;
    }

    public void setOnQueryTextListener(AbstractC0071l abstractC0071l) {
        this.f335O = abstractC0071l;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.f339S = onClickListener;
    }

    public void setOnSuggestionListener(AbstractC0072m abstractC0072m) {
        this.f338R = abstractC0072m;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f344g0 = charSequence;
        m43117E();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f345h0 = z;
        l0 l0Var = this.f342V;
        if (l0Var instanceof l0) {
            l0Var.q = z ? 2 : 1;
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
        this.f343W = z;
        m43114H(this.f341U);
    }

    public void setSuggestionsAdapter(AbstractC26642a abstractC26642a) {
        this.f342V = abstractC26642a;
        this.f353p.setAdapter(abstractC26642a);
    }

    /* renamed from: t */
    public void m43109t(int i, String str, String str2) {
        getContext().startActivity(m43112q("android.intent.action.SEARCH", null, null, str2, i, null));
    }

    /* renamed from: u */
    public void m43108u() {
        if (!TextUtils.isEmpty(this.f353p.getText())) {
            this.f353p.setText("");
            this.f353p.requestFocus();
            this.f353p.setImeVisibility(true);
        } else if (!this.f340T) {
        } else {
            AbstractC0070k abstractC0070k = this.f336P;
            if (abstractC0070k != null && abstractC0070k.onClose()) {
                return;
            }
            clearFocus();
            m43114H(true);
        }
    }

    /* renamed from: v */
    public boolean m43107v(int i) {
        Intent intent;
        String k;
        AbstractC0072m abstractC0072m = this.f338R;
        if (abstractC0072m == null || !abstractC0072m.m43100b(i)) {
            Cursor cursor = this.f342V.f74576c;
            if (cursor != null && cursor.moveToPosition(i)) {
                try {
                    int i2 = l0.y;
                    String k2 = l0.k(cursor, cursor.getColumnIndex("suggest_intent_action"));
                    String str = k2;
                    if (k2 == null) {
                        str = this.f354p0.getSuggestIntentAction();
                    }
                    String str2 = str;
                    if (str == null) {
                        str2 = "android.intent.action.SEARCH";
                    }
                    String k3 = l0.k(cursor, cursor.getColumnIndex("suggest_intent_data"));
                    String str3 = k3;
                    if (k3 == null) {
                        str3 = this.f354p0.getSuggestIntentData();
                    }
                    String str4 = str3;
                    if (str3 != null) {
                        str4 = str3;
                        if (l0.k(cursor, cursor.getColumnIndex("suggest_intent_data_id")) != null) {
                            str4 = str3 + StringConstant.SLASH + Uri.encode(k);
                        }
                    }
                    intent = m43112q(str2, str4 == null ? null : Uri.parse(str4), l0.k(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), l0.k(cursor, cursor.getColumnIndex("suggest_intent_query")), 0, null);
                } catch (RuntimeException e) {
                    try {
                        cursor.getPosition();
                        intent = null;
                    } catch (RuntimeException e2) {
                        intent = null;
                    }
                }
                if (intent != null) {
                    try {
                        getContext().startActivity(intent);
                    } catch (RuntimeException e3) {
                        String str5 = "Failed launch activity: " + intent;
                    }
                }
            }
            this.f353p.setImeVisibility(false);
            this.f353p.dismissDropDown();
            return true;
        }
        return false;
    }

    /* renamed from: w */
    public boolean m43106w(int i) {
        AbstractC0072m abstractC0072m = this.f338R;
        if (abstractC0072m == null || !abstractC0072m.m43101a(i)) {
            Editable text = this.f353p.getText();
            Cursor cursor = this.f342V.f74576c;
            if (cursor == null) {
                return true;
            }
            if (!cursor.moveToPosition(i)) {
                setQuery(text);
                return true;
            }
            CharSequence mo1526b = this.f342V.mo1526b(cursor);
            if (mo1526b != null) {
                setQuery(mo1526b);
                return true;
            }
            setQuery(text);
            return true;
        }
        return false;
    }

    /* renamed from: x */
    public void m43105x(CharSequence charSequence) {
        setQuery(charSequence);
    }

    /* renamed from: y */
    public void m43104y() {
        m43114H(false);
        this.f353p.requestFocus();
        this.f353p.setImeVisibility(true);
        View.OnClickListener onClickListener = this.f339S;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    /* renamed from: z */
    public void m43103z() {
        Editable text = this.f353p.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        AbstractC0071l abstractC0071l = this.f335O;
        if (abstractC0071l != null && abstractC0071l.onQueryTextSubmit(text.toString())) {
            return;
        }
        if (this.f354p0 != null) {
            m43109t(0, null, text.toString());
        }
        this.f353p.setImeVisibility(false);
        this.f353p.dismissDropDown();
    }
}
