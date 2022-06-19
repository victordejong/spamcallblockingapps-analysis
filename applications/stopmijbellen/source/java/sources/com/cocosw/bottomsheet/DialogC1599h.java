package com.cocosw.bottomsheet;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.transition.ChangeBounds;
import android.transition.TransitionManager;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.cocosw.bottomsheet.C1604j;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p134j4.C3260w0;
/* renamed from: com.cocosw.bottomsheet.h */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/h.class */
public class DialogC1599h extends Dialog {

    /* renamed from: b */
    public C1608l f5921b;

    /* renamed from: c */
    public String f5922c;

    /* renamed from: d */
    public Drawable f5923d;

    /* renamed from: e */
    public Drawable f5924e;

    /* renamed from: f */
    public int f5925f;

    /* renamed from: g */
    public int f5926g;

    /* renamed from: h */
    public int f5927h;

    /* renamed from: i */
    public boolean f5928i;

    /* renamed from: j */
    public GridView f5929j;

    /* renamed from: k */
    public C1604j f5930k;

    /* renamed from: l */
    public C1602c f5931l;

    /* renamed from: m */
    public ImageView f5932m;

    /* renamed from: q */
    public MenuC1591a f5936q;

    /* renamed from: r */
    public MenuC1591a f5937r;

    /* renamed from: s */
    public MenuC1591a f5938s;

    /* renamed from: t */
    public DialogInterface.OnDismissListener f5939t;

    /* renamed from: u */
    public DialogInterface.OnShowListener f5940u;

    /* renamed from: a */
    public final SparseIntArray f5920a = new SparseIntArray();

    /* renamed from: n */
    public int f5933n = -1;

    /* renamed from: o */
    public boolean f5934o = true;

    /* renamed from: p */
    public boolean f5935p = true;

    /* renamed from: com.cocosw.bottomsheet.h$a */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/h$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC1600a implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC1600a() {
            DialogC1599h.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            DialogC1599h.this.f5929j.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            GridView gridView = DialogC1599h.this.f5929j;
            View childAt = gridView.getChildAt(gridView.getChildCount() - 1);
            if (childAt != null) {
                GridView gridView2 = DialogC1599h.this.f5929j;
                int bottom = childAt.getBottom();
                gridView2.setLayoutParams(new LinearLayout.LayoutParams(-1, DialogC1599h.this.f5929j.getPaddingBottom() + childAt.getPaddingBottom() + bottom));
            }
        }
    }

    /* renamed from: com.cocosw.bottomsheet.h$b */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/h$b.class */
    public class DialogInterface$OnDismissListenerC1601b implements DialogInterface.OnDismissListener {
        public DialogInterface$OnDismissListenerC1601b() {
            DialogC1599h.this = r4;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            DialogInterface.OnDismissListener onDismissListener = DialogC1599h.this.f5939t;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(dialogInterface);
            }
            DialogC1599h dialogC1599h = DialogC1599h.this;
            if (dialogC1599h.f5933n != Integer.MAX_VALUE) {
                dialogC1599h.m4857c();
            }
        }
    }

    /* renamed from: com.cocosw.bottomsheet.h$c */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/h$c.class */
    public static class C1602c {

        /* renamed from: a */
        public final Context f5943a;

        /* renamed from: b */
        public final MenuC1591a f5944b;

        /* renamed from: c */
        public int f5945c;

        /* renamed from: d */
        public CharSequence f5946d;

        /* renamed from: e */
        public DialogInterface.OnClickListener f5947e;

        /* renamed from: f */
        public Drawable f5948f;

        public C1602c(Activity activity) {
            this.f5943a = activity;
            this.f5945c = 2131886363;
            this.f5944b = new MenuC1591a(activity);
            TypedArray obtainStyledAttributes = activity.getTheme().obtainStyledAttributes(new int[]{2130968698});
            try {
                this.f5945c = obtainStyledAttributes.getResourceId(0, 2131886363);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        /* renamed from: a */
        public C1602c m4855a(int i, Drawable drawable, CharSequence charSequence) {
            MenuItemC1592b menuItemC1592b = new MenuItemC1592b(this.f5943a, 0, i, 0, 0, charSequence);
            menuItemC1592b.f5908i = drawable;
            ArrayList<MenuItemC1592b> arrayList = this.f5944b.f5899c;
            arrayList.add(MenuC1591a.m4865a(arrayList, MenuC1591a.m4862d(0)), menuItemC1592b);
            return this;
        }

        /* renamed from: b */
        public DialogC1599h m4854b() {
            DialogC1599h dialogC1599h = new DialogC1599h(this.f5943a, this.f5945c);
            dialogC1599h.f5931l = this;
            dialogC1599h.show();
            return dialogC1599h;
        }
    }

    /* JADX WARN: Finally extract failed */
    public DialogC1599h(Context context, int i) {
        super(context, i);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C3260w0.f11022c, 2130968698, 0);
        try {
            this.f5924e = obtainStyledAttributes.getDrawable(11);
            this.f5923d = obtainStyledAttributes.getDrawable(1);
            this.f5922c = obtainStyledAttributes.getString(12);
            this.f5928i = obtainStyledAttributes.getBoolean(2, true);
            this.f5925f = obtainStyledAttributes.getResourceId(7, 2131492901);
            this.f5926g = obtainStyledAttributes.getResourceId(8, 2131492903);
            this.f5927h = obtainStyledAttributes.getResourceId(5, 2131492900);
            obtainStyledAttributes.recycle();
            this.f5921b = new C1608l(this, context);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m4859a(DialogC1599h dialogC1599h) {
        Objects.requireNonNull(dialogC1599h);
        ChangeBounds changeBounds = new ChangeBounds();
        changeBounds.setDuration(300L);
        TransitionManager.beginDelayedTransition(dialogC1599h.f5929j, changeBounds);
        dialogC1599h.f5938s = dialogC1599h.f5936q;
        dialogC1599h.m4856d();
        dialogC1599h.f5930k.notifyDataSetChanged();
        dialogC1599h.f5929j.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        dialogC1599h.f5932m.setVisibility(0);
        dialogC1599h.f5932m.setImageDrawable(dialogC1599h.f5923d);
        dialogC1599h.f5932m.setOnClickListener(new View$OnClickListenerC1598g(dialogC1599h));
        dialogC1599h.m4858b();
    }

    /* renamed from: b */
    public final void m4858b() {
        if (!(this.f5930k.f5954e.size() > 0)) {
            return;
        }
        this.f5929j.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC1600a());
    }

    /* renamed from: c */
    public final void m4857c() {
        this.f5938s = this.f5937r;
        m4856d();
        this.f5930k.notifyDataSetChanged();
        m4858b();
        if (this.f5931l.f5948f == null) {
            this.f5932m.setVisibility(8);
            return;
        }
        this.f5932m.setVisibility(0);
        this.f5932m.setImageDrawable(this.f5931l.f5948f);
    }

    /* renamed from: d */
    public final void m4856d() {
        Iterator<MenuItemC1592b> it2 = this.f5938s.f5899c.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isVisible()) {
                it2.remove();
            }
        }
        Objects.requireNonNull(this.f5931l);
        if (this.f5938s.size() > 0) {
            int groupId = this.f5938s.getItem(0).getGroupId();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i < this.f5938s.size()) {
                int i2 = groupId;
                if (this.f5938s.getItem(i).getGroupId() != groupId) {
                    i2 = this.f5938s.getItem(i).getGroupId();
                    arrayList.add(new C1604j.C1606b(i, null));
                }
                i++;
                groupId = i2;
            }
            if (arrayList.size() <= 0) {
                this.f5930k.f5954e.clear();
                return;
            }
            C1604j.C1606b[] c1606bArr = new C1604j.C1606b[arrayList.size()];
            arrayList.toArray(c1606bArr);
            C1604j c1604j = this.f5930k;
            c1604j.f5955f = c1606bArr;
            c1604j.f5954e.clear();
            c1604j.m4853a();
            Arrays.sort(c1604j.f5955f, new C1607k(c1604j));
            int i3 = 0;
            int i4 = 0;
            while (true) {
                C1604j.C1606b[] c1606bArr2 = c1604j.f5955f;
                if (i3 >= c1606bArr2.length) {
                    c1604j.notifyDataSetChanged();
                    return;
                }
                C1604j.C1606b c1606b = c1606bArr2[i3];
                for (int i5 = 0; i5 < c1604j.f5959j - 1; i5++) {
                    int i6 = c1606b.f5970a;
                    C1604j.C1606b c1606b2 = new C1604j.C1606b(i6, c1606b.f5972c);
                    c1606b2.f5973d = 2;
                    int i7 = i6 + i4;
                    c1606b2.f5971b = i7;
                    c1604j.f5954e.append(i7, c1606b2);
                    i4++;
                }
                int i8 = c1606b.f5970a;
                C1604j.C1606b c1606b3 = new C1604j.C1606b(i8, c1606b.f5972c);
                c1606b3.f5973d = 1;
                int i9 = i8 + i4;
                c1606b3.f5971b = i9;
                c1604j.f5954e.append(i9, c1606b3);
                int i10 = i4 + 1;
                C1604j.C1606b[] c1606bArr3 = c1604j.f5955f;
                i4 = i10;
                if (i3 < c1606bArr3.length - 1) {
                    int i11 = c1606bArr3[i3 + 1].f5970a;
                    int i12 = c1606b.f5970a;
                    int i13 = c1604j.f5959j;
                    int i14 = i13 - ((i11 - i12) % i13);
                    i4 = i10;
                    if (i13 != i14) {
                        int i15 = 0;
                        while (true) {
                            i4 = i10;
                            if (i15 < i14) {
                                C1604j.C1606b c1606b4 = new C1604j.C1606b(c1606b.f5970a, c1606b.f5972c);
                                c1606b4.f5973d = 0;
                                int i16 = i11 + i10;
                                c1606b4.f5971b = i16;
                                c1604j.f5954e.append(i16, c1606b4);
                                i10++;
                                i15++;
                            }
                        }
                    }
                }
                i3++;
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        int i;
        boolean z;
        int i2;
        String str;
        super.onCreate(bundle);
        Context context = getContext();
        boolean z2 = this.f5934o;
        super.setCanceledOnTouchOutside(z2);
        this.f5934o = z2;
        ClosableSlidingLayout closableSlidingLayout = (ClosableSlidingLayout) View.inflate(context, 2131492897, null);
        ((LinearLayout) closableSlidingLayout.findViewById(2131296391)).addView(View.inflate(context, this.f5925f, null), 0);
        setContentView(closableSlidingLayout);
        boolean z3 = this.f5935p;
        if (!z3) {
            closableSlidingLayout.f5881c = z3;
        }
        closableSlidingLayout.f5883e = new C1593c(this);
        super.setOnShowListener(new DialogInterface$OnShowListenerC1594d(this));
        int[] iArr = new int[2];
        closableSlidingLayout.getLocationOnScreen(iArr);
        closableSlidingLayout.setPadding(0, iArr[0] == 0 ? this.f5921b.f5976c : 0, 0, 0);
        View childAt = closableSlidingLayout.getChildAt(0);
        C1608l c1608l = this.f5921b;
        if (c1608l.f5975b) {
            Context context2 = getContext();
            Resources resources = context2.getResources();
            Resources resources2 = context2.getResources();
            int identifier = resources2.getIdentifier("config_showNavigationBar", "bool", "android");
            if (identifier != 0) {
                z = resources2.getBoolean(identifier);
                if ("1".equals(c1608l.f5978e)) {
                    z = false;
                } else if ("0".equals(c1608l.f5978e)) {
                    z = true;
                }
            } else {
                z = !ViewConfiguration.get(context2).hasPermanentMenuKey();
            }
            if (z) {
                boolean z4 = c1608l.f5977d;
                if (z4) {
                    str = "navigation_bar_height";
                } else {
                    if (c1608l.f5979f >= 600.0f || z4) {
                        str = "navigation_bar_height_landscape";
                    }
                }
                int identifier2 = resources.getIdentifier(str, "dimen", "android");
                if (identifier2 > 0) {
                    i2 = resources.getDimensionPixelSize(identifier2);
                    i = closableSlidingLayout.getPaddingBottom() + i2;
                }
            }
            i2 = 0;
            i = closableSlidingLayout.getPaddingBottom() + i2;
        } else {
            i = 0;
        }
        childAt.setPadding(0, 0, 0, i);
        TextView textView = (TextView) closableSlidingLayout.findViewById(2131296375);
        if (this.f5931l.f5946d != null) {
            textView.setVisibility(0);
            textView.setText(this.f5931l.f5946d);
        }
        this.f5932m = (ImageView) closableSlidingLayout.findViewById(2131296376);
        GridView gridView = (GridView) closableSlidingLayout.findViewById(2131296374);
        this.f5929j = gridView;
        closableSlidingLayout.f5880b = gridView;
        Objects.requireNonNull(this.f5931l);
        this.f5929j.setNumColumns(1);
        Objects.requireNonNull(this.f5931l);
        Objects.requireNonNull(this.f5931l);
        this.f5933n = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        closableSlidingLayout.f5889k = false;
        MenuC1591a menuC1591a = this.f5931l.f5944b;
        this.f5938s = menuC1591a;
        this.f5937r = menuC1591a;
        int size = menuC1591a.size();
        int i3 = this.f5933n;
        if (size > i3) {
            MenuC1591a menuC1591a2 = this.f5931l.f5944b;
            this.f5936q = menuC1591a2;
            MenuC1591a menuC1591a3 = new MenuC1591a(menuC1591a2.f5897a);
            ArrayList<MenuItemC1592b> arrayList = new ArrayList<>(menuC1591a2.f5899c.subList(0, i3 - 1));
            menuC1591a3.f5899c = arrayList;
            this.f5937r = menuC1591a3;
            int i4 = this.f5933n - 1;
            MenuItemC1592b menuItemC1592b = new MenuItemC1592b(context, 0, 2131296392, 0, i4, this.f5922c);
            menuItemC1592b.f5908i = this.f5924e;
            arrayList.add(MenuC1591a.m4865a(arrayList, MenuC1591a.m4862d(i4)), menuItemC1592b);
            this.f5938s = this.f5937r;
            closableSlidingLayout.f5889k = true;
        }
        C1604j c1604j = new C1604j(context, new C1595e(this), 2131492902, 2131296652, 2131296649);
        this.f5930k = c1604j;
        this.f5929j.setAdapter((ListAdapter) c1604j);
        C1604j c1604j2 = this.f5930k;
        GridView gridView2 = this.f5929j;
        Objects.requireNonNull(c1604j2);
        if (gridView2 instanceof PinnedSectionGridView) {
            c1604j2.f5966q = gridView2;
            c1604j2.f5963n = gridView2.getStretchMode();
            c1604j2.f5960k = gridView2.getWidth() - (c1604j2.f5966q.getPaddingRight() + c1604j2.f5966q.getPaddingLeft());
            PinnedSectionGridView pinnedSectionGridView = (PinnedSectionGridView) gridView2;
            c1604j2.f5959j = pinnedSectionGridView.getNumColumns();
            c1604j2.f5964o = pinnedSectionGridView.getColumnWidth();
            c1604j2.f5965p = pinnedSectionGridView.getHorizontalSpacing();
            this.f5929j.setOnItemClickListener(new C1597f(this, closableSlidingLayout));
            Objects.requireNonNull(this.f5931l);
            m4858b();
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.height = -2;
            attributes.gravity = 80;
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{16842996});
            try {
                attributes.width = obtainStyledAttributes.getLayoutDimension(0, -1);
                obtainStyledAttributes.recycle();
                super.setOnDismissListener(new DialogInterface$OnDismissListenerC1601b());
                getWindow().setAttributes(attributes);
                return;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        }
        throw new IllegalArgumentException("Does your grid view extends PinnedSectionGridView?");
    }

    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        m4857c();
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        this.f5934o = z;
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        this.f5939t = onDismissListener;
    }

    @Override // android.app.Dialog
    public void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        this.f5940u = onShowListener;
    }
}
