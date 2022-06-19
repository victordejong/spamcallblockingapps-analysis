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
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import d.a.a;
import d.a.f;
import d.a.j;
import d.h.m.t;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    NestedScrollView f130A;

    /* renamed from: C */
    private Drawable f132C;

    /* renamed from: D */
    private ImageView f133D;

    /* renamed from: E */
    private TextView f134E;

    /* renamed from: F */
    private TextView f135F;

    /* renamed from: G */
    private View f136G;

    /* renamed from: H */
    ListAdapter f137H;

    /* renamed from: J */
    private int f139J;

    /* renamed from: K */
    private int f140K;

    /* renamed from: L */
    int f141L;

    /* renamed from: M */
    int f142M;

    /* renamed from: N */
    int f143N;

    /* renamed from: O */
    int f144O;

    /* renamed from: P */
    private boolean f145P;

    /* renamed from: R */
    Handler f147R;

    /* renamed from: a */
    private final Context f149a;

    /* renamed from: b */
    final d f150b;

    /* renamed from: c */
    private final Window f151c;

    /* renamed from: d */
    private final int f152d;

    /* renamed from: e */
    private CharSequence f153e;

    /* renamed from: f */
    private CharSequence f154f;

    /* renamed from: g */
    ListView f155g;

    /* renamed from: h */
    private View f156h;

    /* renamed from: i */
    private int f157i;

    /* renamed from: j */
    private int f158j;

    /* renamed from: k */
    private int f159k;

    /* renamed from: l */
    private int f160l;

    /* renamed from: m */
    private int f161m;

    /* renamed from: o */
    Button f163o;

    /* renamed from: p */
    private CharSequence f164p;

    /* renamed from: q */
    Message f165q;

    /* renamed from: r */
    private Drawable f166r;

    /* renamed from: s */
    Button f167s;

    /* renamed from: t */
    private CharSequence f168t;

    /* renamed from: u */
    Message f169u;

    /* renamed from: v */
    private Drawable f170v;

    /* renamed from: w */
    Button f171w;

    /* renamed from: x */
    private CharSequence f172x;

    /* renamed from: y */
    Message f173y;

    /* renamed from: z */
    private Drawable f174z;

    /* renamed from: n */
    private boolean f162n = false;

    /* renamed from: B */
    private int f131B = 0;

    /* renamed from: I */
    int f138I = -1;

    /* renamed from: Q */
    private int f146Q = 0;

    /* renamed from: S */
    private final View.OnClickListener f148S = new View$OnClickListenerC0071a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: b */
        private final int f175b;

        /* renamed from: c */
        private final int f176c;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.RecycleListView);
            this.f176c = obtainStyledAttributes.getDimensionPixelOffset(j.RecycleListView_paddingBottomNoButtons, -1);
            this.f175b = obtainStyledAttributes.getDimensionPixelOffset(j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f175b, getPaddingRight(), z2 ? getPaddingBottom() : this.f176c);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    class View$OnClickListenerC0071a implements View.OnClickListener {
        View$OnClickListenerC0071a() {
            AlertController.this = r4;
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
        @Override // android.view.View.OnClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onClick(android.view.View r5) {
            /*
                r4 = this;
                r0 = r4
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                r6 = r0
                r0 = r5
                r1 = r6
                android.widget.Button r1 = r1.f163o
                if (r0 != r1) goto L20
                r0 = r6
                android.os.Message r0 = r0.f165q
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L20
                r0 = r7
                r5 = r0
            L18:
                r0 = r5
                android.os.Message r0 = android.os.Message.obtain(r0)
                r5 = r0
                goto L51
            L20:
                r0 = r5
                r1 = r6
                android.widget.Button r1 = r1.f167s
                if (r0 != r1) goto L36
                r0 = r6
                android.os.Message r0 = r0.f169u
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L36
                r0 = r7
                r5 = r0
                goto L18
            L36:
                r0 = r5
                r1 = r6
                android.widget.Button r1 = r1.f171w
                if (r0 != r1) goto L4f
                r0 = r6
                android.os.Message r0 = r0.f173y
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L4f
                r0 = r5
                android.os.Message r0 = android.os.Message.obtain(r0)
                r5 = r0
                goto L51
            L4f:
                r0 = 0
                r5 = r0
            L51:
                r0 = r5
                if (r0 == 0) goto L59
                r0 = r5
                r0.sendToTarget()
            L59:
                r0 = r4
                androidx.appcompat.app.AlertController r0 = androidx.appcompat.app.AlertController.this
                r5 = r0
                r0 = r5
                android.os.Handler r0 = r0.f147R
                r1 = 1
                r2 = r5
                androidx.appcompat.app.d r2 = r2.f150b
                android.os.Message r0 = r0.obtainMessage(r1, r2)
                r0.sendToTarget()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.View$OnClickListenerC0071a.onClick(android.view.View):void");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public class RunnableC0072c implements Runnable {

        /* renamed from: b */
        final /* synthetic */ View f178b;

        /* renamed from: c */
        final /* synthetic */ View f179c;

        RunnableC0072c(View view, View view2) {
            AlertController.this = r4;
            this.f178b = view;
            this.f179c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m14976f(AlertController.this.f130A, this.f178b, this.f179c);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public class C0073d implements AbsListView.OnScrollListener {

        /* renamed from: a */
        final /* synthetic */ View f181a;

        /* renamed from: b */
        final /* synthetic */ View f182b;

        C0073d(AlertController alertController, View view, View view2) {
            this.f181a = view;
            this.f182b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m14976f(absListView, this.f181a, this.f182b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$e.class */
    public class RunnableC0074e implements Runnable {

        /* renamed from: b */
        final /* synthetic */ View f183b;

        /* renamed from: c */
        final /* synthetic */ View f184c;

        RunnableC0074e(View view, View view2) {
            AlertController.this = r4;
            this.f183b = view;
            this.f184c = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m14976f(AlertController.this.f155g, this.f183b, this.f184c);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f.class */
    public static class C0075f {

        /* renamed from: A */
        public int f186A;

        /* renamed from: B */
        public int f187B;

        /* renamed from: C */
        public int f188C;

        /* renamed from: D */
        public int f189D;

        /* renamed from: F */
        public boolean[] f191F;

        /* renamed from: G */
        public boolean f192G;

        /* renamed from: H */
        public boolean f193H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f195J;

        /* renamed from: K */
        public Cursor f196K;

        /* renamed from: L */
        public String f197L;

        /* renamed from: M */
        public String f198M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f199N;

        /* renamed from: O */
        public AbstractC0080e f200O;

        /* renamed from: a */
        public final Context f201a;

        /* renamed from: b */
        public final LayoutInflater f202b;

        /* renamed from: d */
        public Drawable f204d;

        /* renamed from: f */
        public CharSequence f206f;

        /* renamed from: g */
        public View f207g;

        /* renamed from: h */
        public CharSequence f208h;

        /* renamed from: i */
        public CharSequence f209i;

        /* renamed from: j */
        public Drawable f210j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f211k;

        /* renamed from: l */
        public CharSequence f212l;

        /* renamed from: m */
        public Drawable f213m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f214n;

        /* renamed from: o */
        public CharSequence f215o;

        /* renamed from: p */
        public Drawable f216p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f217q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f219s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f220t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f221u;

        /* renamed from: v */
        public CharSequence[] f222v;

        /* renamed from: w */
        public ListAdapter f223w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f224x;

        /* renamed from: y */
        public int f225y;

        /* renamed from: z */
        public View f226z;

        /* renamed from: c */
        public int f203c = 0;

        /* renamed from: e */
        public int f205e = 0;

        /* renamed from: E */
        public boolean f190E = false;

        /* renamed from: I */
        public int f194I = -1;

        /* renamed from: r */
        public boolean f218r = true;

        /* renamed from: androidx.appcompat.app.AlertController$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$a.class */
        public class C0076a extends ArrayAdapter<CharSequence> {

            /* renamed from: b */
            final /* synthetic */ RecycleListView f227b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0076a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                C0075f.this = r7;
                this.f227b = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0075f.this.f191F;
                if (zArr != null && zArr[i]) {
                    this.f227b.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$b.class */
        public class C0077b extends CursorAdapter {

            /* renamed from: b */
            private final int f229b;

            /* renamed from: c */
            private final int f230c;

            /* renamed from: d */
            final /* synthetic */ RecycleListView f231d;

            /* renamed from: e */
            final /* synthetic */ AlertController f232e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0077b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                C0075f.this = r6;
                this.f231d = recycleListView;
                this.f232e = alertController;
                Cursor cursor2 = getCursor();
                this.f229b = cursor2.getColumnIndexOrThrow(r6.f197L);
                this.f230c = cursor2.getColumnIndexOrThrow(r6.f198M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f229b));
                RecycleListView recycleListView = this.f231d;
                int position = cursor.getPosition();
                boolean z = true;
                if (cursor.getInt(this.f230c) != 1) {
                    z = false;
                }
                recycleListView.setItemChecked(position, z);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0075f.this.f202b.inflate(this.f232e.f142M, viewGroup, false);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$c.class */
        public class C0078c implements AdapterView.OnItemClickListener {

            /* renamed from: b */
            final /* synthetic */ AlertController f234b;

            C0078c(AlertController alertController) {
                C0075f.this = r4;
                this.f234b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0075f.this.f224x.onClick(this.f234b.f150b, i);
                if (!C0075f.this.f193H) {
                    this.f234b.f150b.dismiss();
                }
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$d */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$d.class */
        public class C0079d implements AdapterView.OnItemClickListener {

            /* renamed from: b */
            final /* synthetic */ RecycleListView f236b;

            /* renamed from: c */
            final /* synthetic */ AlertController f237c;

            C0079d(RecycleListView recycleListView, AlertController alertController) {
                C0075f.this = r4;
                this.f236b = recycleListView;
                this.f237c = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0075f.this.f191F;
                if (zArr != null) {
                    zArr[i] = this.f236b.isItemChecked(i);
                }
                C0075f.this.f195J.onClick(this.f237c.f150b, i, this.f236b.isItemChecked(i));
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$e */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$e.class */
        public interface AbstractC0080e {
            /* renamed from: a */
            void m14953a(ListView listView);
        }

        public C0075f(Context context) {
            this.f201a = context;
            this.f202b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0120  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void m14954b(androidx.appcompat.app.AlertController r12) {
            /*
                Method dump skipped, instructions count: 306
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.C0075f.m14954b(androidx.appcompat.app.AlertController):void");
        }

        /* renamed from: a */
        public void m14955a(AlertController alertController) {
            View view = this.f207g;
            if (view != null) {
                alertController.m14970l(view);
            } else {
                CharSequence charSequence = this.f206f;
                if (charSequence != null) {
                    alertController.m14965q(charSequence);
                }
                Drawable drawable = this.f204d;
                if (drawable != null) {
                    alertController.m14968n(drawable);
                }
                int i = this.f203c;
                if (i != 0) {
                    alertController.m14969m(i);
                }
                int i2 = this.f205e;
                if (i2 != 0) {
                    alertController.m14969m(alertController.m14979c(i2));
                }
            }
            CharSequence charSequence2 = this.f208h;
            if (charSequence2 != null) {
                alertController.m14967o(charSequence2);
            }
            CharSequence charSequence3 = this.f209i;
            if (charSequence3 != null || this.f210j != null) {
                alertController.m14971k(-1, charSequence3, this.f211k, null, this.f210j);
            }
            CharSequence charSequence4 = this.f212l;
            if (charSequence4 != null || this.f213m != null) {
                alertController.m14971k(-2, charSequence4, this.f214n, null, this.f213m);
            }
            CharSequence charSequence5 = this.f215o;
            if (charSequence5 != null || this.f216p != null) {
                alertController.m14971k(-3, charSequence5, this.f217q, null, this.f216p);
            }
            if (this.f222v != null || this.f196K != null || this.f223w != null) {
                m14954b(alertController);
            }
            View view2 = this.f226z;
            if (view2 != null) {
                if (this.f190E) {
                    alertController.m14962t(view2, this.f186A, this.f187B, this.f188C, this.f189D);
                    return;
                } else {
                    alertController.m14963s(view2);
                    return;
                }
            }
            int i3 = this.f225y;
            if (i3 == 0) {
                return;
            }
            alertController.m14964r(i3);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$g.class */
    private static final class HandlerC0081g extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f239a;

        public HandlerC0081g(DialogInterface dialogInterface) {
            this.f239a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f239a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$h.class */
    public static class C0082h extends ArrayAdapter<CharSequence> {
        public C0082h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, d dVar, Window window) {
        this.f149a = context;
        this.f150b = dVar;
        this.f151c = window;
        this.f147R = new HandlerC0081g(dVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, j.AlertDialog, a.alertDialogStyle, 0);
        this.f139J = obtainStyledAttributes.getResourceId(j.AlertDialog_android_layout, 0);
        this.f140K = obtainStyledAttributes.getResourceId(j.AlertDialog_buttonPanelSideLayout, 0);
        this.f141L = obtainStyledAttributes.getResourceId(j.AlertDialog_listLayout, 0);
        this.f142M = obtainStyledAttributes.getResourceId(j.AlertDialog_multiChoiceItemLayout, 0);
        this.f143N = obtainStyledAttributes.getResourceId(j.AlertDialog_singleChoiceItemLayout, 0);
        this.f144O = obtainStyledAttributes.getResourceId(j.AlertDialog_listItemLayout, 0);
        this.f145P = obtainStyledAttributes.getBoolean(j.AlertDialog_showTitle, true);
        this.f152d = obtainStyledAttributes.getDimensionPixelSize(j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dVar.d(1);
    }

    /* renamed from: a */
    static boolean m14981a(View view) {
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
            if (m14981a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m14980b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: f */
    static void m14976f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: i */
    private ViewGroup m14973i(View view, View view2) {
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

    /* renamed from: j */
    private int m14972j() {
        int i = this.f140K;
        if (i != 0 && this.f146Q == 1) {
            return i;
        }
        return this.f139J;
    }

    /* renamed from: p */
    private void m14966p(ViewGroup viewGroup, View view, int i, int i2) {
        View view2;
        View findViewById = this.f151c.findViewById(f.scrollIndicatorUp);
        View findViewById2 = this.f151c.findViewById(f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            t.E0(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 == null) {
                return;
            }
            view2 = findViewById2;
        } else {
            View view3 = findViewById;
            if (findViewById != null) {
                view3 = findViewById;
                if ((i & 1) == 0) {
                    viewGroup.removeView(findViewById);
                    view3 = null;
                }
            }
            view2 = findViewById2;
            if (findViewById2 != null) {
                view2 = findViewById2;
                if ((i & 2) == 0) {
                    viewGroup.removeView(findViewById2);
                    view2 = null;
                }
            }
            if (view3 == null && view2 == null) {
                return;
            }
            if (this.f154f != null) {
                this.f130A.setOnScrollChangeListener(new b(this, view3, view2));
                this.f130A.post(new RunnableC0072c(view3, view2));
                return;
            }
            ListView listView = this.f155g;
            if (listView != null) {
                listView.setOnScrollListener(new C0073d(this, view3, view2));
                this.f155g.post(new RunnableC0074e(view3, view2));
                return;
            }
            if (view3 != null) {
                viewGroup.removeView(view3);
            }
            if (view2 == null) {
                return;
            }
        }
        viewGroup.removeView(view2);
    }

    /* renamed from: u */
    private void m14961u(ViewGroup viewGroup) {
        boolean z;
        Button button;
        Button button2 = (Button) viewGroup.findViewById(16908313);
        this.f163o = button2;
        button2.setOnClickListener(this.f148S);
        if (!TextUtils.isEmpty(this.f164p) || this.f166r != null) {
            this.f163o.setText(this.f164p);
            Drawable drawable = this.f166r;
            if (drawable != null) {
                int i = this.f152d;
                drawable.setBounds(0, 0, i, i);
                this.f163o.setCompoundDrawables(this.f166r, null, null, null);
            }
            this.f163o.setVisibility(0);
            z = true;
        } else {
            this.f163o.setVisibility(8);
            z = false;
        }
        Button button3 = (Button) viewGroup.findViewById(16908314);
        this.f167s = button3;
        button3.setOnClickListener(this.f148S);
        if (!TextUtils.isEmpty(this.f168t) || this.f170v != null) {
            this.f167s.setText(this.f168t);
            Drawable drawable2 = this.f170v;
            if (drawable2 != null) {
                int i2 = this.f152d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f167s.setCompoundDrawables(this.f170v, null, null, null);
            }
            this.f167s.setVisibility(0);
            z |= true;
        } else {
            this.f167s.setVisibility(8);
        }
        Button button4 = (Button) viewGroup.findViewById(16908315);
        this.f171w = button4;
        button4.setOnClickListener(this.f148S);
        if (!TextUtils.isEmpty(this.f172x) || this.f174z != null) {
            this.f171w.setText(this.f172x);
            Drawable drawable3 = this.f174z;
            if (drawable3 != null) {
                int i3 = this.f152d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f171w.setCompoundDrawables(this.f174z, null, null, null);
            }
            this.f171w.setVisibility(0);
            z |= true;
        } else {
            this.f171w.setVisibility(8);
        }
        if (m14956z(this.f149a)) {
            if (z) {
                button = this.f163o;
            } else if (z) {
                button = this.f167s;
            } else if (z) {
                button = this.f171w;
            }
            m14980b(button);
        }
        if (!(z)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: v */
    private void m14960v(ViewGroup viewGroup) {
        NestedScrollView findViewById = this.f151c.findViewById(f.scrollView);
        this.f130A = findViewById;
        findViewById.setFocusable(false);
        this.f130A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f135F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f154f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f130A.removeView(this.f135F);
        if (this.f155g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f130A.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f130A);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f155g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: w */
    private void m14959w(ViewGroup viewGroup) {
        View view = this.f156h;
        boolean z = false;
        if (view == null) {
            view = this.f157i != 0 ? LayoutInflater.from(this.f149a).inflate(this.f157i, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m14981a(view)) {
            this.f151c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f151c.findViewById(f.custom);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        if (this.f162n) {
            frameLayout.setPadding(this.f158j, this.f159k, this.f160l, this.f161m);
        }
        if (this.f155g == null) {
            return;
        }
        ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).f430a = 0.0f;
    }

    /* renamed from: x */
    private void m14958x(ViewGroup viewGroup) {
        if (this.f136G != null) {
            viewGroup.addView(this.f136G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f151c.findViewById(f.title_template).setVisibility(8);
            return;
        }
        this.f133D = (ImageView) this.f151c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f153e)) || !this.f145P) {
            this.f151c.findViewById(f.title_template).setVisibility(8);
            this.f133D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f151c.findViewById(f.alertTitle);
        this.f134E = textView;
        textView.setText(this.f153e);
        int i = this.f131B;
        if (i != 0) {
            this.f133D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f132C;
        if (drawable != null) {
            this.f133D.setImageDrawable(drawable);
            return;
        }
        this.f134E.setPadding(this.f133D.getPaddingLeft(), this.f133D.getPaddingTop(), this.f133D.getPaddingRight(), this.f133D.getPaddingBottom());
        this.f133D.setVisibility(8);
    }

    /* renamed from: y */
    private void m14957y() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f151c.findViewById(f.parentPanel);
        int i = f.topPanel;
        View findViewById4 = findViewById3.findViewById(i);
        int i2 = f.contentPanel;
        View findViewById5 = findViewById3.findViewById(i2);
        int i3 = f.buttonPanel;
        View findViewById6 = findViewById3.findViewById(i3);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(f.customPanel);
        m14959w(viewGroup);
        View findViewById7 = viewGroup.findViewById(i);
        View findViewById8 = viewGroup.findViewById(i2);
        View findViewById9 = viewGroup.findViewById(i3);
        ViewGroup m14973i = m14973i(findViewById7, findViewById4);
        ViewGroup m14973i2 = m14973i(findViewById8, findViewById5);
        ViewGroup m14973i3 = m14973i(findViewById9, findViewById6);
        m14960v(m14973i2);
        m14961u(m14973i3);
        m14958x(m14973i);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (m14973i == null || m14973i.getVisibility() == 8) ? false : true;
        boolean z3 = (m14973i3 == null || m14973i3.getVisibility() == 8) ? false : true;
        if (!z3 && m14973i2 != null && (findViewById2 = m14973i2.findViewById(f.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f130A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f154f != null || this.f155g != null) {
                view = m14973i.findViewById(f.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m14973i2 != null && (findViewById = m14973i2.findViewById(f.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f155g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z2, z3);
        }
        if (!z) {
            ListView listView2 = this.f155g;
            if (listView2 == null) {
                listView2 = this.f130A;
            }
            if (listView2 != null) {
                int i4 = 0;
                if (z3) {
                    i4 = 2;
                }
                m14966p(m14973i2, listView2, z2 | i4, 3);
            }
        }
        ListView listView3 = this.f155g;
        if (listView3 == null || (listAdapter = this.f137H) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i5 = this.f138I;
        if (i5 <= -1) {
            return;
        }
        listView3.setItemChecked(i5, true);
        listView3.setSelection(i5);
    }

    /* renamed from: z */
    private static boolean m14956z(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public int m14979c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f149a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: d */
    public ListView m14978d() {
        return this.f155g;
    }

    /* renamed from: e */
    public void m14977e() {
        this.f150b.setContentView(m14972j());
        m14957y();
    }

    /* renamed from: g */
    public boolean m14975g(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f130A;
        return nestedScrollView != null && nestedScrollView.q(keyEvent);
    }

    /* renamed from: h */
    public boolean m14974h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f130A;
        return nestedScrollView != null && nestedScrollView.q(keyEvent);
    }

    /* renamed from: k */
    public void m14971k(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f147R.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f172x = charSequence;
            this.f173y = message2;
            this.f174z = drawable;
        } else if (i == -2) {
            this.f168t = charSequence;
            this.f169u = message2;
            this.f170v = drawable;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f164p = charSequence;
            this.f165q = message2;
            this.f166r = drawable;
        }
    }

    /* renamed from: l */
    public void m14970l(View view) {
        this.f136G = view;
    }

    /* renamed from: m */
    public void m14969m(int i) {
        this.f132C = null;
        this.f131B = i;
        ImageView imageView = this.f133D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f133D.setImageResource(this.f131B);
        }
    }

    /* renamed from: n */
    public void m14968n(Drawable drawable) {
        this.f132C = drawable;
        this.f131B = 0;
        ImageView imageView = this.f133D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f133D.setImageDrawable(drawable);
        }
    }

    /* renamed from: o */
    public void m14967o(CharSequence charSequence) {
        this.f154f = charSequence;
        TextView textView = this.f135F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: q */
    public void m14965q(CharSequence charSequence) {
        this.f153e = charSequence;
        TextView textView = this.f134E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: r */
    public void m14964r(int i) {
        this.f156h = null;
        this.f157i = i;
        this.f162n = false;
    }

    /* renamed from: s */
    public void m14963s(View view) {
        this.f156h = view;
        this.f157i = 0;
        this.f162n = false;
    }

    /* renamed from: t */
    public void m14962t(View view, int i, int i2, int i3, int i4) {
        this.f156h = view;
        this.f157i = 0;
        this.f162n = true;
        this.f158j = i;
        this.f159k = i2;
        this.f160l = i3;
        this.f161m = i4;
    }
}
