package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    NestedScrollView f42A;

    /* renamed from: C */
    private Drawable f44C;

    /* renamed from: D */
    private ImageView f45D;

    /* renamed from: E */
    private TextView f46E;

    /* renamed from: F */
    private TextView f47F;

    /* renamed from: G */
    private View f48G;

    /* renamed from: H */
    ListAdapter f49H;

    /* renamed from: J */
    private int f51J;

    /* renamed from: K */
    private int f52K;

    /* renamed from: L */
    int f53L;

    /* renamed from: M */
    int f54M;

    /* renamed from: N */
    int f55N;

    /* renamed from: O */
    int f56O;

    /* renamed from: P */
    private boolean f57P;

    /* renamed from: R */
    Handler f59R;

    /* renamed from: a */
    private final Context f61a;

    /* renamed from: b */
    final AppCompatDialog f62b;

    /* renamed from: c */
    private final Window f63c;

    /* renamed from: d */
    private final int f64d;

    /* renamed from: e */
    private CharSequence f65e;

    /* renamed from: f */
    private CharSequence f66f;

    /* renamed from: g */
    ListView f67g;

    /* renamed from: h */
    private View f68h;

    /* renamed from: i */
    private int f69i;

    /* renamed from: j */
    private int f70j;

    /* renamed from: k */
    private int f71k;

    /* renamed from: l */
    private int f72l;

    /* renamed from: m */
    private int f73m;

    /* renamed from: o */
    Button f75o;

    /* renamed from: p */
    private CharSequence f76p;

    /* renamed from: q */
    Message f77q;

    /* renamed from: r */
    private Drawable f78r;

    /* renamed from: s */
    Button f79s;

    /* renamed from: t */
    private CharSequence f80t;

    /* renamed from: u */
    Message f81u;

    /* renamed from: v */
    private Drawable f82v;

    /* renamed from: w */
    Button f83w;

    /* renamed from: x */
    private CharSequence f84x;

    /* renamed from: y */
    Message f85y;

    /* renamed from: z */
    private Drawable f86z;

    /* renamed from: n */
    private boolean f74n = false;

    /* renamed from: B */
    private int f43B = 0;

    /* renamed from: I */
    int f50I = -1;

    /* renamed from: Q */
    private int f58Q = 0;

    /* renamed from: S */
    private final View.OnClickListener f60S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            Message message4;
            AlertController alertController = AlertController.this;
            if (view != alertController.f75o || (message4 = alertController.f77q) == null) {
                AlertController alertController2 = AlertController.this;
                if (view != alertController2.f79s || (message3 = alertController2.f81u) == null) {
                    AlertController alertController3 = AlertController.this;
                    message = (view != alertController3.f83w || (message2 = alertController3.f85y) == null) ? null : Message.obtain(message2);
                } else {
                    message = Message.obtain(message3);
                }
            } else {
                message = Message.obtain(message4);
            }
            if (message != null) {
                message.sendToTarget();
            }
            AlertController alertController4 = AlertController.this;
            alertController4.f59R.obtainMessage(1, alertController4.f62b).sendToTarget();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$AlertParams.class */
    public static class AlertParams {

        /* renamed from: A */
        public int f98A;

        /* renamed from: B */
        public int f99B;

        /* renamed from: C */
        public int f100C;

        /* renamed from: D */
        public int f101D;

        /* renamed from: F */
        public boolean[] f103F;

        /* renamed from: G */
        public boolean f104G;

        /* renamed from: H */
        public boolean f105H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f107J;

        /* renamed from: K */
        public Cursor f108K;

        /* renamed from: L */
        public String f109L;

        /* renamed from: M */
        public String f110M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f111N;

        /* renamed from: O */
        public OnPrepareListViewListener f112O;

        /* renamed from: a */
        public final Context f113a;

        /* renamed from: b */
        public final LayoutInflater f114b;

        /* renamed from: d */
        public Drawable f116d;

        /* renamed from: f */
        public CharSequence f118f;

        /* renamed from: g */
        public View f119g;

        /* renamed from: h */
        public CharSequence f120h;

        /* renamed from: i */
        public CharSequence f121i;

        /* renamed from: j */
        public Drawable f122j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f123k;

        /* renamed from: l */
        public CharSequence f124l;

        /* renamed from: m */
        public Drawable f125m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f126n;

        /* renamed from: o */
        public CharSequence f127o;

        /* renamed from: p */
        public Drawable f128p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f129q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f131s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f132t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f133u;

        /* renamed from: v */
        public CharSequence[] f134v;

        /* renamed from: w */
        public ListAdapter f135w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f136x;

        /* renamed from: y */
        public int f137y;

        /* renamed from: z */
        public View f138z;

        /* renamed from: c */
        public int f115c = 0;

        /* renamed from: e */
        public int f117e = 0;

        /* renamed from: E */
        public boolean f102E = false;

        /* renamed from: I */
        public int f106I = -1;

        /* renamed from: r */
        public boolean f130r = true;

        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener.class */
        public interface OnPrepareListViewListener {
            /* renamed from: a */
            void m22280a(ListView listView);
        }

        public AlertParams(Context context) {
            this.f113a = context;
            this.f114b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: b */
        private void m22281b(final AlertController alertController) {
            ListAdapter listAdapter;
            final RecycleListView recycleListView = (RecycleListView) this.f114b.inflate(alertController.f53L, (ViewGroup) null);
            if (this.f104G) {
                listAdapter = this.f108K == null ? new ArrayAdapter<CharSequence>(this.f113a, alertController.f54M, 16908308, this.f134v) { // from class: androidx.appcompat.app.AlertController.AlertParams.1
                    @Override // android.widget.ArrayAdapter, android.widget.Adapter
                    public View getView(int i, View view, ViewGroup viewGroup) {
                        View view2 = super.getView(i, view, viewGroup);
                        boolean[] zArr = AlertParams.this.f103F;
                        if (zArr != null && zArr[i]) {
                            recycleListView.setItemChecked(i, true);
                        }
                        return view2;
                    }
                } : new CursorAdapter(this.f113a, this.f108K, false) { // from class: androidx.appcompat.app.AlertController.AlertParams.2

                    /* renamed from: f */
                    private final int f141f;

                    /* renamed from: g */
                    private final int f142g;

                    {
                        Cursor cursor = getCursor();
                        this.f141f = cursor.getColumnIndexOrThrow(AlertParams.this.f109L);
                        this.f142g = cursor.getColumnIndexOrThrow(AlertParams.this.f110M);
                    }

                    @Override // android.widget.CursorAdapter
                    public void bindView(View view, Context context, Cursor cursor) {
                        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f141f));
                        RecycleListView recycleListView2 = recycleListView;
                        int position = cursor.getPosition();
                        boolean z = true;
                        if (cursor.getInt(this.f142g) != 1) {
                            z = false;
                        }
                        recycleListView2.setItemChecked(position, z);
                    }

                    @Override // android.widget.CursorAdapter
                    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                        return AlertParams.this.f114b.inflate(alertController.f54M, viewGroup, false);
                    }
                };
            } else {
                int i = this.f105H ? alertController.f55N : alertController.f56O;
                if (this.f108K != null) {
                    listAdapter = new SimpleCursorAdapter(this.f113a, i, this.f108K, new String[]{this.f109L}, new int[]{16908308});
                } else {
                    listAdapter = this.f135w;
                    if (listAdapter == null) {
                        listAdapter = new CheckedItemAdapter(this.f113a, i, 16908308, this.f134v);
                    }
                }
            }
            OnPrepareListViewListener onPrepareListViewListener = this.f112O;
            if (onPrepareListViewListener != null) {
                onPrepareListViewListener.m22280a(recycleListView);
            }
            alertController.f49H = listAdapter;
            alertController.f50I = this.f106I;
            if (this.f136x != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        AlertParams.this.f136x.onClick(alertController.f62b, i2);
                        if (!AlertParams.this.f105H) {
                            alertController.f62b.dismiss();
                        }
                    }
                });
            } else if (this.f107J != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        boolean[] zArr = AlertParams.this.f103F;
                        if (zArr != null) {
                            zArr[i2] = recycleListView.isItemChecked(i2);
                        }
                        AlertParams.this.f107J.onClick(alertController.f62b, i2, recycleListView.isItemChecked(i2));
                    }
                });
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f111N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f105H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f104G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f67g = recycleListView;
        }

        /* renamed from: a */
        public void m22282a(AlertController alertController) {
            View view = this.f119g;
            if (view != null) {
                alertController.m22296m(view);
            } else {
                CharSequence charSequence = this.f118f;
                if (charSequence != null) {
                    alertController.m22291r(charSequence);
                }
                Drawable drawable = this.f116d;
                if (drawable != null) {
                    alertController.m22294o(drawable);
                }
                int i = this.f115c;
                if (i != 0) {
                    alertController.m22295n(i);
                }
                int i2 = this.f117e;
                if (i2 != 0) {
                    alertController.m22295n(alertController.m22305d(i2));
                }
            }
            CharSequence charSequence2 = this.f120h;
            if (charSequence2 != null) {
                alertController.m22293p(charSequence2);
            }
            if (!(this.f121i == null && this.f122j == null)) {
                alertController.m22297l(-1, this.f121i, this.f123k, null, this.f122j);
            }
            if (!(this.f124l == null && this.f125m == null)) {
                alertController.m22297l(-2, this.f124l, this.f126n, null, this.f125m);
            }
            if (!(this.f127o == null && this.f128p == null)) {
                alertController.m22297l(-3, this.f127o, this.f129q, null, this.f128p);
            }
            if (!(this.f134v == null && this.f108K == null && this.f135w == null)) {
                m22281b(alertController);
            }
            View view2 = this.f138z;
            if (view2 == null) {
                int i3 = this.f137y;
                if (i3 != 0) {
                    alertController.m22290s(i3);
                }
            } else if (this.f102E) {
                alertController.m22288u(view2, this.f98A, this.f99B, this.f100C, this.f101D);
            } else {
                alertController.m22289t(view2);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$ButtonHandler.class */
    private static final class ButtonHandler extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f151a;

        public ButtonHandler(DialogInterface dialogInterface) {
            this.f151a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f151a.get(), message.what);
            } else if (i == 1) {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$CheckedItemAdapter.class */
    public static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        public CheckedItemAdapter(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: f */
        private final int f152f;

        /* renamed from: g */
        private final int f153g;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0042R.styleable.RecycleListView);
            this.f153g = obtainStyledAttributes.getDimensionPixelOffset(C0042R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f152f = obtainStyledAttributes.getDimensionPixelOffset(C0042R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f152f, getPaddingRight(), z2 ? getPaddingBottom() : this.f153g);
            }
        }
    }

    public AlertController(Context context, AppCompatDialog appCompatDialog, Window window) {
        this.f61a = context;
        this.f62b = appCompatDialog;
        this.f63c = window;
        this.f59R = new ButtonHandler(appCompatDialog);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0042R.styleable.AlertDialog, C0042R.attr.alertDialogStyle, 0);
        this.f51J = obtainStyledAttributes.getResourceId(C0042R.styleable.AlertDialog_android_layout, 0);
        this.f52K = obtainStyledAttributes.getResourceId(C0042R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.f53L = obtainStyledAttributes.getResourceId(C0042R.styleable.AlertDialog_listLayout, 0);
        this.f54M = obtainStyledAttributes.getResourceId(C0042R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.f55N = obtainStyledAttributes.getResourceId(C0042R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.f56O = obtainStyledAttributes.getResourceId(C0042R.styleable.AlertDialog_listItemLayout, 0);
        this.f57P = obtainStyledAttributes.getBoolean(C0042R.styleable.AlertDialog_showTitle, true);
        this.f64d = obtainStyledAttributes.getDimensionPixelSize(C0042R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        appCompatDialog.m22155d(1);
    }

    /* renamed from: A */
    private static boolean m22309A(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(C0042R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    static boolean m22308a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            int i = childCount - 1;
            childCount = i;
            if (m22308a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m22307b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: g */
    static void m22302g(View view, View view2, View view3) {
        int i = 0;
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!view.canScrollVertically(1)) {
                i = 4;
            }
            view3.setVisibility(i);
        }
    }

    @Nullable
    /* renamed from: j */
    private ViewGroup m22299j(@Nullable View view, @Nullable View view2) {
        if (view == null) {
            View view3 = view2;
            if (view2 instanceof ViewStub) {
                view3 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view3;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        View view4 = view;
        if (view instanceof ViewStub) {
            view4 = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view4;
    }

    /* renamed from: k */
    private int m22298k() {
        int i = this.f52K;
        if (i != 0 && this.f58Q == 1) {
            return i;
        }
        return this.f51J;
    }

    /* renamed from: q */
    private void m22292q(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f63c.findViewById(C0042R.C0045id.scrollIndicatorUp);
        View findViewById2 = this.f63c.findViewById(C0042R.C0045id.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            ViewCompat.m19237D0(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
            return;
        }
        final View view2 = findViewById;
        if (findViewById != null) {
            view2 = findViewById;
            if ((i & 1) == 0) {
                viewGroup.removeView(findViewById);
                view2 = null;
            }
        }
        final View view3 = findViewById2;
        if (findViewById2 != null) {
            view3 = findViewById2;
            if ((i & 2) == 0) {
                viewGroup.removeView(findViewById2);
                view3 = null;
            }
        }
        if (view2 != null || view3 != null) {
            if (this.f66f != null) {
                this.f42A.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener(this) { // from class: androidx.appcompat.app.AlertController.2
                    @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
                    /* renamed from: a */
                    public void mo6899a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                        AlertController.m22302g(nestedScrollView, view2, view3);
                    }
                });
                this.f42A.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertController.m22302g(AlertController.this.f42A, view2, view3);
                    }
                });
                return;
            }
            ListView listView = this.f67g;
            if (listView != null) {
                listView.setOnScrollListener(new AbsListView.OnScrollListener(this) { // from class: androidx.appcompat.app.AlertController.4
                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                        AlertController.m22302g(absListView, view2, view3);
                    }

                    @Override // android.widget.AbsListView.OnScrollListener
                    public void onScrollStateChanged(AbsListView absListView, int i3) {
                    }
                });
                this.f67g.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
                    @Override // java.lang.Runnable
                    public void run() {
                        AlertController.m22302g(AlertController.this.f67g, view2, view3);
                    }
                });
                return;
            }
            if (view2 != null) {
                viewGroup.removeView(view2);
            }
            if (view3 != null) {
                viewGroup.removeView(view3);
            }
        }
    }

    /* renamed from: v */
    private void m22287v(ViewGroup viewGroup) {
        boolean z;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f75o = button;
        button.setOnClickListener(this.f60S);
        boolean z2 = true;
        if (!TextUtils.isEmpty(this.f76p) || this.f78r != null) {
            this.f75o.setText(this.f76p);
            Drawable drawable = this.f78r;
            if (drawable != null) {
                int i = this.f64d;
                drawable.setBounds(0, 0, i, i);
                this.f75o.setCompoundDrawables(this.f78r, null, null, null);
            }
            this.f75o.setVisibility(0);
            z = true;
        } else {
            this.f75o.setVisibility(8);
            z = false;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f79s = button2;
        button2.setOnClickListener(this.f60S);
        if (!TextUtils.isEmpty(this.f80t) || this.f82v != null) {
            this.f79s.setText(this.f80t);
            Drawable drawable2 = this.f82v;
            if (drawable2 != null) {
                int i2 = this.f64d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f79s.setCompoundDrawables(this.f82v, null, null, null);
            }
            this.f79s.setVisibility(0);
            z |= true;
        } else {
            this.f79s.setVisibility(8);
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f83w = button3;
        button3.setOnClickListener(this.f60S);
        if (!TextUtils.isEmpty(this.f84x) || this.f86z != null) {
            this.f83w.setText(this.f84x);
            Drawable drawable3 = this.f86z;
            if (drawable3 != null) {
                int i3 = this.f64d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f83w.setCompoundDrawables(this.f86z, null, null, null);
            }
            this.f83w.setVisibility(0);
            z |= true;
        } else {
            this.f83w.setVisibility(8);
        }
        if (m22309A(this.f61a)) {
            if (z) {
                m22307b(this.f75o);
            } else if (z) {
                m22307b(this.f79s);
            } else if (z) {
                m22307b(this.f83w);
            }
        }
        if (!z) {
            z2 = false;
        }
        if (!z2) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: w */
    private void m22286w(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f63c.findViewById(C0042R.C0045id.scrollView);
        this.f42A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f42A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f47F = textView;
        if (textView != null) {
            CharSequence charSequence = this.f66f;
            if (charSequence != null) {
                textView.setText(charSequence);
                return;
            }
            textView.setVisibility(8);
            this.f42A.removeView(this.f47F);
            if (this.f67g != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.f42A.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.f42A);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.f67g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: x */
    private void m22285x(ViewGroup viewGroup) {
        View view = this.f68h;
        boolean z = false;
        if (view == null) {
            view = this.f69i != 0 ? LayoutInflater.from(this.f61a).inflate(this.f69i, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m22308a(view)) {
            this.f63c.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.f63c.findViewById(C0042R.C0045id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f74n) {
                frameLayout.setPadding(this.f70j, this.f71k, this.f72l, this.f73m);
            }
            if (this.f67g != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).f1099a = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* renamed from: y */
    private void m22284y(ViewGroup viewGroup) {
        if (this.f48G != null) {
            viewGroup.addView(this.f48G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f63c.findViewById(C0042R.C0045id.title_template).setVisibility(8);
            return;
        }
        this.f45D = (ImageView) this.f63c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f65e)) || !this.f57P) {
            this.f63c.findViewById(C0042R.C0045id.title_template).setVisibility(8);
            this.f45D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f63c.findViewById(C0042R.C0045id.alertTitle);
        this.f46E = textView;
        textView.setText(this.f65e);
        int i = this.f43B;
        if (i != 0) {
            this.f45D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f44C;
        if (drawable != null) {
            this.f45D.setImageDrawable(drawable);
            return;
        }
        this.f46E.setPadding(this.f45D.getPaddingLeft(), this.f45D.getPaddingTop(), this.f45D.getPaddingRight(), this.f45D.getPaddingBottom());
        this.f45D.setVisibility(8);
    }

    /* renamed from: z */
    private void m22283z() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f63c.findViewById(C0042R.C0045id.parentPanel);
        View findViewById4 = findViewById3.findViewById(C0042R.C0045id.topPanel);
        View findViewById5 = findViewById3.findViewById(C0042R.C0045id.contentPanel);
        View findViewById6 = findViewById3.findViewById(C0042R.C0045id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C0042R.C0045id.customPanel);
        m22285x(viewGroup);
        View findViewById7 = viewGroup.findViewById(C0042R.C0045id.topPanel);
        View findViewById8 = viewGroup.findViewById(C0042R.C0045id.contentPanel);
        View findViewById9 = viewGroup.findViewById(C0042R.C0045id.buttonPanel);
        ViewGroup j = m22299j(findViewById7, findViewById4);
        ViewGroup j2 = m22299j(findViewById8, findViewById5);
        ViewGroup j3 = m22299j(findViewById9, findViewById6);
        m22286w(j2);
        m22287v(j3);
        m22284y(j);
        int i = 0;
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (j == null || j.getVisibility() == 8) ? false : true;
        boolean z3 = (j3 == null || j3.getVisibility() == 8) ? false : true;
        if (!(z3 || j2 == null || (findViewById2 = j2.findViewById(C0042R.C0045id.textSpacerNoButtons)) == null)) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f42A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (!(this.f66f == null && this.f67g == null)) {
                view = j.findViewById(C0042R.C0045id.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (!(j2 == null || (findViewById = j2.findViewById(C0042R.C0045id.textSpacerNoTitle)) == null)) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f67g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z2, z3);
        }
        if (!z) {
            View view2 = this.f67g;
            if (view2 == null) {
                view2 = this.f42A;
            }
            if (view2 != null) {
                if (z3) {
                    i = 2;
                }
                int i2 = z2 ? 1 : 0;
                char c = z2 ? 1 : 0;
                m22292q(j2, view2, i2 | i, 3);
            }
        }
        ListView listView2 = this.f67g;
        if (listView2 != null && (listAdapter = this.f49H) != null) {
            listView2.setAdapter(listAdapter);
            int i3 = this.f50I;
            if (i3 > -1) {
                listView2.setItemChecked(i3, true);
                listView2.setSelection(i3);
            }
        }
    }

    /* renamed from: c */
    public Button m22306c(int i) {
        if (i == -3) {
            return this.f83w;
        }
        if (i == -2) {
            return this.f79s;
        }
        if (i != -1) {
            return null;
        }
        return this.f75o;
    }

    /* renamed from: d */
    public int m22305d(int i) {
        TypedValue typedValue = new TypedValue();
        this.f61a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: e */
    public ListView m22304e() {
        return this.f67g;
    }

    /* renamed from: f */
    public void m22303f() {
        this.f62b.setContentView(m22298k());
        m22283z();
    }

    /* renamed from: h */
    public boolean m22301h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f42A;
        return nestedScrollView != null && nestedScrollView.m18859q(keyEvent);
    }

    /* renamed from: i */
    public boolean m22300i(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f42A;
        return nestedScrollView != null && nestedScrollView.m18859q(keyEvent);
    }

    /* renamed from: l */
    public void m22297l(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f59R.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f84x = charSequence;
            this.f85y = message2;
            this.f86z = drawable;
        } else if (i == -2) {
            this.f80t = charSequence;
            this.f81u = message2;
            this.f82v = drawable;
        } else if (i == -1) {
            this.f76p = charSequence;
            this.f77q = message2;
            this.f78r = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    /* renamed from: m */
    public void m22296m(View view) {
        this.f48G = view;
    }

    /* renamed from: n */
    public void m22295n(int i) {
        this.f44C = null;
        this.f43B = i;
        ImageView imageView = this.f45D;
        if (imageView == null) {
            return;
        }
        if (i != 0) {
            imageView.setVisibility(0);
            this.f45D.setImageResource(this.f43B);
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: o */
    public void m22294o(Drawable drawable) {
        this.f44C = drawable;
        this.f43B = 0;
        ImageView imageView = this.f45D;
        if (imageView == null) {
            return;
        }
        if (drawable != null) {
            imageView.setVisibility(0);
            this.f45D.setImageDrawable(drawable);
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: p */
    public void m22293p(CharSequence charSequence) {
        this.f66f = charSequence;
        TextView textView = this.f47F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: r */
    public void m22291r(CharSequence charSequence) {
        this.f65e = charSequence;
        TextView textView = this.f46E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: s */
    public void m22290s(int i) {
        this.f68h = null;
        this.f69i = i;
        this.f74n = false;
    }

    /* renamed from: t */
    public void m22289t(View view) {
        this.f68h = view;
        this.f69i = 0;
        this.f74n = false;
    }

    /* renamed from: u */
    public void m22288u(View view, int i, int i2, int i3, int i4) {
        this.f68h = view;
        this.f69i = 0;
        this.f74n = true;
        this.f70j = i;
        this.f71k = i2;
        this.f72l = i3;
        this.f73m = i4;
    }
}
