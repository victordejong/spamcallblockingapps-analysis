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
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    public NestedScrollView f374A;

    /* renamed from: C */
    public Drawable f376C;

    /* renamed from: D */
    public ImageView f377D;

    /* renamed from: E */
    public TextView f378E;

    /* renamed from: F */
    public TextView f379F;

    /* renamed from: G */
    public View f380G;

    /* renamed from: H */
    public ListAdapter f381H;

    /* renamed from: J */
    public int f383J;

    /* renamed from: K */
    public int f384K;

    /* renamed from: L */
    public int f385L;

    /* renamed from: M */
    public int f386M;

    /* renamed from: N */
    public int f387N;

    /* renamed from: O */
    public int f388O;

    /* renamed from: P */
    public boolean f389P;

    /* renamed from: R */
    public Handler f391R;

    /* renamed from: a */
    public final Context f393a;

    /* renamed from: b */
    public final t f394b;

    /* renamed from: c */
    public final Window f395c;

    /* renamed from: d */
    public final int f396d;

    /* renamed from: e */
    public CharSequence f397e;

    /* renamed from: f */
    public CharSequence f398f;

    /* renamed from: g */
    public ListView f399g;

    /* renamed from: h */
    public View f400h;

    /* renamed from: i */
    public int f401i;

    /* renamed from: j */
    public int f402j;

    /* renamed from: k */
    public int f403k;

    /* renamed from: l */
    public int f404l;

    /* renamed from: m */
    public int f405m;

    /* renamed from: o */
    public Button f407o;

    /* renamed from: p */
    public CharSequence f408p;

    /* renamed from: q */
    public Message f409q;

    /* renamed from: r */
    public Drawable f410r;

    /* renamed from: s */
    public Button f411s;

    /* renamed from: t */
    public CharSequence f412t;

    /* renamed from: u */
    public Message f413u;

    /* renamed from: v */
    public Drawable f414v;

    /* renamed from: w */
    public Button f415w;

    /* renamed from: x */
    public CharSequence f416x;

    /* renamed from: y */
    public Message f417y;

    /* renamed from: z */
    public Drawable f418z;

    /* renamed from: n */
    public boolean f406n = false;

    /* renamed from: B */
    public int f375B = 0;

    /* renamed from: I */
    public int f382I = -1;

    /* renamed from: Q */
    public int f390Q = 0;

    /* renamed from: S */
    public final View.OnClickListener f392S = new View$OnClickListenerC0064a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        public final int f419a;

        /* renamed from: b */
        public final int f420b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, o.RecycleListView);
            this.f420b = obtainStyledAttributes.getDimensionPixelOffset(o.RecycleListView_paddingBottomNoButtons, -1);
            this.f419a = obtainStyledAttributes.getDimensionPixelOffset(o.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f419a, getPaddingRight(), z2 ? getPaddingBottom() : this.f420b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public class View$OnClickListenerC0064a implements View.OnClickListener {
        public View$OnClickListenerC0064a() {
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
                android.widget.Button r1 = r1.f407o
                if (r0 != r1) goto L20
                r0 = r6
                android.os.Message r0 = r0.f409q
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
                android.widget.Button r1 = r1.f411s
                if (r0 != r1) goto L36
                r0 = r6
                android.os.Message r0 = r0.f413u
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L36
                r0 = r7
                r5 = r0
                goto L18
            L36:
                r0 = r5
                r1 = r6
                android.widget.Button r1 = r1.f415w
                if (r0 != r1) goto L4f
                r0 = r6
                android.os.Message r0 = r0.f417y
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
                android.os.Handler r0 = r0.f391R
                r1 = 1
                r2 = r5
                t r2 = r2.f394b
                android.os.Message r0 = r0.obtainMessage(r1, r2)
                r0.sendToTarget()
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.View$OnClickListenerC0064a.onClick(android.view.View):void");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public class RunnableC0065c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f422a;

        /* renamed from: b */
        public final /* synthetic */ View f423b;

        public RunnableC0065c(View view, View view2) {
            AlertController.this = r4;
            this.f422a = view;
            this.f423b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m7021f(AlertController.this.f374A, this.f422a, this.f423b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public class C0066d implements AbsListView.OnScrollListener {

        /* renamed from: a */
        public final /* synthetic */ View f425a;

        /* renamed from: b */
        public final /* synthetic */ View f426b;

        public C0066d(AlertController alertController, View view, View view2) {
            this.f425a = view;
            this.f426b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m7021f(absListView, this.f425a, this.f426b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$e.class */
    public class RunnableC0067e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f427a;

        /* renamed from: b */
        public final /* synthetic */ View f428b;

        public RunnableC0067e(View view, View view2) {
            AlertController.this = r4;
            this.f427a = view;
            this.f428b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m7021f(AlertController.this.f399g, this.f427a, this.f428b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f.class */
    public static class C0068f {

        /* renamed from: A */
        public int f430A;

        /* renamed from: B */
        public int f431B;

        /* renamed from: C */
        public int f432C;

        /* renamed from: D */
        public int f433D;

        /* renamed from: F */
        public boolean[] f435F;

        /* renamed from: G */
        public boolean f436G;

        /* renamed from: H */
        public boolean f437H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f439J;

        /* renamed from: K */
        public Cursor f440K;

        /* renamed from: L */
        public String f441L;

        /* renamed from: M */
        public String f442M;

        /* renamed from: N */
        public boolean f443N;

        /* renamed from: O */
        public AdapterView.OnItemSelectedListener f444O;

        /* renamed from: P */
        public AbstractC0073e f445P;

        /* renamed from: Q */
        public boolean f446Q;

        /* renamed from: a */
        public final Context f447a;

        /* renamed from: b */
        public final LayoutInflater f448b;

        /* renamed from: d */
        public Drawable f450d;

        /* renamed from: f */
        public CharSequence f452f;

        /* renamed from: g */
        public View f453g;

        /* renamed from: h */
        public CharSequence f454h;

        /* renamed from: i */
        public CharSequence f455i;

        /* renamed from: j */
        public Drawable f456j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f457k;

        /* renamed from: l */
        public CharSequence f458l;

        /* renamed from: m */
        public Drawable f459m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f460n;

        /* renamed from: o */
        public CharSequence f461o;

        /* renamed from: p */
        public Drawable f462p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f463q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f465s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f466t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f467u;

        /* renamed from: v */
        public CharSequence[] f468v;

        /* renamed from: w */
        public ListAdapter f469w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f470x;

        /* renamed from: y */
        public int f471y;

        /* renamed from: z */
        public View f472z;

        /* renamed from: c */
        public int f449c = 0;

        /* renamed from: e */
        public int f451e = 0;

        /* renamed from: E */
        public boolean f434E = false;

        /* renamed from: I */
        public int f438I = -1;

        /* renamed from: r */
        public boolean f464r = true;

        /* renamed from: androidx.appcompat.app.AlertController$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$a.class */
        public class C0069a extends ArrayAdapter<CharSequence> {

            /* renamed from: a */
            public final /* synthetic */ RecycleListView f473a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0069a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                C0068f.this = r7;
                this.f473a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0068f.this.f435F;
                if (zArr != null && zArr[i]) {
                    this.f473a.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$b.class */
        public class C0070b extends CursorAdapter {

            /* renamed from: a */
            public final int f475a;

            /* renamed from: b */
            public final int f476b;

            /* renamed from: c */
            public final /* synthetic */ RecycleListView f477c;

            /* renamed from: d */
            public final /* synthetic */ AlertController f478d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0070b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                C0068f.this = r6;
                this.f477c = recycleListView;
                this.f478d = alertController;
                Cursor cursor2 = getCursor();
                this.f475a = cursor2.getColumnIndexOrThrow(r6.f441L);
                this.f476b = cursor2.getColumnIndexOrThrow(r6.f442M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f475a));
                RecycleListView recycleListView = this.f477c;
                int position = cursor.getPosition();
                boolean z = true;
                if (cursor.getInt(this.f476b) != 1) {
                    z = false;
                }
                recycleListView.setItemChecked(position, z);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0068f.this.f448b.inflate(this.f478d.f386M, viewGroup, false);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$c.class */
        public class C0071c implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ AlertController f480a;

            public C0071c(AlertController alertController) {
                C0068f.this = r4;
                this.f480a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0068f.this.f470x.onClick(this.f480a.f394b, i);
                if (!C0068f.this.f437H) {
                    this.f480a.f394b.dismiss();
                }
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$d */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$d.class */
        public class C0072d implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ RecycleListView f482a;

            /* renamed from: b */
            public final /* synthetic */ AlertController f483b;

            public C0072d(RecycleListView recycleListView, AlertController alertController) {
                C0068f.this = r4;
                this.f482a = recycleListView;
                this.f483b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0068f.this.f435F;
                if (zArr != null) {
                    zArr[i] = this.f482a.isItemChecked(i);
                }
                C0068f.this.f439J.onClick(this.f483b.f394b, i, this.f482a.isItemChecked(i));
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$e */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$e.class */
        public interface AbstractC0073e {
            /* renamed from: a */
            void m6998a(ListView listView);
        }

        public C0068f(Context context) {
            this.f447a = context;
            this.f448b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: a */
        public void m7000a(AlertController alertController) {
            View view = this.f453g;
            if (view != null) {
                alertController.m7015l(view);
            } else {
                CharSequence charSequence = this.f452f;
                if (charSequence != null) {
                    alertController.m7010q(charSequence);
                }
                Drawable drawable = this.f450d;
                if (drawable != null) {
                    alertController.m7013n(drawable);
                }
                int i = this.f449c;
                if (i != 0) {
                    alertController.m7014m(i);
                }
                int i2 = this.f451e;
                if (i2 != 0) {
                    alertController.m7014m(alertController.m7024c(i2));
                }
            }
            CharSequence charSequence2 = this.f454h;
            if (charSequence2 != null) {
                alertController.m7012o(charSequence2);
            }
            CharSequence charSequence3 = this.f455i;
            if (charSequence3 != null || this.f456j != null) {
                alertController.m7016k(-1, charSequence3, this.f457k, null, this.f456j);
            }
            CharSequence charSequence4 = this.f458l;
            if (charSequence4 != null || this.f459m != null) {
                alertController.m7016k(-2, charSequence4, this.f460n, null, this.f459m);
            }
            CharSequence charSequence5 = this.f461o;
            if (charSequence5 != null || this.f462p != null) {
                alertController.m7016k(-3, charSequence5, this.f463q, null, this.f462p);
            }
            if (this.f468v != null || this.f440K != null || this.f469w != null) {
                m6999b(alertController);
            }
            View view2 = this.f472z;
            if (view2 != null) {
                if (this.f434E) {
                    alertController.m7007t(view2, this.f430A, this.f431B, this.f432C, this.f433D);
                    return;
                } else {
                    alertController.m7008s(view2);
                    return;
                }
            }
            int i3 = this.f471y;
            if (i3 == 0) {
                return;
            }
            alertController.m7009r(i3);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0120  */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m6999b(androidx.appcompat.app.AlertController r12) {
            /*
                Method dump skipped, instructions count: 306
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.AlertController.C0068f.m6999b(androidx.appcompat.app.AlertController):void");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$g.class */
    public static final class HandlerC0074g extends Handler {

        /* renamed from: a */
        public WeakReference<DialogInterface> f485a;

        public HandlerC0074g(DialogInterface dialogInterface) {
            this.f485a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f485a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$h.class */
    public static class C0075h extends ArrayAdapter<CharSequence> {
        public C0075h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, t tVar, Window window) {
        this.f393a = context;
        this.f394b = tVar;
        this.f395c = window;
        this.f391R = new HandlerC0074g(tVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, o.AlertDialog, C1389f.alertDialogStyle, 0);
        this.f383J = obtainStyledAttributes.getResourceId(o.AlertDialog_android_layout, 0);
        this.f384K = obtainStyledAttributes.getResourceId(o.AlertDialog_buttonPanelSideLayout, 0);
        this.f385L = obtainStyledAttributes.getResourceId(o.AlertDialog_listLayout, 0);
        this.f386M = obtainStyledAttributes.getResourceId(o.AlertDialog_multiChoiceItemLayout, 0);
        this.f387N = obtainStyledAttributes.getResourceId(o.AlertDialog_singleChoiceItemLayout, 0);
        this.f388O = obtainStyledAttributes.getResourceId(o.AlertDialog_listItemLayout, 0);
        this.f389P = obtainStyledAttributes.getBoolean(o.AlertDialog_showTitle, true);
        this.f396d = obtainStyledAttributes.getDimensionPixelSize(o.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        tVar.supportRequestWindowFeature(1);
    }

    /* renamed from: a */
    public static boolean m7026a(View view) {
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
            if (m7026a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: f */
    public static void m7021f(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: z */
    public static boolean m7001z(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(C1389f.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public final void m7025b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: c */
    public int m7024c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f393a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: d */
    public ListView m7023d() {
        return this.f399g;
    }

    /* renamed from: e */
    public void m7022e() {
        this.f394b.setContentView(m7017j());
        m7002y();
    }

    /* renamed from: g */
    public boolean m7020g(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f374A;
        return nestedScrollView != null && nestedScrollView.k(keyEvent);
    }

    /* renamed from: h */
    public boolean m7019h(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f374A;
        return nestedScrollView != null && nestedScrollView.k(keyEvent);
    }

    /* renamed from: i */
    public final ViewGroup m7018i(View view, View view2) {
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
    public final int m7017j() {
        int i = this.f384K;
        if (i != 0 && this.f390Q == 1) {
            return i;
        }
        return this.f383J;
    }

    /* renamed from: k */
    public void m7016k(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f391R.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f416x = charSequence;
            this.f417y = message2;
            this.f418z = drawable;
        } else if (i == -2) {
            this.f412t = charSequence;
            this.f413u = message2;
            this.f414v = drawable;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f408p = charSequence;
            this.f409q = message2;
            this.f410r = drawable;
        }
    }

    /* renamed from: l */
    public void m7015l(View view) {
        this.f380G = view;
    }

    /* renamed from: m */
    public void m7014m(int i) {
        this.f376C = null;
        this.f375B = i;
        ImageView imageView = this.f377D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f377D.setImageResource(this.f375B);
        }
    }

    /* renamed from: n */
    public void m7013n(Drawable drawable) {
        this.f376C = drawable;
        this.f375B = 0;
        ImageView imageView = this.f377D;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f377D.setImageDrawable(drawable);
        }
    }

    /* renamed from: o */
    public void m7012o(CharSequence charSequence) {
        this.f398f = charSequence;
        TextView textView = this.f379F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: p */
    public final void m7011p(ViewGroup viewGroup, View view, int i, int i2) {
        View view2;
        View findViewById = this.f395c.findViewById(k.scrollIndicatorUp);
        View findViewById2 = this.f395c.findViewById(k.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            jb.D0(view, i, i2);
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
            if (this.f398f != null) {
                this.f374A.setOnScrollChangeListener(new b(this, view3, view2));
                this.f374A.post(new RunnableC0065c(view3, view2));
                return;
            }
            ListView listView = this.f399g;
            if (listView != null) {
                listView.setOnScrollListener(new C0066d(this, view3, view2));
                this.f399g.post(new RunnableC0067e(view3, view2));
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

    /* renamed from: q */
    public void m7010q(CharSequence charSequence) {
        this.f397e = charSequence;
        TextView textView = this.f378E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: r */
    public void m7009r(int i) {
        this.f400h = null;
        this.f401i = i;
        this.f406n = false;
    }

    /* renamed from: s */
    public void m7008s(View view) {
        this.f400h = view;
        this.f401i = 0;
        this.f406n = false;
    }

    /* renamed from: t */
    public void m7007t(View view, int i, int i2, int i3, int i4) {
        this.f400h = view;
        this.f401i = 0;
        this.f406n = true;
        this.f402j = i;
        this.f403k = i2;
        this.f404l = i3;
        this.f405m = i4;
    }

    /* renamed from: u */
    public final void m7006u(ViewGroup viewGroup) {
        boolean z;
        Button button;
        Button button2 = (Button) viewGroup.findViewById(16908313);
        this.f407o = button2;
        button2.setOnClickListener(this.f392S);
        if (!TextUtils.isEmpty(this.f408p) || this.f410r != null) {
            this.f407o.setText(this.f408p);
            Drawable drawable = this.f410r;
            if (drawable != null) {
                int i = this.f396d;
                drawable.setBounds(0, 0, i, i);
                this.f407o.setCompoundDrawables(this.f410r, null, null, null);
            }
            this.f407o.setVisibility(0);
            z = true;
        } else {
            this.f407o.setVisibility(8);
            z = false;
        }
        Button button3 = (Button) viewGroup.findViewById(16908314);
        this.f411s = button3;
        button3.setOnClickListener(this.f392S);
        if (!TextUtils.isEmpty(this.f412t) || this.f414v != null) {
            this.f411s.setText(this.f412t);
            Drawable drawable2 = this.f414v;
            if (drawable2 != null) {
                int i2 = this.f396d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f411s.setCompoundDrawables(this.f414v, null, null, null);
            }
            this.f411s.setVisibility(0);
            z |= true;
        } else {
            this.f411s.setVisibility(8);
        }
        Button button4 = (Button) viewGroup.findViewById(16908315);
        this.f415w = button4;
        button4.setOnClickListener(this.f392S);
        if (!TextUtils.isEmpty(this.f416x) || this.f418z != null) {
            this.f415w.setText(this.f416x);
            Drawable drawable3 = this.f418z;
            if (drawable3 != null) {
                int i3 = this.f396d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f415w.setCompoundDrawables(this.f418z, null, null, null);
            }
            this.f415w.setVisibility(0);
            z |= true;
        } else {
            this.f415w.setVisibility(8);
        }
        if (m7001z(this.f393a)) {
            if (z) {
                button = this.f407o;
            } else if (z) {
                button = this.f411s;
            } else if (z) {
                button = this.f415w;
            }
            m7025b(button);
        }
        if (!(z)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: v */
    public final void m7005v(ViewGroup viewGroup) {
        NestedScrollView findViewById = this.f395c.findViewById(k.scrollView);
        this.f374A = findViewById;
        findViewById.setFocusable(false);
        this.f374A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f379F = textView;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f398f;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f374A.removeView(this.f379F);
        if (this.f399g == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f374A.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f374A);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f399g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: w */
    public final void m7004w(ViewGroup viewGroup) {
        View view = this.f400h;
        boolean z = false;
        if (view == null) {
            view = this.f401i != 0 ? LayoutInflater.from(this.f393a).inflate(this.f401i, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m7026a(view)) {
            this.f395c.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f395c.findViewById(k.custom);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        if (this.f406n) {
            frameLayout.setPadding(this.f402j, this.f403k, this.f404l, this.f405m);
        }
        if (this.f399g == null) {
            return;
        }
        ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).f558a = 0.0f;
    }

    /* renamed from: x */
    public final void m7003x(ViewGroup viewGroup) {
        if (this.f380G != null) {
            viewGroup.addView(this.f380G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f395c.findViewById(k.title_template).setVisibility(8);
            return;
        }
        this.f377D = (ImageView) this.f395c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f397e)) || !this.f389P) {
            this.f395c.findViewById(k.title_template).setVisibility(8);
            this.f377D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f395c.findViewById(k.alertTitle);
        this.f378E = textView;
        textView.setText(this.f397e);
        int i = this.f375B;
        if (i != 0) {
            this.f377D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f376C;
        if (drawable != null) {
            this.f377D.setImageDrawable(drawable);
            return;
        }
        this.f378E.setPadding(this.f377D.getPaddingLeft(), this.f377D.getPaddingTop(), this.f377D.getPaddingRight(), this.f377D.getPaddingBottom());
        this.f377D.setVisibility(8);
    }

    /* renamed from: y */
    public final void m7002y() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f395c.findViewById(k.parentPanel);
        int i = k.topPanel;
        View findViewById4 = findViewById3.findViewById(i);
        int i2 = k.contentPanel;
        View findViewById5 = findViewById3.findViewById(i2);
        int i3 = k.buttonPanel;
        View findViewById6 = findViewById3.findViewById(i3);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(k.customPanel);
        m7004w(viewGroup);
        View findViewById7 = viewGroup.findViewById(i);
        View findViewById8 = viewGroup.findViewById(i2);
        View findViewById9 = viewGroup.findViewById(i3);
        ViewGroup m7018i = m7018i(findViewById7, findViewById4);
        ViewGroup m7018i2 = m7018i(findViewById8, findViewById5);
        ViewGroup m7018i3 = m7018i(findViewById9, findViewById6);
        m7005v(m7018i2);
        m7006u(m7018i3);
        m7003x(m7018i);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (m7018i == null || m7018i.getVisibility() == 8) ? false : true;
        boolean z3 = (m7018i3 == null || m7018i3.getVisibility() == 8) ? false : true;
        if (!z3 && m7018i2 != null && (findViewById2 = m7018i2.findViewById(k.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f374A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f398f != null || this.f399g != null) {
                view = m7018i.findViewById(k.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m7018i2 != null && (findViewById = m7018i2.findViewById(k.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f399g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).setHasDecor(z2, z3);
        }
        if (!z) {
            ListView listView2 = this.f399g;
            if (listView2 == null) {
                listView2 = this.f374A;
            }
            if (listView2 != null) {
                int i4 = 0;
                if (z3) {
                    i4 = 2;
                }
                m7011p(m7018i2, listView2, z2 | i4, 3);
            }
        }
        ListView listView3 = this.f399g;
        if (listView3 == null || (listAdapter = this.f381H) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i5 = this.f382I;
        if (i5 <= -1) {
            return;
        }
        listView3.setItemChecked(i5, true);
        listView3.setSelection(i5);
    }
}
