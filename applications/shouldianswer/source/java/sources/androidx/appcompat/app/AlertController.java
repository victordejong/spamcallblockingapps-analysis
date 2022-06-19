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
import androidx.appcompat.C0051a;
import androidx.appcompat.widget.C0277ae;
import androidx.core.p023g.C0552u;
import androidx.core.widget.NestedScrollView;
import com.google.android.flexbox.FlexItem;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    private int f118A;

    /* renamed from: C */
    private CharSequence f120C;

    /* renamed from: D */
    private Drawable f121D;

    /* renamed from: E */
    private CharSequence f122E;

    /* renamed from: F */
    private Drawable f123F;

    /* renamed from: G */
    private CharSequence f124G;

    /* renamed from: H */
    private Drawable f125H;

    /* renamed from: J */
    private Drawable f127J;

    /* renamed from: K */
    private ImageView f128K;

    /* renamed from: L */
    private TextView f129L;

    /* renamed from: M */
    private TextView f130M;

    /* renamed from: N */
    private View f131N;

    /* renamed from: O */
    private int f132O;

    /* renamed from: P */
    private int f133P;

    /* renamed from: Q */
    private boolean f134Q;

    /* renamed from: a */
    final DialogC0116i f137a;

    /* renamed from: b */
    ListView f138b;

    /* renamed from: c */
    Button f139c;

    /* renamed from: d */
    Message f140d;

    /* renamed from: e */
    Button f141e;

    /* renamed from: f */
    Message f142f;

    /* renamed from: g */
    Button f143g;

    /* renamed from: h */
    Message f144h;

    /* renamed from: i */
    NestedScrollView f145i;

    /* renamed from: j */
    ListAdapter f146j;

    /* renamed from: l */
    int f148l;

    /* renamed from: m */
    int f149m;

    /* renamed from: n */
    int f150n;

    /* renamed from: o */
    int f151o;

    /* renamed from: p */
    Handler f152p;

    /* renamed from: q */
    private final Context f153q;

    /* renamed from: r */
    private final Window f154r;

    /* renamed from: s */
    private final int f155s;

    /* renamed from: t */
    private CharSequence f156t;

    /* renamed from: u */
    private CharSequence f157u;

    /* renamed from: v */
    private View f158v;

    /* renamed from: w */
    private int f159w;

    /* renamed from: x */
    private int f160x;

    /* renamed from: y */
    private int f161y;

    /* renamed from: z */
    private int f162z;

    /* renamed from: B */
    private boolean f119B = false;

    /* renamed from: I */
    private int f126I = 0;

    /* renamed from: k */
    int f147k = -1;

    /* renamed from: R */
    private int f135R = 0;

    /* renamed from: S */
    private final View.OnClickListener f136S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message obtain = (view != AlertController.this.f139c || AlertController.this.f140d == null) ? (view != AlertController.this.f141e || AlertController.this.f142f == null) ? (view != AlertController.this.f143g || AlertController.this.f144h == null) ? null : Message.obtain(AlertController.this.f144h) : Message.obtain(AlertController.this.f142f) : Message.obtain(AlertController.this.f140d);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController.this.f152p.obtainMessage(1, AlertController.this.f137a).sendToTarget();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        private final int f176a;

        /* renamed from: b */
        private final int f177b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0051a.C0061j.RecycleListView);
            this.f177b = obtainStyledAttributes.getDimensionPixelOffset(C0051a.C0061j.RecycleListView_paddingBottomNoButtons, -1);
            this.f176a = obtainStyledAttributes.getDimensionPixelOffset(C0051a.C0061j.RecycleListView_paddingTopNoTitle, -1);
        }

        /* renamed from: a */
        public void m7953a(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f176a, getPaddingRight(), z2 ? getPaddingBottom() : this.f177b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public static class C0069a {

        /* renamed from: A */
        public int f178A;

        /* renamed from: B */
        public int f179B;

        /* renamed from: C */
        public int f180C;

        /* renamed from: D */
        public int f181D;

        /* renamed from: F */
        public boolean[] f183F;

        /* renamed from: G */
        public boolean f184G;

        /* renamed from: H */
        public boolean f185H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f187J;

        /* renamed from: K */
        public Cursor f188K;

        /* renamed from: L */
        public String f189L;

        /* renamed from: M */
        public String f190M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f191N;

        /* renamed from: O */
        public AbstractC0074a f192O;

        /* renamed from: a */
        public final Context f194a;

        /* renamed from: b */
        public final LayoutInflater f195b;

        /* renamed from: d */
        public Drawable f197d;

        /* renamed from: f */
        public CharSequence f199f;

        /* renamed from: g */
        public View f200g;

        /* renamed from: h */
        public CharSequence f201h;

        /* renamed from: i */
        public CharSequence f202i;

        /* renamed from: j */
        public Drawable f203j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f204k;

        /* renamed from: l */
        public CharSequence f205l;

        /* renamed from: m */
        public Drawable f206m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f207n;

        /* renamed from: o */
        public CharSequence f208o;

        /* renamed from: p */
        public Drawable f209p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f210q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f212s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f213t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f214u;

        /* renamed from: v */
        public CharSequence[] f215v;

        /* renamed from: w */
        public ListAdapter f216w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f217x;

        /* renamed from: y */
        public int f218y;

        /* renamed from: z */
        public View f219z;

        /* renamed from: c */
        public int f196c = 0;

        /* renamed from: e */
        public int f198e = 0;

        /* renamed from: E */
        public boolean f182E = false;

        /* renamed from: I */
        public int f186I = -1;

        /* renamed from: P */
        public boolean f193P = true;

        /* renamed from: r */
        public boolean f211r = true;

        /* renamed from: androidx.appcompat.app.AlertController$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a$a.class */
        public interface AbstractC0074a {
            /* renamed from: a */
            void m7950a(ListView listView);
        }

        public C0069a(Context context) {
            this.f194a = context;
            this.f195b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        /* renamed from: b */
        private void m7951b(final AlertController alertController) {
            ArrayAdapter<CharSequence> arrayAdapter;
            final RecycleListView recycleListView = (RecycleListView) this.f195b.inflate(alertController.f148l, (ViewGroup) null);
            if (this.f184G) {
                Cursor cursor = this.f188K;
                arrayAdapter = cursor == null ? new ArrayAdapter<CharSequence>(this.f194a, alertController.f149m, 16908308, this.f215v) { // from class: androidx.appcompat.app.AlertController.a.1
                    @Override // android.widget.ArrayAdapter, android.widget.Adapter
                    public View getView(int i, View view, ViewGroup viewGroup) {
                        View view2 = super.getView(i, view, viewGroup);
                        if (C0069a.this.f183F != null && C0069a.this.f183F[i]) {
                            recycleListView.setItemChecked(i, true);
                        }
                        return view2;
                    }
                } : new CursorAdapter(this.f194a, cursor, false) { // from class: androidx.appcompat.app.AlertController.a.2

                    /* renamed from: d */
                    private final int f225d;

                    /* renamed from: e */
                    private final int f226e;

                    {
                        C0069a.this = this;
                        Cursor cursor2 = getCursor();
                        this.f225d = cursor2.getColumnIndexOrThrow(C0069a.this.f189L);
                        this.f226e = cursor2.getColumnIndexOrThrow(C0069a.this.f190M);
                    }

                    @Override // android.widget.CursorAdapter
                    public void bindView(View view, Context context, Cursor cursor2) {
                        ((CheckedTextView) view.findViewById(16908308)).setText(cursor2.getString(this.f225d));
                        RecycleListView recycleListView2 = recycleListView;
                        int position = cursor2.getPosition();
                        boolean z = true;
                        if (cursor2.getInt(this.f226e) != 1) {
                            z = false;
                        }
                        recycleListView2.setItemChecked(position, z);
                    }

                    @Override // android.widget.CursorAdapter
                    public View newView(Context context, Cursor cursor2, ViewGroup viewGroup) {
                        return C0069a.this.f195b.inflate(alertController.f149m, viewGroup, false);
                    }
                };
            } else {
                int i = this.f185H ? alertController.f150n : alertController.f151o;
                Cursor cursor2 = this.f188K;
                if (cursor2 != null) {
                    arrayAdapter = new SimpleCursorAdapter(this.f194a, i, cursor2, new String[]{this.f189L}, new int[]{16908308});
                } else {
                    arrayAdapter = this.f216w;
                    if (arrayAdapter == null) {
                        arrayAdapter = new C0076c(this.f194a, i, 16908308, this.f215v);
                    }
                }
            }
            AbstractC0074a abstractC0074a = this.f192O;
            if (abstractC0074a != null) {
                abstractC0074a.m7950a(recycleListView);
            }
            alertController.f146j = arrayAdapter;
            alertController.f147k = this.f186I;
            if (this.f217x != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.3
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        C0069a.this.f217x.onClick(alertController.f137a, i2);
                        if (!C0069a.this.f185H) {
                            alertController.f137a.dismiss();
                        }
                    }
                });
            } else if (this.f187J != null) {
                recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.4
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                        if (C0069a.this.f183F != null) {
                            C0069a.this.f183F[i2] = recycleListView.isItemChecked(i2);
                        }
                        C0069a.this.f187J.onClick(alertController.f137a, i2, recycleListView.isItemChecked(i2));
                    }
                });
            }
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f191N;
            if (onItemSelectedListener != null) {
                recycleListView.setOnItemSelectedListener(onItemSelectedListener);
            }
            if (this.f185H) {
                recycleListView.setChoiceMode(1);
            } else if (this.f184G) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f138b = recycleListView;
        }

        /* renamed from: a */
        public void m7952a(AlertController alertController) {
            View view = this.f200g;
            if (view != null) {
                alertController.m7962b(view);
            } else {
                CharSequence charSequence = this.f199f;
                if (charSequence != null) {
                    alertController.m7966a(charSequence);
                }
                Drawable drawable = this.f197d;
                if (drawable != null) {
                    alertController.m7974a(drawable);
                }
                int i = this.f196c;
                if (i != 0) {
                    alertController.m7964b(i);
                }
                int i2 = this.f198e;
                if (i2 != 0) {
                    alertController.m7964b(alertController.m7958c(i2));
                }
            }
            CharSequence charSequence2 = this.f201h;
            if (charSequence2 != null) {
                alertController.m7960b(charSequence2);
            }
            if (this.f202i != null || this.f203j != null) {
                alertController.m7976a(-1, this.f202i, this.f204k, (Message) null, this.f203j);
            }
            if (this.f205l != null || this.f206m != null) {
                alertController.m7976a(-2, this.f205l, this.f207n, (Message) null, this.f206m);
            }
            if (this.f208o != null || this.f209p != null) {
                alertController.m7976a(-3, this.f208o, this.f210q, (Message) null, this.f209p);
            }
            if (this.f215v != null || this.f188K != null || this.f216w != null) {
                m7951b(alertController);
            }
            View view2 = this.f219z;
            if (view2 != null) {
                if (this.f182E) {
                    alertController.m7972a(view2, this.f178A, this.f179B, this.f180C, this.f181D);
                    return;
                } else {
                    alertController.m7957c(view2);
                    return;
                }
            }
            int i3 = this.f218y;
            if (i3 == 0) {
                return;
            }
            alertController.m7978a(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public static final class HandlerC0075b extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f232a;

        public HandlerC0075b(DialogInterface dialogInterface) {
            this.f232a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f232a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public static class C0076c extends ArrayAdapter<CharSequence> {
        public C0076c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, DialogC0116i dialogC0116i, Window window) {
        this.f153q = context;
        this.f137a = dialogC0116i;
        this.f154r = window;
        this.f152p = new HandlerC0075b(dialogC0116i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0051a.C0061j.AlertDialog, C0051a.C0052a.alertDialogStyle, 0);
        this.f132O = obtainStyledAttributes.getResourceId(C0051a.C0061j.AlertDialog_android_layout, 0);
        this.f133P = obtainStyledAttributes.getResourceId(C0051a.C0061j.AlertDialog_buttonPanelSideLayout, 0);
        this.f148l = obtainStyledAttributes.getResourceId(C0051a.C0061j.AlertDialog_listLayout, 0);
        this.f149m = obtainStyledAttributes.getResourceId(C0051a.C0061j.AlertDialog_multiChoiceItemLayout, 0);
        this.f150n = obtainStyledAttributes.getResourceId(C0051a.C0061j.AlertDialog_singleChoiceItemLayout, 0);
        this.f151o = obtainStyledAttributes.getResourceId(C0051a.C0061j.AlertDialog_listItemLayout, 0);
        this.f134Q = obtainStyledAttributes.getBoolean(C0051a.C0061j.AlertDialog_showTitle, true);
        this.f155s = obtainStyledAttributes.getDimensionPixelSize(C0051a.C0061j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dialogC0116i.supportRequestWindowFeature(1);
    }

    /* renamed from: a */
    private ViewGroup m7971a(View view, View view2) {
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
    static void m7970a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: a */
    private void m7969a(ViewGroup viewGroup) {
        View view = this.f158v;
        boolean z = false;
        if (view == null) {
            view = this.f159w != 0 ? LayoutInflater.from(this.f153q).inflate(this.f159w, viewGroup, false) : null;
        }
        if (view != null) {
            z = true;
        }
        if (!z || !m7973a(view)) {
            this.f154r.setFlags(131072, 131072);
        }
        if (!z) {
            viewGroup.setVisibility(8);
            return;
        }
        FrameLayout frameLayout = (FrameLayout) this.f154r.findViewById(C0051a.C0057f.custom);
        frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
        if (this.f119B) {
            frameLayout.setPadding(this.f160x, this.f161y, this.f162z, this.f118A);
        }
        if (this.f138b == null) {
            return;
        }
        ((C0277ae.C0278a) viewGroup.getLayoutParams()).f1152g = FlexItem.FLEX_GROW_DEFAULT;
    }

    /* renamed from: a */
    private void m7968a(ViewGroup viewGroup, View view, int i, int i2) {
        View findViewById = this.f154r.findViewById(C0051a.C0057f.scrollIndicatorUp);
        View findViewById2 = this.f154r.findViewById(C0051a.C0057f.scrollIndicatorDown);
        if (Build.VERSION.SDK_INT >= 23) {
            C0552u.m6278a(view, i, i2);
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
        if (findViewById2 != null && (i & 2) == 0) {
            viewGroup.removeView(findViewById2);
            findViewById2 = null;
        }
        if (view2 == null && findViewById2 == null) {
            return;
        }
        if (this.f157u != null) {
            final View view3 = view2;
            final View view4 = findViewById2;
            this.f145i.setOnScrollChangeListener(new NestedScrollView.AbstractC0594b() { // from class: androidx.appcompat.app.AlertController.2
                @Override // androidx.core.widget.NestedScrollView.AbstractC0594b
                /* renamed from: a */
                public void mo6029a(NestedScrollView nestedScrollView, int i3, int i4, int i5, int i6) {
                    AlertController.m7970a(nestedScrollView, view3, view4);
                }
            });
            final View view5 = view2;
            final View view6 = findViewById2;
            this.f145i.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                @Override // java.lang.Runnable
                public void run() {
                    AlertController.m7970a(AlertController.this.f145i, view5, view6);
                }
            });
            return;
        }
        ListView listView = this.f138b;
        if (listView == null) {
            if (view2 != null) {
                viewGroup.removeView(view2);
            }
            if (findViewById2 == null) {
                return;
            }
            viewGroup.removeView(findViewById2);
            return;
        }
        final View view7 = view2;
        final View view8 = findViewById2;
        listView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.appcompat.app.AlertController.4
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                AlertController.m7970a(absListView, view7, view8);
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i3) {
            }
        });
        final View view9 = view2;
        final View view10 = findViewById2;
        this.f138b.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
            @Override // java.lang.Runnable
            public void run() {
                AlertController.m7970a(AlertController.this.f138b, view9, view10);
            }
        });
    }

    /* renamed from: a */
    private void m7967a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    private static boolean m7975a(Context context) {
        TypedValue typedValue = new TypedValue();
        boolean z = true;
        context.getTheme().resolveAttribute(C0051a.C0052a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    static boolean m7973a(View view) {
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
            if (m7973a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private void m7961b(ViewGroup viewGroup) {
        if (this.f131N != null) {
            viewGroup.addView(this.f131N, 0, new ViewGroup.LayoutParams(-1, -2));
            this.f154r.findViewById(C0051a.C0057f.title_template).setVisibility(8);
            return;
        }
        this.f128K = (ImageView) this.f154r.findViewById(16908294);
        if (!(!TextUtils.isEmpty(this.f156t)) || !this.f134Q) {
            this.f154r.findViewById(C0051a.C0057f.title_template).setVisibility(8);
            this.f128K.setVisibility(8);
            viewGroup.setVisibility(8);
            return;
        }
        this.f129L = (TextView) this.f154r.findViewById(C0051a.C0057f.alertTitle);
        this.f129L.setText(this.f156t);
        int i = this.f126I;
        if (i != 0) {
            this.f128K.setImageResource(i);
            return;
        }
        Drawable drawable = this.f127J;
        if (drawable != null) {
            this.f128K.setImageDrawable(drawable);
            return;
        }
        this.f129L.setPadding(this.f128K.getPaddingLeft(), this.f128K.getPaddingTop(), this.f128K.getPaddingRight(), this.f128K.getPaddingBottom());
        this.f128K.setVisibility(8);
    }

    /* renamed from: c */
    private int m7959c() {
        int i = this.f133P;
        if (i != 0 && this.f135R == 1) {
            return i;
        }
        return this.f132O;
    }

    /* renamed from: c */
    private void m7956c(ViewGroup viewGroup) {
        this.f145i = (NestedScrollView) this.f154r.findViewById(C0051a.C0057f.scrollView);
        this.f145i.setFocusable(false);
        this.f145i.setNestedScrollingEnabled(false);
        this.f130M = (TextView) viewGroup.findViewById(16908299);
        TextView textView = this.f130M;
        if (textView == null) {
            return;
        }
        CharSequence charSequence = this.f157u;
        if (charSequence != null) {
            textView.setText(charSequence);
            return;
        }
        textView.setVisibility(8);
        this.f145i.removeView(this.f130M);
        if (this.f138b == null) {
            viewGroup.setVisibility(8);
            return;
        }
        ViewGroup viewGroup2 = (ViewGroup) this.f145i.getParent();
        int indexOfChild = viewGroup2.indexOfChild(this.f145i);
        viewGroup2.removeViewAt(indexOfChild);
        viewGroup2.addView(this.f138b, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: d */
    private void m7955d() {
        ListAdapter listAdapter;
        View findViewById;
        View findViewById2;
        View findViewById3 = this.f154r.findViewById(C0051a.C0057f.parentPanel);
        View findViewById4 = findViewById3.findViewById(C0051a.C0057f.topPanel);
        View findViewById5 = findViewById3.findViewById(C0051a.C0057f.contentPanel);
        View findViewById6 = findViewById3.findViewById(C0051a.C0057f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C0051a.C0057f.customPanel);
        m7969a(viewGroup);
        View findViewById7 = viewGroup.findViewById(C0051a.C0057f.topPanel);
        View findViewById8 = viewGroup.findViewById(C0051a.C0057f.contentPanel);
        View findViewById9 = viewGroup.findViewById(C0051a.C0057f.buttonPanel);
        ViewGroup m7971a = m7971a(findViewById7, findViewById4);
        ViewGroup m7971a2 = m7971a(findViewById8, findViewById5);
        ViewGroup m7971a3 = m7971a(findViewById9, findViewById6);
        m7956c(m7971a2);
        m7954d(m7971a3);
        m7961b(m7971a);
        boolean z = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z2 = (m7971a == null || m7971a.getVisibility() == 8) ? false : true;
        boolean z3 = (m7971a3 == null || m7971a3.getVisibility() == 8) ? false : true;
        if (!z3 && m7971a2 != null && (findViewById2 = m7971a2.findViewById(C0051a.C0057f.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z2) {
            NestedScrollView nestedScrollView = this.f145i;
            if (nestedScrollView != null) {
                nestedScrollView.setClipToPadding(true);
            }
            View view = null;
            if (this.f157u != null || this.f138b != null) {
                view = m7971a.findViewById(C0051a.C0057f.titleDividerNoCustom);
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else if (m7971a2 != null && (findViewById = m7971a2.findViewById(C0051a.C0057f.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        ListView listView = this.f138b;
        if (listView instanceof RecycleListView) {
            ((RecycleListView) listView).m7953a(z2, z3);
        }
        if (!z) {
            ListView listView2 = this.f138b;
            NestedScrollView nestedScrollView2 = listView2;
            if (listView2 == null) {
                nestedScrollView2 = this.f145i;
            }
            if (nestedScrollView2 != null) {
                int i = 0;
                if (z3) {
                    i = 2;
                }
                m7968a(m7971a2, nestedScrollView2, z2 | i, 3);
            }
        }
        ListView listView3 = this.f138b;
        if (listView3 == null || (listAdapter = this.f146j) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i2 = this.f147k;
        if (i2 <= -1) {
            return;
        }
        listView3.setItemChecked(i2, true);
        listView3.setSelection(i2);
    }

    /* renamed from: d */
    private void m7954d(ViewGroup viewGroup) {
        boolean z;
        this.f139c = (Button) viewGroup.findViewById(16908313);
        this.f139c.setOnClickListener(this.f136S);
        if (!TextUtils.isEmpty(this.f120C) || this.f121D != null) {
            this.f139c.setText(this.f120C);
            Drawable drawable = this.f121D;
            if (drawable != null) {
                int i = this.f155s;
                drawable.setBounds(0, 0, i, i);
                this.f139c.setCompoundDrawables(this.f121D, null, null, null);
            }
            this.f139c.setVisibility(0);
            z = true;
        } else {
            this.f139c.setVisibility(8);
            z = false;
        }
        this.f141e = (Button) viewGroup.findViewById(16908314);
        this.f141e.setOnClickListener(this.f136S);
        if (!TextUtils.isEmpty(this.f122E) || this.f123F != null) {
            this.f141e.setText(this.f122E);
            Drawable drawable2 = this.f123F;
            if (drawable2 != null) {
                int i2 = this.f155s;
                drawable2.setBounds(0, 0, i2, i2);
                this.f141e.setCompoundDrawables(this.f123F, null, null, null);
            }
            this.f141e.setVisibility(0);
            z |= true;
        } else {
            this.f141e.setVisibility(8);
        }
        this.f143g = (Button) viewGroup.findViewById(16908315);
        this.f143g.setOnClickListener(this.f136S);
        if (!TextUtils.isEmpty(this.f124G) || this.f125H != null) {
            this.f143g.setText(this.f124G);
            Drawable drawable3 = this.f121D;
            if (drawable3 != null) {
                int i3 = this.f155s;
                drawable3.setBounds(0, 0, i3, i3);
                this.f139c.setCompoundDrawables(this.f121D, null, null, null);
            }
            this.f143g.setVisibility(0);
            z |= true;
        } else {
            this.f143g.setVisibility(8);
        }
        if (m7975a(this.f153q)) {
            if (z) {
                m7967a(this.f139c);
            } else if (z) {
                m7967a(this.f141e);
            } else if (z) {
                m7967a(this.f143g);
            }
        }
        if (!(z)) {
            viewGroup.setVisibility(8);
        }
    }

    /* renamed from: a */
    public void m7979a() {
        this.f137a.setContentView(m7959c());
        m7955d();
    }

    /* renamed from: a */
    public void m7978a(int i) {
        this.f158v = null;
        this.f159w = i;
        this.f119B = false;
    }

    /* renamed from: a */
    public void m7976a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message message2 = message;
        if (message == null) {
            message2 = message;
            if (onClickListener != null) {
                message2 = this.f152p.obtainMessage(i, onClickListener);
            }
        }
        if (i == -3) {
            this.f124G = charSequence;
            this.f144h = message2;
            this.f125H = drawable;
        } else if (i == -2) {
            this.f122E = charSequence;
            this.f142f = message2;
            this.f123F = drawable;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f120C = charSequence;
            this.f140d = message2;
            this.f121D = drawable;
        }
    }

    /* renamed from: a */
    public void m7974a(Drawable drawable) {
        this.f127J = drawable;
        this.f126I = 0;
        ImageView imageView = this.f128K;
        if (imageView != null) {
            if (drawable == null) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f128K.setImageDrawable(drawable);
        }
    }

    /* renamed from: a */
    public void m7972a(View view, int i, int i2, int i3, int i4) {
        this.f158v = view;
        this.f159w = 0;
        this.f119B = true;
        this.f160x = i;
        this.f161y = i2;
        this.f162z = i3;
        this.f118A = i4;
    }

    /* renamed from: a */
    public void m7966a(CharSequence charSequence) {
        this.f156t = charSequence;
        TextView textView = this.f129L;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: a */
    public boolean m7977a(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f145i;
        return nestedScrollView != null && nestedScrollView.m6056a(keyEvent);
    }

    /* renamed from: b */
    public ListView m7965b() {
        return this.f138b;
    }

    /* renamed from: b */
    public void m7964b(int i) {
        this.f127J = null;
        this.f126I = i;
        ImageView imageView = this.f128K;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f128K.setImageResource(this.f126I);
        }
    }

    /* renamed from: b */
    public void m7962b(View view) {
        this.f131N = view;
    }

    /* renamed from: b */
    public void m7960b(CharSequence charSequence) {
        this.f157u = charSequence;
        TextView textView = this.f130M;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* renamed from: b */
    public boolean m7963b(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f145i;
        return nestedScrollView != null && nestedScrollView.m6056a(keyEvent);
    }

    /* renamed from: c */
    public int m7958c(int i) {
        TypedValue typedValue = new TypedValue();
        this.f153q.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: c */
    public void m7957c(View view) {
        this.f158v = view;
        this.f159w = 0;
        this.f119B = false;
    }
}
