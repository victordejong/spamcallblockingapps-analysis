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
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
import p020b.p021a.C1423a;
import p020b.p021a.C1428f;
import p020b.p021a.C1432j;
import p020b.p041h.p050l.C1679w;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    NestedScrollView f209A;

    /* renamed from: C */
    private Drawable f211C;

    /* renamed from: D */
    private ImageView f212D;

    /* renamed from: E */
    private TextView f213E;

    /* renamed from: F */
    private TextView f214F;

    /* renamed from: G */
    private View f215G;

    /* renamed from: H */
    ListAdapter f216H;

    /* renamed from: J */
    private int f218J;

    /* renamed from: K */
    private int f219K;

    /* renamed from: L */
    int f220L;

    /* renamed from: M */
    int f221M;

    /* renamed from: N */
    int f222N;

    /* renamed from: O */
    int f223O;

    /* renamed from: P */
    private boolean f224P;

    /* renamed from: R */
    Handler f226R;

    /* renamed from: a */
    private final Context f228a;

    /* renamed from: b */
    final DialogC0150d f229b;

    /* renamed from: c */
    private final Window f230c;

    /* renamed from: d */
    private final int f231d;

    /* renamed from: e */
    private CharSequence f232e;

    /* renamed from: f */
    private CharSequence f233f;

    /* renamed from: g */
    ListView f234g;

    /* renamed from: h */
    private View f235h;

    /* renamed from: i */
    private int f236i;

    /* renamed from: j */
    private int f237j;

    /* renamed from: k */
    private int f238k;

    /* renamed from: l */
    private int f239l;

    /* renamed from: m */
    private int f240m;

    /* renamed from: o */
    Button f242o;

    /* renamed from: p */
    private CharSequence f243p;

    /* renamed from: q */
    Message f244q;

    /* renamed from: r */
    private Drawable f245r;

    /* renamed from: s */
    Button f246s;

    /* renamed from: t */
    private CharSequence f247t;

    /* renamed from: u */
    Message f248u;

    /* renamed from: v */
    private Drawable f249v;

    /* renamed from: w */
    Button f250w;

    /* renamed from: x */
    private CharSequence f251x;

    /* renamed from: y */
    Message f252y;

    /* renamed from: z */
    private Drawable f253z;

    /* renamed from: n */
    private boolean f241n = false;

    /* renamed from: B */
    private int f210B = 0;

    /* renamed from: I */
    int f217I = -1;

    /* renamed from: Q */
    private int f225Q = 0;

    /* renamed from: S */
    private final View.OnClickListener f227S = new View$OnClickListenerC0107a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: d */
        private final int f254d;

        /* renamed from: e */
        private final int f255e;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1432j.RecycleListView);
            this.f255e = obtainStyledAttributes.getDimensionPixelOffset(C1432j.RecycleListView_paddingBottomNoButtons, -1);
            this.f254d = obtainStyledAttributes.getDimensionPixelOffset(C1432j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f254d, getPaddingRight(), z2 ? getPaddingBottom() : this.f255e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public class View$OnClickListenerC0107a implements View.OnClickListener {
        View$OnClickListenerC0107a() {
            AlertController.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message obtain = (view != alertController.f242o || (message3 = alertController.f244q) == null) ? (view != alertController.f246s || (message2 = alertController.f248u) == null) ? (view != alertController.f250w || (message = alertController.f252y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.f226R.obtainMessage(1, alertController2.f229b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public class C0108b implements NestedScrollView.AbstractC0636b {

        /* renamed from: a */
        final /* synthetic */ View f257a;

        /* renamed from: b */
        final /* synthetic */ View f258b;

        C0108b(View view, View view2) {
            AlertController.this = r4;
            this.f257a = view;
            this.f258b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.AbstractC0636b
        /* renamed from: a */
        public void mo26923a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.m35693g(nestedScrollView, this.f257a, this.f258b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public class RunnableC0109c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f260d;

        /* renamed from: e */
        final /* synthetic */ View f261e;

        RunnableC0109c(View view, View view2) {
            AlertController.this = r4;
            this.f260d = view;
            this.f261e = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m35693g(AlertController.this.f209A, this.f260d, this.f261e);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public class C0110d implements AbsListView.OnScrollListener {

        /* renamed from: a */
        final /* synthetic */ View f263a;

        /* renamed from: b */
        final /* synthetic */ View f264b;

        C0110d(View view, View view2) {
            AlertController.this = r4;
            this.f263a = view;
            this.f264b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m35693g(absListView, this.f263a, this.f264b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$e.class */
    public class RunnableC0111e implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f266d;

        /* renamed from: e */
        final /* synthetic */ View f267e;

        RunnableC0111e(View view, View view2) {
            AlertController.this = r4;
            this.f266d = view;
            this.f267e = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m35693g(AlertController.this.f234g, this.f266d, this.f267e);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f.class */
    public static class C0112f {

        /* renamed from: A */
        public int f269A;

        /* renamed from: B */
        public int f270B;

        /* renamed from: C */
        public int f271C;

        /* renamed from: D */
        public int f272D;

        /* renamed from: F */
        public boolean[] f274F;

        /* renamed from: G */
        public boolean f275G;

        /* renamed from: H */
        public boolean f276H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f278J;

        /* renamed from: K */
        public Cursor f279K;

        /* renamed from: L */
        public String f280L;

        /* renamed from: M */
        public String f281M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f282N;

        /* renamed from: O */
        public AbstractC0117e f283O;

        /* renamed from: a */
        public final Context f285a;

        /* renamed from: b */
        public final LayoutInflater f286b;

        /* renamed from: d */
        public Drawable f288d;

        /* renamed from: f */
        public CharSequence f290f;

        /* renamed from: g */
        public View f291g;

        /* renamed from: h */
        public CharSequence f292h;

        /* renamed from: i */
        public CharSequence f293i;

        /* renamed from: j */
        public Drawable f294j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f295k;

        /* renamed from: l */
        public CharSequence f296l;

        /* renamed from: m */
        public Drawable f297m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f298n;

        /* renamed from: o */
        public CharSequence f299o;

        /* renamed from: p */
        public Drawable f300p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f301q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f303s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f304t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f305u;

        /* renamed from: v */
        public CharSequence[] f306v;

        /* renamed from: w */
        public ListAdapter f307w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f308x;

        /* renamed from: y */
        public int f309y;

        /* renamed from: z */
        public View f310z;

        /* renamed from: c */
        public int f287c = 0;

        /* renamed from: e */
        public int f289e = 0;

        /* renamed from: E */
        public boolean f273E = false;

        /* renamed from: I */
        public int f277I = -1;

        /* renamed from: P */
        public boolean f284P = true;

        /* renamed from: r */
        public boolean f302r = true;

        /* renamed from: androidx.appcompat.app.AlertController$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$a.class */
        public class C0113a extends ArrayAdapter<CharSequence> {

            /* renamed from: d */
            final /* synthetic */ RecycleListView f311d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0113a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                C0112f.this = r7;
                this.f311d = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0112f.this.f274F;
                if (zArr != null && zArr[i]) {
                    this.f311d.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$b.class */
        public class C0114b extends CursorAdapter {

            /* renamed from: d */
            private final int f313d;

            /* renamed from: e */
            private final int f314e;

            /* renamed from: f */
            final /* synthetic */ RecycleListView f315f;

            /* renamed from: g */
            final /* synthetic */ AlertController f316g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0114b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                C0112f.this = r6;
                this.f315f = recycleListView;
                this.f316g = alertController;
                Cursor cursor2 = getCursor();
                this.f313d = cursor2.getColumnIndexOrThrow(r6.f280L);
                this.f314e = cursor2.getColumnIndexOrThrow(r6.f281M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f313d));
                RecycleListView recycleListView = this.f315f;
                int position = cursor.getPosition();
                boolean z = true;
                if (cursor.getInt(this.f314e) != 1) {
                    z = false;
                }
                recycleListView.setItemChecked(position, z);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0112f.this.f286b.inflate(this.f316g.f221M, viewGroup, false);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$c.class */
        public class C0115c implements AdapterView.OnItemClickListener {

            /* renamed from: d */
            final /* synthetic */ AlertController f318d;

            C0115c(AlertController alertController) {
                C0112f.this = r4;
                this.f318d = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0112f.this.f308x.onClick(this.f318d.f229b, i);
                if (!C0112f.this.f276H) {
                    this.f318d.f229b.dismiss();
                }
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$d */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$d.class */
        public class C0116d implements AdapterView.OnItemClickListener {

            /* renamed from: d */
            final /* synthetic */ RecycleListView f320d;

            /* renamed from: e */
            final /* synthetic */ AlertController f321e;

            C0116d(RecycleListView recycleListView, AlertController alertController) {
                C0112f.this = r4;
                this.f320d = recycleListView;
                this.f321e = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0112f.this.f274F;
                if (zArr != null) {
                    zArr[i] = this.f320d.isItemChecked(i);
                }
                C0112f.this.f278J.onClick(this.f321e.f229b, i, this.f320d.isItemChecked(i));
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$e */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$e.class */
        public interface AbstractC0117e {
            /* renamed from: a */
            void m35671a(ListView listView);
        }

        public C0112f(Context context) {
            this.f285a = context;
            this.f286b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: b */
        private void m35672b(AlertController alertController) {
            C0113a c0113a;
            RecycleListView recycleListView = (RecycleListView) this.f286b.inflate(alertController.f220L, (ViewGroup) null);
            if (this.f275G) {
                c0113a = this.f279K == null ? new C0113a(this.f285a, alertController.f221M, 16908308, this.f306v, recycleListView) : new C0114b(this.f285a, this.f279K, false, recycleListView, alertController);
            } else {
                int i = this.f276H ? alertController.f222N : alertController.f223O;
                if (this.f279K != null) {
                    c0113a = new SimpleCursorAdapter(this.f285a, i, this.f279K, new String[]{this.f280L}, new int[]{16908308});
                } else {
                    c0113a = this.f307w;
                    if (c0113a == null) {
                        c0113a = new C0119h(this.f285a, i, 16908308, this.f306v);
                    }
                }
            }
            AbstractC0117e abstractC0117e = this.f283O;
            if (abstractC0117e != null) {
                abstractC0117e.m35671a(recycleListView);
            }
            alertController.f216H = c0113a;
            alertController.f217I = this.f277I;
            if (this.f308x != null) {
                recycleListView.setOnItemClickListener(new C0115c(alertController));
            } else if (this.f278J != null) {
                recycleListView.setOnItemClickListener(new C0116d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f282N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f276H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f275G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f234g = recycleListView;
        }

        /* renamed from: a */
        public void m35673a(AlertController alertController) {
            View view = this.f291g;
            if (view != null) {
                alertController.m35687m(view);
            } else {
                CharSequence charSequence = this.f290f;
                if (charSequence != null) {
                    alertController.m35682r(charSequence);
                }
                Drawable drawable = this.f288d;
                if (drawable != null) {
                    alertController.m35685o(drawable);
                }
                int i = this.f287c;
                if (i != 0) {
                    alertController.m35686n(i);
                }
                int i2 = this.f289e;
                if (i2 != 0) {
                    alertController.m35686n(alertController.m35696d(i2));
                }
            }
            CharSequence charSequence2 = this.f292h;
            if (charSequence2 != null) {
                alertController.m35684p(charSequence2);
            }
            CharSequence charSequence3 = this.f293i;
            if (charSequence3 != null || this.f294j != null) {
                alertController.m35688l(-1, charSequence3, this.f295k, null, this.f294j);
            }
            CharSequence charSequence4 = this.f296l;
            if (charSequence4 != null || this.f297m != null) {
                alertController.m35688l(-2, charSequence4, this.f298n, null, this.f297m);
            }
            CharSequence charSequence5 = this.f299o;
            if (charSequence5 != null || this.f300p != null) {
                alertController.m35688l(-3, charSequence5, this.f301q, null, this.f300p);
            }
            if (this.f306v != null || this.f279K != null || this.f307w != null) {
                m35672b(alertController);
            }
            View view2 = this.f310z;
            if (view2 != null) {
                if (this.f273E) {
                    alertController.m35679u(view2, this.f269A, this.f270B, this.f271C, this.f272D);
                    return;
                } else {
                    alertController.m35680t(view2);
                    return;
                }
            }
            int i3 = this.f309y;
            if (i3 == 0) {
                return;
            }
            alertController.m35681s(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$g.class */
    public static final class HandlerC0118g extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f323a;

        public HandlerC0118g(DialogInterface dialogInterface) {
            this.f323a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f323a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$h.class */
    public static class C0119h extends ArrayAdapter<CharSequence> {
        public C0119h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, DialogC0150d dialogC0150d, Window window) {
        this.f228a = context;
        this.f229b = dialogC0150d;
        this.f230c = window;
        this.f226R = new HandlerC0118g(dialogC0150d);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C1432j.AlertDialog, C1423a.alertDialogStyle, 0);
        this.f218J = obtainStyledAttributes.getResourceId(C1432j.AlertDialog_android_layout, 0);
        this.f219K = obtainStyledAttributes.getResourceId(C1432j.AlertDialog_buttonPanelSideLayout, 0);
        this.f220L = obtainStyledAttributes.getResourceId(C1432j.AlertDialog_listLayout, 0);
        this.f221M = obtainStyledAttributes.getResourceId(C1432j.AlertDialog_multiChoiceItemLayout, 0);
        this.f222N = obtainStyledAttributes.getResourceId(C1432j.AlertDialog_singleChoiceItemLayout, 0);
        this.f223O = obtainStyledAttributes.getResourceId(C1432j.AlertDialog_listItemLayout, 0);
        this.f224P = obtainStyledAttributes.getBoolean(C1432j.AlertDialog_showTitle, true);
        this.f231d = obtainStyledAttributes.getDimensionPixelSize(C1432j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dialogC0150d.m35518f(1);
    }

    /* renamed from: A */
    private static boolean m35700A(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(C1423a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    static boolean m35699a(View view) {
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
            if (m35699a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m35698b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: g */
    static void m35693g(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: j */
    private ViewGroup m35690j(View view, View view2) {
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
    private int m35689k() {
        int i = this.f219K;
        if (i != 0 && this.f225Q == 1) {
            return i;
        }
        return this.f218J;
    }

    /* renamed from: q */
    private void m35683q(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f230c.findViewById(C1428f.scrollIndicatorUp);
        View findViewById2 = this.f230c.findViewById(C1428f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            C1679w.m29335H0(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 == null) {
                return;
            }
            viewGroup.removeView(findViewById2);
            return;
        }
        View view2 = findViewById;
        if (findViewById != null) {
            view2 = findViewById;
            if ((i & 1) == 0) {
                viewGroup.removeView(findViewById);
                view2 = null;
            }
        }
        View view3 = findViewById2;
        if (findViewById2 != null) {
            view3 = findViewById2;
            if ((i & 2) == 0) {
                viewGroup.removeView(findViewById2);
                view3 = null;
            }
        }
        if (view2 == null && view3 == null) {
            return;
        }
        if (this.f233f != null) {
            this.f209A.setOnScrollChangeListener(new C0108b(view2, view3));
            this.f209A.post(new RunnableC0109c(view2, view3));
            return;
        }
        ListView listView = this.f234g;
        if (listView != null) {
            listView.setOnScrollListener(new C0110d(view2, view3));
            this.f234g.post(new RunnableC0111e(view2, view3));
            return;
        }
        if (view2 != null) {
            viewGroup.removeView(view2);
        }
        if (view3 == null) {
            return;
        }
        viewGroup.removeView(view3);
    }

    /* renamed from: v */
    private void m35678v(ViewGroup viewGroup) {
        boolean z;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f242o = button;
        button.setOnClickListener(this.f227S);
        if (!TextUtils.isEmpty(this.f243p) || this.f245r != null) {
            this.f242o.setText(this.f243p);
            Drawable drawable = this.f245r;
            if (drawable != null) {
                int i = this.f231d;
                drawable.setBounds(0, 0, i, i);
                this.f242o.setCompoundDrawables(this.f245r, null, null, null);
            }
            this.f242o.setVisibility(0);
            z = true;
        } else {
            this.f242o.setVisibility(8);
            z = false;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f246s = button2;
        button2.setOnClickListener(this.f227S);
        if (!TextUtils.isEmpty(this.f247t) || this.f249v != null) {
            this.f246s.setText(this.f247t);
            Drawable drawable2 = this.f249v;
            if (drawable2 != null) {
                int i2 = this.f231d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f246s.setCompoundDrawables(this.f249v, null, null, null);
            }
            this.f246s.setVisibility(0);
            z |= true;
        } else {
            this.f246s.setVisibility(8);
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f250w = button3;
        button3.setOnClickListener(this.f227S);
        if (!TextUtils.isEmpty(this.f251x) || this.f253z != null) {
            this.f250w.setText(this.f251x);
            Drawable drawable3 = this.f253z;
            if (drawable3 != null) {
                int i3 = this.f231d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f250w.setCompoundDrawables(this.f253z, null, null, null);
            }
            this.f250w.setVisibility(0);
            z |= true;
        } else {
            this.f250w.setVisibility(8);
        }
        if (m35700A(this.f228a)) {
            if (z) {
                m35698b(this.f242o);
            } else if (z) {
                m35698b(this.f246s);
            } else if (z) {
                m35698b(this.f250w);
            }
        }
        if (!(z)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: w */
    private void m35677w(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f230c.findViewById(C1428f.scrollView);
        this.f209A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f209A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f214F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f233f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f209A.removeView(this.f214F);
        if (this.f234g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f209A.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f209A);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f234g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: x */
    private void m35676x(ViewGroup viewGroup) {
        View view = this.f235h;
        boolean z = false;
        if (view == null) {
            view = this.f236i != 0 ? LayoutInflater.from(this.f228a).inflate(this.f236i, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m35699a(view)) {
            this.f230c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f230c.findViewById(C1428f.custom);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        if (this.f241n) {
            frameLayout.setPadding(this.f237j, this.f238k, this.f239l, this.f240m);
        }
        if (this.f234g == null) {
            return;
        }
        ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
    }

    /* renamed from: y */
    private void m35675y(ViewGroup viewGroup) {
        if (this.f215G != null) {
            viewGroup.addView(this.f215G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f230c.findViewById(C1428f.title_template).setVisibility(8);
            return;
        }
        this.f212D = (ImageView) this.f230c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f232e)) || !this.f224P) {
            this.f230c.findViewById(C1428f.title_template).setVisibility(8);
            this.f212D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f230c.findViewById(C1428f.alertTitle);
        this.f213E = textView;
        textView.setText(this.f232e);
        int i = this.f210B;
        if (i != 0) {
            this.f212D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f211C;
        if (drawable != null) {
            this.f212D.setImageDrawable(drawable);
            return;
        }
        this.f213E.setPadding(this.f212D.getPaddingLeft(), this.f212D.getPaddingTop(), this.f212D.getPaddingRight(), this.f212D.getPaddingBottom());
        this.f212D.setVisibility(8);
    }

    /* renamed from: z */
    private void m35674z() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f230c.findViewById(C1428f.parentPanel);
        int i = C1428f.topPanel;
        View findViewById4 = findViewById3.findViewById(i);
        int i2 = C1428f.contentPanel;
        View findViewById5 = findViewById3.findViewById(i2);
        int i3 = C1428f.buttonPanel;
        View findViewById6 = findViewById3.findViewById(i3);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C1428f.customPanel);
        m35676x(viewGroup);
        View findViewById7 = viewGroup.findViewById(i);
        View findViewById8 = viewGroup.findViewById(i2);
        View findViewById9 = viewGroup.findViewById(i3);
        ViewGroup m35690j = m35690j(findViewById7, findViewById4);
        ViewGroup m35690j2 = m35690j(findViewById8, findViewById5);
        ViewGroup m35690j3 = m35690j(findViewById9, findViewById6);
        m35677w(m35690j2);
        m35678v(m35690j3);
        m35675y(m35690j);
        boolean z = viewGroup.getVisibility() != 8;
        boolean z2 = (m35690j == null || m35690j.getVisibility() == 8) ? false : true;
        boolean z3 = (m35690j3 == null || m35690j3.getVisibility() == 8) ? false : true;
        if (!z3 && m35690j2 != null && (findViewById2 = m35690j2.findViewById(C1428f.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f209A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f233f != null || this.f234g != null) {
                view = m35690j.findViewById(C1428f.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m35690j2 != null && (findViewById = m35690j2.findViewById(C1428f.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f234g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z2, z3);
        }
        if (!z) {
            ListView listView2 = this.f234g;
            NestedScrollView nestedScrollView2 = listView2;
            if (listView2 == null) {
                nestedScrollView2 = this.f209A;
            }
            if (nestedScrollView2 != null) {
                int i4 = 0;
                if (z3) {
                    i4 = 2;
                }
                m35683q(m35690j2, nestedScrollView2, z2 | i4, 3);
            }
        }
        ListView listView3 = this.f234g;
        if (listView3 == null || (listAdapter = this.f216H) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i5 = this.f217I;
        if (i5 <= -1) {
            return;
        }
        listView3.setItemChecked(i5, true);
        listView3.setSelection(i5);
    }

    /* renamed from: c */
    public Button m35697c(int i) {
        if (i != -3) {
            if (i == -2) {
                return this.f246s;
            }
            if (i == -1) {
                return this.f242o;
            }
            return null;
        }
        return this.f250w;
    }

    /* renamed from: d */
    public int m35696d(int i) {
        TypedValue typedValue = new TypedValue();
        this.f228a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: e */
    public ListView m35695e() {
        return this.f234g;
    }

    /* renamed from: f */
    public void m35694f() {
        this.f229b.setContentView(m35689k());
        m35674z();
    }

    /* renamed from: h */
    public boolean m35692h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f209A;
        return nestedScrollView != null && nestedScrollView.m33151q(keyEvent);
    }

    /* renamed from: i */
    public boolean m35691i(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f209A;
        return nestedScrollView != null && nestedScrollView.m33151q(keyEvent);
    }

    /* renamed from: l */
    public void m35688l(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f226R.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f251x = charSequence;
            this.f252y = message2;
            this.f253z = drawable;
        } else if (i == -2) {
            this.f247t = charSequence;
            this.f248u = message2;
            this.f249v = drawable;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f243p = charSequence;
            this.f244q = message2;
            this.f245r = drawable;
        }
    }

    /* renamed from: m */
    public void m35687m(View view) {
        this.f215G = view;
    }

    /* renamed from: n */
    public void m35686n(int i) {
        this.f211C = null;
        this.f210B = i;
        ImageView imageView = this.f212D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f212D.setImageResource(this.f210B);
        }
    }

    /* renamed from: o */
    public void m35685o(Drawable drawable) {
        this.f211C = drawable;
        this.f210B = 0;
        ImageView imageView = this.f212D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f212D.setImageDrawable(drawable);
        }
    }

    /* renamed from: p */
    public void m35684p(CharSequence charSequence) {
        this.f233f = charSequence;
        TextView textView = this.f214F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: r */
    public void m35682r(CharSequence charSequence) {
        this.f232e = charSequence;
        TextView textView = this.f213E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: s */
    public void m35681s(int i) {
        this.f235h = null;
        this.f236i = i;
        this.f241n = false;
    }

    /* renamed from: t */
    public void m35680t(View view) {
        this.f235h = view;
        this.f236i = 0;
        this.f241n = false;
    }

    /* renamed from: u */
    public void m35679u(View view, int i, int i2, int i3, int i4) {
        this.f235h = view;
        this.f236i = 0;
        this.f241n = true;
        this.f237j = i;
        this.f238k = i2;
        this.f239l = i3;
        this.f240m = i4;
    }
}
