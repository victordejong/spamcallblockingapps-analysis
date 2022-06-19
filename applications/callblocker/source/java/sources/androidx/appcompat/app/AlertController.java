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
import android.widget.BaseAdapter;
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
import androidx.appcompat.C0083a;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.p026h.C0595u;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    private int f208A;

    /* renamed from: C */
    private CharSequence f210C;

    /* renamed from: D */
    private Drawable f211D;

    /* renamed from: E */
    private CharSequence f212E;

    /* renamed from: F */
    private Drawable f213F;

    /* renamed from: G */
    private CharSequence f214G;

    /* renamed from: H */
    private Drawable f215H;

    /* renamed from: J */
    private Drawable f217J;

    /* renamed from: K */
    private ImageView f218K;

    /* renamed from: L */
    private TextView f219L;

    /* renamed from: M */
    private TextView f220M;

    /* renamed from: N */
    private View f221N;

    /* renamed from: O */
    private int f222O;

    /* renamed from: P */
    private int f223P;

    /* renamed from: Q */
    private boolean f224Q;

    /* renamed from: a */
    final DialogC0139g f227a;

    /* renamed from: b */
    ListView f228b;

    /* renamed from: c */
    Button f229c;

    /* renamed from: d */
    Message f230d;

    /* renamed from: e */
    Button f231e;

    /* renamed from: f */
    Message f232f;

    /* renamed from: g */
    Button f233g;

    /* renamed from: h */
    Message f234h;

    /* renamed from: i */
    NestedScrollView f235i;

    /* renamed from: j */
    ListAdapter f236j;

    /* renamed from: l */
    int f238l;

    /* renamed from: m */
    int f239m;

    /* renamed from: n */
    int f240n;

    /* renamed from: o */
    int f241o;

    /* renamed from: p */
    Handler f242p;

    /* renamed from: q */
    private final Context f243q;

    /* renamed from: r */
    private final Window f244r;

    /* renamed from: s */
    private final int f245s;

    /* renamed from: t */
    private CharSequence f246t;

    /* renamed from: u */
    private CharSequence f247u;

    /* renamed from: v */
    private View f248v;

    /* renamed from: w */
    private int f249w;

    /* renamed from: x */
    private int f250x;

    /* renamed from: y */
    private int f251y;

    /* renamed from: z */
    private int f252z;

    /* renamed from: B */
    private boolean f209B = false;

    /* renamed from: I */
    private int f216I = 0;

    /* renamed from: k */
    int f237k = -1;

    /* renamed from: R */
    private int f225R = 0;

    /* renamed from: S */
    private final View.OnClickListener f226S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message obtain = (view != AlertController.this.f229c || AlertController.this.f230d == null) ? (view != AlertController.this.f231e || AlertController.this.f232f == null) ? (view != AlertController.this.f233g || AlertController.this.f234h == null) ? null : Message.obtain(AlertController.this.f234h) : Message.obtain(AlertController.this.f232f) : Message.obtain(AlertController.this.f230d);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController.this.f242p.obtainMessage(1, AlertController.this.f227a).sendToTarget();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        private final int f266a;

        /* renamed from: b */
        private final int f267b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0083a.C0093j.RecycleListView);
            this.f267b = obtainStyledAttributes.getDimensionPixelOffset(C0083a.C0093j.RecycleListView_paddingBottomNoButtons, -1);
            this.f266a = obtainStyledAttributes.getDimensionPixelOffset(C0083a.C0093j.RecycleListView_paddingTopNoTitle, -1);
        }

        /* renamed from: a */
        public void m22245a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f266a, getPaddingRight(), z2 ? getPaddingBottom() : this.f267b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public static class C0101a {

        /* renamed from: A */
        public int f268A;

        /* renamed from: B */
        public int f269B;

        /* renamed from: C */
        public int f270C;

        /* renamed from: D */
        public int f271D;

        /* renamed from: F */
        public boolean[] f273F;

        /* renamed from: G */
        public boolean f274G;

        /* renamed from: H */
        public boolean f275H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f277J;

        /* renamed from: K */
        public Cursor f278K;

        /* renamed from: L */
        public String f279L;

        /* renamed from: M */
        public String f280M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f281N;

        /* renamed from: O */
        public AbstractC0106a f282O;

        /* renamed from: a */
        public final Context f284a;

        /* renamed from: b */
        public final LayoutInflater f285b;

        /* renamed from: d */
        public Drawable f287d;

        /* renamed from: f */
        public CharSequence f289f;

        /* renamed from: g */
        public View f290g;

        /* renamed from: h */
        public CharSequence f291h;

        /* renamed from: i */
        public CharSequence f292i;

        /* renamed from: j */
        public Drawable f293j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f294k;

        /* renamed from: l */
        public CharSequence f295l;

        /* renamed from: m */
        public Drawable f296m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f297n;

        /* renamed from: o */
        public CharSequence f298o;

        /* renamed from: p */
        public Drawable f299p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f300q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f302s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f303t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f304u;

        /* renamed from: v */
        public CharSequence[] f305v;

        /* renamed from: w */
        public ListAdapter f306w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f307x;

        /* renamed from: y */
        public int f308y;

        /* renamed from: z */
        public View f309z;

        /* renamed from: c */
        public int f286c = 0;

        /* renamed from: e */
        public int f288e = 0;

        /* renamed from: E */
        public boolean f272E = false;

        /* renamed from: I */
        public int f276I = -1;

        /* renamed from: P */
        public boolean f283P = true;

        /* renamed from: r */
        public boolean f301r = true;

        /* renamed from: androidx.appcompat.app.AlertController$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a$a.class */
        public interface AbstractC0106a {
            /* renamed from: a */
            void m22242a(ListView listView);
        }

        public C0101a(Context context) {
            this.f284a = context;
            this.f285b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v16, types: [android.widget.ListAdapter] */
        /* renamed from: b */
        private void m22243b(final AlertController alertController) {
            BaseAdapter simpleCursorAdapter;
            final RecycleListView recycleListView = (RecycleListView) this.f285b.inflate(alertController.f238l, (ViewGroup) null);
            if (this.f274G) {
                simpleCursorAdapter = this.f278K == null ? new ArrayAdapter<CharSequence>(this.f284a, alertController.f239m, 16908308, this.f305v) { // from class: androidx.appcompat.app.AlertController.a.1
                    @Override // android.widget.ArrayAdapter, android.widget.Adapter
                    public View getView(int i, View view, ViewGroup viewGroup) {
                        View view2 = super.getView(i, view, viewGroup);
                        if (C0101a.this.f273F != null && C0101a.this.f273F[i]) {
                            recycleListView.setItemChecked(i, true);
                        }
                        return view2;
                    }
                } : new CursorAdapter(this.f284a, this.f278K, false) { // from class: androidx.appcompat.app.AlertController.a.2

                    /* renamed from: d */
                    private final int f315d;

                    /* renamed from: e */
                    private final int f316e;

                    {
                        C0101a.this = this;
                        Cursor cursor = getCursor();
                        this.f315d = cursor.getColumnIndexOrThrow(C0101a.this.f279L);
                        this.f316e = cursor.getColumnIndexOrThrow(C0101a.this.f280M);
                    }

                    @Override // android.widget.CursorAdapter
                    public void bindView(View view, Context context, Cursor cursor) {
                        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f315d));
                        recycleListView.setItemChecked(cursor.getPosition(), cursor.getInt(this.f316e) == 1);
                    }

                    @Override // android.widget.CursorAdapter
                    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                        return C0101a.this.f285b.inflate(alertController.f239m, viewGroup, false);
                    }
                };
            } else {
                int i = this.f275H ? alertController.f240n : alertController.f241o;
                simpleCursorAdapter = this.f278K != null ? new SimpleCursorAdapter(this.f284a, i, this.f278K, new String[]{this.f279L}, new int[]{16908308}) : this.f306w != null ? this.f306w : new C0108c(this.f284a, i, 16908308, this.f305v);
            }
            if (this.f282O != null) {
                this.f282O.m22242a(recycleListView);
            }
            alertController.f236j = simpleCursorAdapter;
            alertController.f237k = this.f276I;
            if (this.f307x != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        C0101a.this.f307x.onClick(alertController.f227a, i2);
                        if (!C0101a.this.f275H) {
                            alertController.f227a.dismiss();
                        }
                    }
                });
            } else if (this.f277J != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        if (C0101a.this.f273F != null) {
                            C0101a.this.f273F[i2] = recycleListView.isItemChecked(i2);
                        }
                        C0101a.this.f277J.onClick(alertController.f227a, i2, recycleListView.isItemChecked(i2));
                    }
                });
            }
            if (this.f281N != null) {
                recycleListView.setOnItemSelectedListener(this.f281N);
            }
            if (this.f275H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f274G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f228b = recycleListView;
        }

        /* renamed from: a */
        public void m22244a(AlertController alertController) {
            if (this.f290g != null) {
                alertController.m22254b(this.f290g);
            } else {
                if (this.f289f != null) {
                    alertController.m22258a(this.f289f);
                }
                if (this.f287d != null) {
                    alertController.m22266a(this.f287d);
                }
                if (this.f286c != 0) {
                    alertController.m22256b(this.f286c);
                }
                if (this.f288e != 0) {
                    alertController.m22256b(alertController.m22250c(this.f288e));
                }
            }
            if (this.f291h != null) {
                alertController.m22252b(this.f291h);
            }
            if (this.f292i != null || this.f293j != null) {
                alertController.m22268a(-1, this.f292i, this.f294k, (Message) null, this.f293j);
            }
            if (this.f295l != null || this.f296m != null) {
                alertController.m22268a(-2, this.f295l, this.f297n, (Message) null, this.f296m);
            }
            if (this.f298o != null || this.f299p != null) {
                alertController.m22268a(-3, this.f298o, this.f300q, (Message) null, this.f299p);
            }
            if (this.f305v != null || this.f278K != null || this.f306w != null) {
                m22243b(alertController);
            }
            if (this.f309z == null) {
                if (this.f308y == 0) {
                    return;
                }
                alertController.m22270a(this.f308y);
            } else if (this.f272E) {
                alertController.m22264a(this.f309z, this.f268A, this.f269B, this.f270C, this.f271D);
            } else {
                alertController.m22249c(this.f309z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public static final class HandlerC0107b extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f322a;

        public HandlerC0107b(DialogInterface dialogInterface) {
            this.f322a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case -3:
                case -2:
                case -1:
                    ((DialogInterface.OnClickListener) message.obj).onClick(this.f322a.get(), message.what);
                    return;
                case 0:
                default:
                    return;
                case 1:
                    ((DialogInterface) message.obj).dismiss();
                    return;
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public static class C0108c extends ArrayAdapter<CharSequence> {
        public C0108c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, DialogC0139g dialogC0139g, Window window) {
        this.f243q = context;
        this.f227a = dialogC0139g;
        this.f244r = window;
        this.f242p = new HandlerC0107b(dialogC0139g);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0083a.C0093j.AlertDialog, C0083a.C0084a.alertDialogStyle, 0);
        this.f222O = obtainStyledAttributes.getResourceId(C0083a.C0093j.AlertDialog_android_layout, 0);
        this.f223P = obtainStyledAttributes.getResourceId(C0083a.C0093j.AlertDialog_buttonPanelSideLayout, 0);
        this.f238l = obtainStyledAttributes.getResourceId(C0083a.C0093j.AlertDialog_listLayout, 0);
        this.f239m = obtainStyledAttributes.getResourceId(C0083a.C0093j.AlertDialog_multiChoiceItemLayout, 0);
        this.f240n = obtainStyledAttributes.getResourceId(C0083a.C0093j.AlertDialog_singleChoiceItemLayout, 0);
        this.f241o = obtainStyledAttributes.getResourceId(C0083a.C0093j.AlertDialog_listItemLayout, 0);
        this.f224Q = obtainStyledAttributes.getBoolean(C0083a.C0093j.AlertDialog_showTitle, true);
        this.f245s = obtainStyledAttributes.getDimensionPixelSize(C0083a.C0093j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dialogC0139g.m22117a(1);
    }

    /* renamed from: a */
    private ViewGroup m22263a(View view, View view2) {
        ViewGroup viewGroup;
        if (view == null) {
            viewGroup = (ViewGroup) (view2 instanceof ViewStub ? ((ViewStub) view2).inflate() : view2);
        } else {
            if (view2 != null) {
                ViewParent parent = view2.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(view2);
                }
            }
            if (view instanceof ViewStub) {
                view = ((ViewStub) view).inflate();
            }
            viewGroup = (ViewGroup) view;
        }
        return viewGroup;
    }

    /* renamed from: a */
    static void m22262a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: a */
    private void m22261a(ViewGroup viewGroup) {
        boolean z = false;
        View inflate = this.f248v != null ? this.f248v : this.f249w != 0 ? LayoutInflater.from(this.f243q).inflate(this.f249w, viewGroup, false) : null;
        if (inflate != null) {
            z = true;
        }
        if (!z || !m22265a(inflate)) {
            this.f244r.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f244r.findViewById(C0083a.C0089f.custom);
        frameLayout.addView(inflate, new ViewGroup.LayoutParams(-1, -1));
        if (this.f209B) {
            frameLayout.setPadding(this.f250x, this.f251y, this.f252z, this.f208A);
        }
        if (this.f228b == null) {
            return;
        }
        ((LinearLayoutCompat.C0250a) viewGroup.getLayoutParams()).f1056g = 0.0f;
    }

    /* renamed from: a */
    private void m22260a(ViewGroup viewGroup, View view, int i, int i2) {
        View view2 = null;
        View findViewById = this.f244r.findViewById(C0083a.C0089f.scrollIndicatorUp);
        View findViewById2 = this.f244r.findViewById(C0083a.C0089f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            C0595u.m20356a(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 == null) {
                return;
            }
            viewGroup.removeView(findViewById2);
            return;
        }
        View view3 = findViewById;
        if (findViewById != null) {
            view3 = findViewById;
            if ((i & 1) == 0) {
                viewGroup.removeView(findViewById);
                view3 = null;
            }
        }
        if (findViewById2 == null || (i & 2) != 0) {
            view2 = findViewById2;
        } else {
            viewGroup.removeView(findViewById2);
        }
        if (view3 == null && view2 == null) {
            return;
        }
        if (this.f247u != null) {
            final View view4 = view3;
            final View view5 = view2;
            this.f235i.setOnScrollChangeListener(new NestedScrollView.AbstractC0615b() { // from class: androidx.appcompat.app.AlertController.2
                @Override // androidx.core.widget.NestedScrollView.AbstractC0615b
                /* renamed from: a */
                public void mo20198a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                    AlertController.m22262a(nestedScrollView, view4, view5);
                }
            });
            final View view6 = view3;
            final View view7 = view2;
            this.f235i.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.m22262a(AlertController.this.f235i, view6, view7);
                }
            });
        } else if (this.f228b == null) {
            if (view3 != null) {
                viewGroup.removeView(view3);
            }
            if (view2 == null) {
                return;
            }
            viewGroup.removeView(view2);
        } else {
            final View view8 = view3;
            final View view9 = view2;
            this.f228b.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.appcompat.app.AlertController.4
                @Override // android.widget.AbsListView.OnScrollListener
                public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                    AlertController.m22262a(absListView, view8, view9);
                }

                @Override // android.widget.AbsListView.OnScrollListener
                public void onScrollStateChanged(AbsListView absListView, int i3) {
                }
            });
            final View view10 = view3;
            final View view11 = view2;
            this.f228b.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.m22262a(AlertController.this.f228b, view10, view11);
                }
            });
        }
    }

    /* renamed from: a */
    private void m22259a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    private static boolean m22267a(Context context) {
        boolean z = true;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0083a.C0084a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    static boolean m22265a(View view) {
        boolean z = true;
        if (!view.onCheckIsTextEditor()) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                while (true) {
                    if (childCount <= 0) {
                        z = false;
                        break;
                    }
                    int i = childCount - 1;
                    childCount = i;
                    if (m22265a(viewGroup.getChildAt(i))) {
                        break;
                    }
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    private void m22253b(ViewGroup viewGroup) {
        if (this.f221N != null) {
            viewGroup.addView(this.f221N, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f244r.findViewById(C0083a.C0089f.title_template).setVisibility(8);
            return;
        }
        this.f218K = (ImageView) this.f244r.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f246t)) || !this.f224Q) {
            this.f244r.findViewById(C0083a.C0089f.title_template).setVisibility(8);
            this.f218K.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        this.f219L = (TextView) this.f244r.findViewById(C0083a.C0089f.alertTitle);
        this.f219L.setText(this.f246t);
        if (this.f216I != 0) {
            this.f218K.setImageResource(this.f216I);
        } else if (this.f217J != null) {
            this.f218K.setImageDrawable(this.f217J);
        } else {
            this.f219L.setPadding(this.f218K.getPaddingLeft(), this.f218K.getPaddingTop(), this.f218K.getPaddingRight(), this.f218K.getPaddingBottom());
            this.f218K.setVisibility(8);
        }
    }

    /* renamed from: c */
    private int m22251c() {
        return this.f223P == 0 ? this.f222O : this.f225R == 1 ? this.f223P : this.f222O;
    }

    /* renamed from: c */
    private void m22248c(ViewGroup viewGroup) {
        this.f235i = (NestedScrollView) this.f244r.findViewById(C0083a.C0089f.scrollView);
        this.f235i.setFocusable(false);
        this.f235i.setNestedScrollingEnabled(false);
        this.f220M = (TextView) viewGroup.findViewById(16908299);
        if (this.f220M == null) {
            return;
        }
        if (this.f247u != null) {
            this.f220M.setText(this.f247u);
            return;
        }
        this.f220M.setVisibility(8);
        this.f235i.removeView(this.f220M);
        if (this.f228b == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f235i.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f235i);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f228b, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: d */
    private void m22247d() {
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f244r.findViewById(C0083a.C0089f.parentPanel);
        View findViewById4 = findViewById3.findViewById(C0083a.C0089f.topPanel);
        View findViewById5 = findViewById3.findViewById(C0083a.C0089f.contentPanel);
        View findViewById6 = findViewById3.findViewById(C0083a.C0089f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C0083a.C0089f.customPanel);
        m22261a(viewGroup);
        View findViewById7 = viewGroup.findViewById(C0083a.C0089f.topPanel);
        View findViewById8 = viewGroup.findViewById(C0083a.C0089f.contentPanel);
        View findViewById9 = viewGroup.findViewById(C0083a.C0089f.buttonPanel);
        ViewGroup m22263a = m22263a(findViewById7, findViewById4);
        ViewGroup m22263a2 = m22263a(findViewById8, findViewById5);
        ViewGroup m22263a3 = m22263a(findViewById9, findViewById6);
        m22248c(m22263a2);
        m22246d(m22263a3);
        m22253b(m22263a);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (m22263a == null || m22263a.getVisibility() == 8) ? false : true;
        boolean z3 = (m22263a3 == null || m22263a3.getVisibility() == 8) ? false : true;
        if (!z3 && m22263a2 != null && (findViewById2 = m22263a2.findViewById(C0083a.C0089f.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            if (this.f235i != null) {
                this.f235i.setClipToPadding(true);
            }
            View view = null;
            if (this.f247u != null || this.f228b != null) {
                view = m22263a.findViewById(C0083a.C0089f.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m22263a2 != null && (findViewById = m22263a2.findViewById(C0083a.C0089f.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        if (this.f228b instanceof RecycleListView) {
            ((RecycleListView) this.f228b).m22245a(z2, z3);
        }
        if (!z) {
            ListView listView = this.f228b != null ? this.f228b : this.f235i;
            if (listView != null) {
                m22260a(m22263a2, listView, (z3 ? 2 : 0) | (z2 ? 1 : 0), 3);
            }
        }
        ListView listView2 = this.f228b;
        if (listView2 == null || this.f236j == null) {
            return;
        }
        listView2.setAdapter(this.f236j);
        int i = this.f237k;
        if (i <= -1) {
            return;
        }
        listView2.setItemChecked(i, true);
        listView2.setSelection(i);
    }

    /* renamed from: d */
    private void m22246d(ViewGroup viewGroup) {
        boolean z;
        this.f229c = (Button) viewGroup.findViewById(16908313);
        this.f229c.setOnClickListener(this.f226S);
        if (!TextUtils.isEmpty(this.f210C) || this.f211D != null) {
            this.f229c.setText(this.f210C);
            if (this.f211D != null) {
                this.f211D.setBounds(0, 0, this.f245s, this.f245s);
                this.f229c.setCompoundDrawables(this.f211D, null, null, null);
            }
            this.f229c.setVisibility(0);
            z = true;
        } else {
            this.f229c.setVisibility(8);
            z = false;
        }
        this.f231e = (Button) viewGroup.findViewById(16908314);
        this.f231e.setOnClickListener(this.f226S);
        if (!TextUtils.isEmpty(this.f212E) || this.f213F != null) {
            this.f231e.setText(this.f212E);
            if (this.f213F != null) {
                this.f213F.setBounds(0, 0, this.f245s, this.f245s);
                this.f231e.setCompoundDrawables(this.f213F, null, null, null);
            }
            this.f231e.setVisibility(0);
            z |= true;
        } else {
            this.f231e.setVisibility(8);
        }
        this.f233g = (Button) viewGroup.findViewById(16908315);
        this.f233g.setOnClickListener(this.f226S);
        if (!TextUtils.isEmpty(this.f214G) || this.f215H != null) {
            this.f233g.setText(this.f214G);
            if (this.f211D != null) {
                this.f211D.setBounds(0, 0, this.f245s, this.f245s);
                this.f229c.setCompoundDrawables(this.f211D, null, null, null);
            }
            this.f233g.setVisibility(0);
            z |= true;
        } else {
            this.f233g.setVisibility(8);
        }
        if (m22267a(this.f243q)) {
            if (z) {
                m22259a(this.f229c);
            } else if (z) {
                m22259a(this.f231e);
            } else if (z) {
                m22259a(this.f233g);
            }
        }
        if (!(z)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void m22271a() {
        this.f227a.setContentView(m22251c());
        m22247d();
    }

    /* renamed from: a */
    public void m22270a(int i) {
        this.f248v = null;
        this.f249w = i;
        this.f209B = false;
    }

    /* renamed from: a */
    public void m22268a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f242p.obtainMessage(i, onClickListener);
            }
        }
        switch (i) {
            case -3:
                this.f214G = charSequence;
                this.f234h = message2;
                this.f215H = drawable;
                return;
            case -2:
                this.f212E = charSequence;
                this.f232f = message2;
                this.f213F = drawable;
                return;
            case -1:
                this.f210C = charSequence;
                this.f230d = message2;
                this.f211D = drawable;
                return;
            default:
                throw new IllegalArgumentException("Button does not exist");
        }
    }

    /* renamed from: a */
    public void m22266a(Drawable drawable) {
        this.f217J = drawable;
        this.f216I = 0;
        if (this.f218K != null) {
            if (drawable == null) {
                this.f218K.setVisibility(8);
                return;
            }
            this.f218K.setVisibility(0);
            this.f218K.setImageDrawable(drawable);
        }
    }

    /* renamed from: a */
    public void m22264a(View view, int i, int i2, int i3, int i4) {
        this.f248v = view;
        this.f249w = 0;
        this.f209B = true;
        this.f250x = i;
        this.f251y = i2;
        this.f252z = i3;
        this.f208A = i4;
    }

    /* renamed from: a */
    public void m22258a(CharSequence charSequence) {
        this.f246t = charSequence;
        if (this.f219L != null) {
            this.f219L.setText(charSequence);
        }
    }

    /* renamed from: a */
    public boolean m22269a(int i, KeyEvent keyEvent) {
        return this.f235i != null && this.f235i.m20229a(keyEvent);
    }

    /* renamed from: b */
    public ListView m22257b() {
        return this.f228b;
    }

    /* renamed from: b */
    public void m22256b(int i) {
        this.f217J = null;
        this.f216I = i;
        if (this.f218K != null) {
            if (i == 0) {
                this.f218K.setVisibility(8);
                return;
            }
            this.f218K.setVisibility(0);
            this.f218K.setImageResource(this.f216I);
        }
    }

    /* renamed from: b */
    public void m22254b(View view) {
        this.f221N = view;
    }

    /* renamed from: b */
    public void m22252b(CharSequence charSequence) {
        this.f247u = charSequence;
        if (this.f220M != null) {
            this.f220M.setText(charSequence);
        }
    }

    /* renamed from: b */
    public boolean m22255b(int i, KeyEvent keyEvent) {
        return this.f235i != null && this.f235i.m20229a(keyEvent);
    }

    /* renamed from: c */
    public int m22250c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f243q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: c */
    public void m22249c(View view) {
        this.f248v = view;
        this.f249w = 0;
        this.f209B = false;
    }
}
