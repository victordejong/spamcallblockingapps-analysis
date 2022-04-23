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
import p012b.p016b.C0574a;
import p012b.p016b.C0579f;
import p012b.p016b.C0583j;
import p012b.p016b.p017k.DialogC0588d;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    public NestedScrollView f157A;

    /* renamed from: C */
    public Drawable f159C;

    /* renamed from: D */
    public ImageView f160D;

    /* renamed from: E */
    public TextView f161E;

    /* renamed from: F */
    public TextView f162F;

    /* renamed from: G */
    public View f163G;

    /* renamed from: H */
    public ListAdapter f164H;

    /* renamed from: J */
    public int f166J;

    /* renamed from: K */
    public int f167K;

    /* renamed from: L */
    public int f168L;

    /* renamed from: M */
    public int f169M;

    /* renamed from: N */
    public int f170N;

    /* renamed from: O */
    public int f171O;

    /* renamed from: P */
    public boolean f172P;

    /* renamed from: R */
    public Handler f174R;

    /* renamed from: a */
    public final Context f176a;

    /* renamed from: b */
    public final DialogC0588d f177b;

    /* renamed from: c */
    public final Window f178c;

    /* renamed from: d */
    public final int f179d;

    /* renamed from: e */
    public CharSequence f180e;

    /* renamed from: f */
    public CharSequence f181f;

    /* renamed from: g */
    public ListView f182g;

    /* renamed from: h */
    public View f183h;

    /* renamed from: i */
    public int f184i;

    /* renamed from: j */
    public int f185j;

    /* renamed from: k */
    public int f186k;

    /* renamed from: l */
    public int f187l;

    /* renamed from: m */
    public int f188m;

    /* renamed from: o */
    public Button f190o;

    /* renamed from: p */
    public CharSequence f191p;

    /* renamed from: q */
    public Message f192q;

    /* renamed from: r */
    public Drawable f193r;

    /* renamed from: s */
    public Button f194s;

    /* renamed from: t */
    public CharSequence f195t;

    /* renamed from: u */
    public Message f196u;

    /* renamed from: v */
    public Drawable f197v;

    /* renamed from: w */
    public Button f198w;

    /* renamed from: x */
    public CharSequence f199x;

    /* renamed from: y */
    public Message f200y;

    /* renamed from: z */
    public Drawable f201z;

    /* renamed from: n */
    public boolean f189n = false;

    /* renamed from: B */
    public int f158B = 0;

    /* renamed from: I */
    public int f165I = -1;

    /* renamed from: Q */
    public int f173Q = 0;

    /* renamed from: S */
    public final View.OnClickListener f175S = new View$OnClickListenerC0071a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        public final int f202a;

        /* renamed from: b */
        public final int f203b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.RecycleListView);
            this.f203b = obtainStyledAttributes.getDimensionPixelOffset(C0583j.RecycleListView_paddingBottomNoButtons, -1);
            this.f202a = obtainStyledAttributes.getDimensionPixelOffset(C0583j.RecycleListView_paddingTopNoTitle, -1);
        }

        /* renamed from: a */
        public void m39185a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f202a, getPaddingRight(), z2 ? getPaddingBottom() : this.f203b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public class View$OnClickListenerC0071a implements View.OnClickListener {
        public View$OnClickListenerC0071a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            Message message4;
            AlertController alertController = AlertController.this;
            if (view != alertController.f190o || (message4 = alertController.f192q) == null) {
                AlertController alertController2 = AlertController.this;
                if (view != alertController2.f194s || (message3 = alertController2.f196u) == null) {
                    AlertController alertController3 = AlertController.this;
                    message = (view != alertController3.f198w || (message2 = alertController3.f200y) == null) ? null : Message.obtain(message2);
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
            alertController4.f174R.obtainMessage(1, alertController4.f177b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public class C0072b implements NestedScrollView.AbstractC0208b {

        /* renamed from: a */
        public final /* synthetic */ View f205a;

        /* renamed from: b */
        public final /* synthetic */ View f206b;

        public C0072b(AlertController alertController, View view, View view2) {
            this.f205a = view;
            this.f206b = view2;
        }

        @Override // androidx.core.widget.NestedScrollView.AbstractC0208b
        /* renamed from: a */
        public void mo38517a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            AlertController.m39202a(nestedScrollView, this.f205a, this.f206b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public class RunnableC0073c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f207a;

        /* renamed from: b */
        public final /* synthetic */ View f208b;

        public RunnableC0073c(View view, View view2) {
            this.f207a = view;
            this.f208b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m39202a(AlertController.this.f157A, this.f207a, this.f208b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public class C0074d implements AbsListView.OnScrollListener {

        /* renamed from: a */
        public final /* synthetic */ View f210a;

        /* renamed from: b */
        public final /* synthetic */ View f211b;

        public C0074d(AlertController alertController, View view, View view2) {
            this.f210a = view;
            this.f211b = view2;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            AlertController.m39202a(absListView, this.f210a, this.f211b);
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$e.class */
    public class RunnableC0075e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f212a;

        /* renamed from: b */
        public final /* synthetic */ View f213b;

        public RunnableC0075e(View view, View view2) {
            this.f212a = view;
            this.f213b = view2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertController.m39202a(AlertController.this.f182g, this.f212a, this.f213b);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f.class */
    public static class C0076f {

        /* renamed from: A */
        public int f215A;

        /* renamed from: B */
        public int f216B;

        /* renamed from: C */
        public int f217C;

        /* renamed from: D */
        public int f218D;

        /* renamed from: F */
        public boolean[] f220F;

        /* renamed from: G */
        public boolean f221G;

        /* renamed from: H */
        public boolean f222H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f224J;

        /* renamed from: K */
        public Cursor f225K;

        /* renamed from: L */
        public String f226L;

        /* renamed from: M */
        public String f227M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f228N;

        /* renamed from: O */
        public AbstractC0081e f229O;

        /* renamed from: a */
        public final Context f230a;

        /* renamed from: b */
        public final LayoutInflater f231b;

        /* renamed from: d */
        public Drawable f233d;

        /* renamed from: f */
        public CharSequence f235f;

        /* renamed from: g */
        public View f236g;

        /* renamed from: h */
        public CharSequence f237h;

        /* renamed from: i */
        public CharSequence f238i;

        /* renamed from: j */
        public Drawable f239j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f240k;

        /* renamed from: l */
        public CharSequence f241l;

        /* renamed from: m */
        public Drawable f242m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f243n;

        /* renamed from: o */
        public CharSequence f244o;

        /* renamed from: p */
        public Drawable f245p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f246q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f248s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f249t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f250u;

        /* renamed from: v */
        public CharSequence[] f251v;

        /* renamed from: w */
        public ListAdapter f252w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f253x;

        /* renamed from: y */
        public int f254y;

        /* renamed from: z */
        public View f255z;

        /* renamed from: c */
        public int f232c = 0;

        /* renamed from: e */
        public int f234e = 0;

        /* renamed from: E */
        public boolean f219E = false;

        /* renamed from: I */
        public int f223I = -1;

        /* renamed from: r */
        public boolean f247r = true;

        /* renamed from: androidx.appcompat.app.AlertController$f$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$a.class */
        public class C0077a extends ArrayAdapter<CharSequence> {

            /* renamed from: a */
            public final /* synthetic */ RecycleListView f256a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0077a(Context context, int i, int i2, CharSequence[] charSequenceArr, RecycleListView recycleListView) {
                super(context, i, i2, charSequenceArr);
                this.f256a = recycleListView;
            }

            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                View view2 = super.getView(i, view, viewGroup);
                boolean[] zArr = C0076f.this.f220F;
                if (zArr != null && zArr[i]) {
                    this.f256a.setItemChecked(i, true);
                }
                return view2;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$b */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$b.class */
        public class C0078b extends CursorAdapter {

            /* renamed from: a */
            public final int f258a;

            /* renamed from: b */
            public final int f259b;

            /* renamed from: c */
            public final /* synthetic */ RecycleListView f260c;

            /* renamed from: d */
            public final /* synthetic */ AlertController f261d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0078b(Context context, Cursor cursor, boolean z, RecycleListView recycleListView, AlertController alertController) {
                super(context, cursor, z);
                this.f260c = recycleListView;
                this.f261d = alertController;
                Cursor cursor2 = getCursor();
                this.f258a = cursor2.getColumnIndexOrThrow(C0076f.this.f226L);
                this.f259b = cursor2.getColumnIndexOrThrow(C0076f.this.f227M);
            }

            @Override // android.widget.CursorAdapter
            public void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f258a));
                RecycleListView recycleListView = this.f260c;
                int position = cursor.getPosition();
                boolean z = true;
                if (cursor.getInt(this.f259b) != 1) {
                    z = false;
                }
                recycleListView.setItemChecked(position, z);
            }

            @Override // android.widget.CursorAdapter
            public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                return C0076f.this.f231b.inflate(this.f261d.f169M, viewGroup, false);
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$c */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$c.class */
        public class C0079c implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ AlertController f263a;

            public C0079c(AlertController alertController) {
                this.f263a = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                C0076f.this.f253x.onClick(this.f263a.f177b, i);
                if (!C0076f.this.f222H) {
                    this.f263a.f177b.dismiss();
                }
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$d */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$d.class */
        public class C0080d implements AdapterView.OnItemClickListener {

            /* renamed from: a */
            public final /* synthetic */ RecycleListView f265a;

            /* renamed from: b */
            public final /* synthetic */ AlertController f266b;

            public C0080d(RecycleListView recycleListView, AlertController alertController) {
                this.f265a = recycleListView;
                this.f266b = alertController;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                boolean[] zArr = C0076f.this.f220F;
                if (zArr != null) {
                    zArr[i] = this.f265a.isItemChecked(i);
                }
                C0076f.this.f224J.onClick(this.f266b.f177b, i, this.f265a.isItemChecked(i));
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$f$e */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$f$e.class */
        public interface AbstractC0081e {
            /* renamed from: a */
            void m39182a(ListView listView);
        }

        public C0076f(Context context) {
            this.f230a = context;
            this.f231b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: a */
        public void m39184a(AlertController alertController) {
            View view = this.f236g;
            if (view != null) {
                alertController.m39205a(view);
            } else {
                CharSequence charSequence = this.f235f;
                if (charSequence != null) {
                    alertController.m39192b(charSequence);
                }
                Drawable drawable = this.f233d;
                if (drawable != null) {
                    alertController.m39206a(drawable);
                }
                int i = this.f232c;
                if (i != 0) {
                    alertController.m39196b(i);
                }
                int i2 = this.f234e;
                if (i2 != 0) {
                    alertController.m39196b(alertController.m39210a(i2));
                }
            }
            CharSequence charSequence2 = this.f237h;
            if (charSequence2 != null) {
                alertController.m39198a(charSequence2);
            }
            if (!(this.f238i == null && this.f239j == null)) {
                alertController.m39208a(-1, this.f238i, this.f240k, (Message) null, this.f239j);
            }
            if (!(this.f241l == null && this.f242m == null)) {
                alertController.m39208a(-2, this.f241l, this.f243n, (Message) null, this.f242m);
            }
            if (!(this.f244o == null && this.f245p == null)) {
                alertController.m39208a(-3, this.f244o, this.f246q, (Message) null, this.f245p);
            }
            if (!(this.f251v == null && this.f225K == null && this.f252w == null)) {
                m39183b(alertController);
            }
            View view2 = this.f255z;
            if (view2 == null) {
                int i3 = this.f254y;
                if (i3 != 0) {
                    alertController.m39190c(i3);
                }
            } else if (this.f219E) {
                alertController.m39204a(view2, this.f215A, this.f216B, this.f217C, this.f218D);
            } else {
                alertController.m39194b(view2);
            }
        }

        /* renamed from: b */
        public final void m39183b(AlertController alertController) {
            ListAdapter listAdapter;
            RecycleListView recycleListView = (RecycleListView) this.f231b.inflate(alertController.f168L, (ViewGroup) null);
            if (this.f221G) {
                listAdapter = this.f225K == null ? new C0077a(this.f230a, alertController.f169M, 16908308, this.f251v, recycleListView) : new C0078b(this.f230a, this.f225K, false, recycleListView, alertController);
            } else {
                int i = this.f222H ? alertController.f170N : alertController.f171O;
                if (this.f225K != null) {
                    listAdapter = new SimpleCursorAdapter(this.f230a, i, this.f225K, new String[]{this.f226L}, new int[]{16908308});
                } else {
                    listAdapter = this.f252w;
                    if (listAdapter == null) {
                        listAdapter = new C0083h(this.f230a, i, 16908308, this.f251v);
                    }
                }
            }
            AbstractC0081e eVar = this.f229O;
            if (eVar != null) {
                eVar.m39182a(recycleListView);
            }
            alertController.f164H = listAdapter;
            alertController.f165I = this.f223I;
            if (this.f253x != null) {
                recycleListView.setOnItemClickListener(new C0079c(alertController));
            } else if (this.f224J != null) {
                recycleListView.setOnItemClickListener(new C0080d(recycleListView, alertController));
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f228N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f222H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f221G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f182g = recycleListView;
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$g */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$g.class */
    public static final class HandlerC0082g extends Handler {

        /* renamed from: a */
        public WeakReference<DialogInterface> f268a;

        public HandlerC0082g(DialogInterface dialogInterface) {
            this.f268a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f268a.get(), message.what);
            } else if (i == 1) {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$h */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$h.class */
    public static class C0083h extends ArrayAdapter<CharSequence> {
        public C0083h(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, DialogC0588d dVar, Window window) {
        this.f176a = context;
        this.f177b = dVar;
        this.f178c = window;
        this.f174R = new HandlerC0082g(dVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0583j.AlertDialog, C0574a.alertDialogStyle, 0);
        this.f166J = obtainStyledAttributes.getResourceId(C0583j.AlertDialog_android_layout, 0);
        this.f167K = obtainStyledAttributes.getResourceId(C0583j.AlertDialog_buttonPanelSideLayout, 0);
        this.f168L = obtainStyledAttributes.getResourceId(C0583j.AlertDialog_listLayout, 0);
        this.f169M = obtainStyledAttributes.getResourceId(C0583j.AlertDialog_multiChoiceItemLayout, 0);
        this.f170N = obtainStyledAttributes.getResourceId(C0583j.AlertDialog_singleChoiceItemLayout, 0);
        this.f171O = obtainStyledAttributes.getResourceId(C0583j.AlertDialog_listItemLayout, 0);
        this.f172P = obtainStyledAttributes.getBoolean(C0583j.AlertDialog_showTitle, true);
        this.f179d = obtainStyledAttributes.getDimensionPixelSize(C0583j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dVar.m36856a(1);
    }

    /* renamed from: a */
    public static void m39202a(View view, View view2, View view3) {
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

    /* renamed from: a */
    public static boolean m39207a(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(C0574a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static boolean m39189c(View view) {
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
            if (m39189c(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public int m39210a(int i) {
        TypedValue typedValue = new TypedValue();
        this.f176a.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: a */
    public final ViewGroup m39203a(View view, View view2) {
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

    /* renamed from: a */
    public ListView m39211a() {
        return this.f182g;
    }

    /* renamed from: a */
    public void m39208a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f174R.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f199x = charSequence;
            this.f200y = message2;
            this.f201z = drawable;
        } else if (i == -2) {
            this.f195t = charSequence;
            this.f196u = message2;
            this.f197v = drawable;
        } else if (i == -1) {
            this.f191p = charSequence;
            this.f192q = message2;
            this.f193r = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    /* renamed from: a */
    public void m39206a(Drawable drawable) {
        this.f159C = drawable;
        this.f158B = 0;
        ImageView imageView = this.f160D;
        if (imageView == null) {
            return;
        }
        if (drawable != null) {
            imageView.setVisibility(0);
            this.f160D.setImageDrawable(drawable);
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: a */
    public void m39205a(View view) {
        this.f163G = view;
    }

    /* renamed from: a */
    public void m39204a(View view, int i, int i2, int i3, int i4) {
        this.f183h = view;
        this.f184i = 0;
        this.f189n = true;
        this.f185j = i;
        this.f186k = i2;
        this.f187l = i3;
        this.f188m = i4;
    }

    /* renamed from: a */
    public final void m39201a(ViewGroup viewGroup) {
        boolean z;
        Button button = (Button) viewGroup.findViewById(16908313);
        this.f190o = button;
        button.setOnClickListener(this.f175S);
        boolean z2 = true;
        if (!TextUtils.isEmpty(this.f191p) || this.f193r != null) {
            this.f190o.setText(this.f191p);
            Drawable drawable = this.f193r;
            if (drawable != null) {
                int i = this.f179d;
                drawable.setBounds(0, 0, i, i);
                this.f190o.setCompoundDrawables(this.f193r, null, null, null);
            }
            this.f190o.setVisibility(0);
            z = true;
        } else {
            this.f190o.setVisibility(8);
            z = false;
        }
        Button button2 = (Button) viewGroup.findViewById(16908314);
        this.f194s = button2;
        button2.setOnClickListener(this.f175S);
        if (!TextUtils.isEmpty(this.f195t) || this.f197v != null) {
            this.f194s.setText(this.f195t);
            Drawable drawable2 = this.f197v;
            if (drawable2 != null) {
                int i2 = this.f179d;
                drawable2.setBounds(0, 0, i2, i2);
                this.f194s.setCompoundDrawables(this.f197v, null, null, null);
            }
            this.f194s.setVisibility(0);
            z |= true;
        } else {
            this.f194s.setVisibility(8);
        }
        Button button3 = (Button) viewGroup.findViewById(16908315);
        this.f198w = button3;
        button3.setOnClickListener(this.f175S);
        if (!TextUtils.isEmpty(this.f199x) || this.f201z != null) {
            this.f198w.setText(this.f199x);
            Drawable drawable3 = this.f201z;
            if (drawable3 != null) {
                int i3 = this.f179d;
                drawable3.setBounds(0, 0, i3, i3);
                this.f198w.setCompoundDrawables(this.f201z, null, null, null);
            }
            this.f198w.setVisibility(0);
            z |= true;
        } else {
            this.f198w.setVisibility(8);
        }
        if (m39207a(this.f176a)) {
            if (z) {
                m39199a(this.f190o);
            } else if (z) {
                m39199a(this.f194s);
            } else if (z) {
                m39199a(this.f198w);
            }
        }
        if (!z) {
            z2 = false;
        }
        if (!z2) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    public final void m39200a(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f178c.findViewById(C0579f.scrollIndicatorUp);
        View findViewById2 = this.f178c.findViewById(C0579f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            C1002u.m35246a(view, i, i2);
            if (findViewById != null) {
                viewGroup.removeView(findViewById);
            }
            if (findViewById2 != null) {
                viewGroup.removeView(findViewById2);
                return;
            }
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
        if (view2 != null || view3 != null) {
            if (this.f181f != null) {
                this.f157A.setOnScrollChangeListener(new C0072b(this, view2, view3));
                this.f157A.post(new RunnableC0073c(view2, view3));
                return;
            }
            ListView listView = this.f182g;
            if (listView != null) {
                listView.setOnScrollListener(new C0074d(this, view2, view3));
                this.f182g.post(new RunnableC0075e(view2, view3));
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

    /* renamed from: a */
    public final void m39199a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public void m39198a(CharSequence charSequence) {
        this.f181f = charSequence;
        TextView textView = this.f162F;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: a */
    public boolean m39209a(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f157A;
        return nestedScrollView != null && nestedScrollView.m38542a(keyEvent);
    }

    /* renamed from: b */
    public void m39197b() {
        this.f177b.setContentView(m39191c());
        m39187d();
    }

    /* renamed from: b */
    public void m39196b(int i) {
        this.f159C = null;
        this.f158B = i;
        ImageView imageView = this.f160D;
        if (imageView == null) {
            return;
        }
        if (i != 0) {
            imageView.setVisibility(0);
            this.f160D.setImageResource(this.f158B);
            return;
        }
        imageView.setVisibility(8);
    }

    /* renamed from: b */
    public void m39194b(View view) {
        this.f183h = view;
        this.f184i = 0;
        this.f189n = false;
    }

    /* renamed from: b */
    public final void m39193b(ViewGroup viewGroup) {
        NestedScrollView nestedScrollView = (NestedScrollView) this.f178c.findViewById(C0579f.scrollView);
        this.f157A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        this.f157A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroup.findViewById(16908299);
        this.f162F = textView;
        if (textView != null) {
            CharSequence charSequence = this.f181f;
            if (charSequence != null) {
                textView.setText(charSequence);
                return;
            }
            textView.setVisibility(8);
            this.f157A.removeView(this.f162F);
            if (this.f182g != null) {
                ViewGroup viewGroup2 = (ViewGroup) this.f157A.getParent();
                int indexOfChild = viewGroup2.indexOfChild(this.f157A);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(this.f182g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                return;
            }
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: b */
    public void m39192b(CharSequence charSequence) {
        this.f180e = charSequence;
        TextView textView = this.f161E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: b */
    public boolean m39195b(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f157A;
        return nestedScrollView != null && nestedScrollView.m38542a(keyEvent);
    }

    /* renamed from: c */
    public final int m39191c() {
        int i = this.f167K;
        if (i != 0 && this.f173Q == 1) {
            return i;
        }
        return this.f166J;
    }

    /* renamed from: c */
    public void m39190c(int i) {
        this.f183h = null;
        this.f184i = i;
        this.f189n = false;
    }

    /* renamed from: c */
    public final void m39188c(ViewGroup viewGroup) {
        View view = this.f183h;
        boolean z = false;
        if (view == null) {
            view = this.f184i != 0 ? LayoutInflater.from(this.f176a).inflate(this.f184i, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m39189c(view)) {
            this.f178c.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) this.f178c.findViewById(C0579f.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (this.f189n) {
                frameLayout.setPadding(this.f185j, this.f186k, this.f187l, this.f188m);
            }
            if (this.f182g != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).f628a = 0.0f;
                return;
            }
            return;
        }
        viewGroup.setVisibility(8);
    }

    /* renamed from: d */
    public final void m39187d() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f178c.findViewById(C0579f.parentPanel);
        View findViewById4 = findViewById3.findViewById(C0579f.topPanel);
        View findViewById5 = findViewById3.findViewById(C0579f.contentPanel);
        View findViewById6 = findViewById3.findViewById(C0579f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C0579f.customPanel);
        m39188c(viewGroup);
        View findViewById7 = viewGroup.findViewById(C0579f.topPanel);
        View findViewById8 = viewGroup.findViewById(C0579f.contentPanel);
        View findViewById9 = viewGroup.findViewById(C0579f.buttonPanel);
        ViewGroup a = m39203a(findViewById7, findViewById4);
        ViewGroup a2 = m39203a(findViewById8, findViewById5);
        ViewGroup a3 = m39203a(findViewById9, findViewById6);
        m39193b(a2);
        m39201a(a3);
        m39186d(a);
        int i = 0;
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (a == null || a.getVisibility() == 8) ? false : true;
        boolean z3 = (a3 == null || a3.getVisibility() == 8) ? false : true;
        if (!(z3 || a2 == null || (findViewById2 = a2.findViewById(C0579f.textSpacerNoButtons)) == null)) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f157A;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (!(this.f181f == null && this.f182g == null)) {
                view = a.findViewById(C0579f.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (!(a2 == null || (findViewById = a2.findViewById(C0579f.textSpacerNoTitle)) == null)) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f182g;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).m39185a(z2, z3);
        }
        if (!z) {
            View view2 = this.f182g;
            if (view2 == null) {
                view2 = this.f157A;
            }
            if (view2 != null) {
                if (z3) {
                    i = 2;
                }
                int i2 = z2 ? 1 : 0;
                char c = z2 ? 1 : 0;
                m39200a(a2, view2, i2 | i, 3);
            }
        }
        ListView listView2 = this.f182g;
        if (listView2 != null && (listAdapter = this.f164H) != null) {
            listView2.setAdapter(listAdapter);
            int i3 = this.f165I;
            if (i3 > -1) {
                listView2.setItemChecked(i3, true);
                listView2.setSelection(i3);
            }
        }
    }

    /* renamed from: d */
    public final void m39186d(ViewGroup viewGroup) {
        if (this.f163G != null) {
            viewGroup.addView(this.f163G, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f178c.findViewById(C0579f.title_template).setVisibility(8);
            return;
        }
        this.f160D = (ImageView) this.f178c.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f180e)) || !this.f172P) {
            this.f178c.findViewById(C0579f.title_template).setVisibility(8);
            this.f160D.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        TextView textView = (TextView) this.f178c.findViewById(C0579f.alertTitle);
        this.f161E = textView;
        textView.setText(this.f180e);
        int i = this.f158B;
        if (i != 0) {
            this.f160D.setImageResource(i);
            return;
        }
        Drawable drawable = this.f159C;
        if (drawable != null) {
            this.f160D.setImageDrawable(drawable);
            return;
        }
        this.f161E.setPadding(this.f160D.getPaddingLeft(), this.f160D.getPaddingTop(), this.f160D.getPaddingRight(), this.f160D.getPaddingBottom());
        this.f160D.setVisibility(8);
    }
}
