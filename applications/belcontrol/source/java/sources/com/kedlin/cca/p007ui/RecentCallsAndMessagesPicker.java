package com.kedlin.cca.p007ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.kedlin.cca.p007ui.RecentCallsAndMessagesPicker;
import java.util.EnumSet;
import java.util.Iterator;
/* renamed from: com.kedlin.cca.ui.RecentCallsAndMessagesPicker */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RecentCallsAndMessagesPicker.class */
public class RecentCallsAndMessagesPicker extends View implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    public EnumSet<EnumC0699e> f4058a;

    /* renamed from: b */
    public AbstractC0698d f4059b;

    /* renamed from: c */
    public String f4060c = null;

    /* renamed from: d */
    public SparseArray<l81> f4061d = new SparseArray<>();

    /* renamed from: com.kedlin.cca.ui.RecentCallsAndMessagesPicker$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RecentCallsAndMessagesPicker$a.class */
    public class RunnableC0695a implements Runnable {
        public RunnableC0695a() {
            RecentCallsAndMessagesPicker.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RecentCallsAndMessagesPicker.this.showContextMenu();
        }
    }

    /* renamed from: com.kedlin.cca.ui.RecentCallsAndMessagesPicker$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RecentCallsAndMessagesPicker$b.class */
    public class View$OnCreateContextMenuListenerC0696b implements View.OnCreateContextMenuListener {
        public View$OnCreateContextMenuListenerC0696b() {
            RecentCallsAndMessagesPicker.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ boolean m4119b(MenuItem menuItem) {
            if (RecentCallsAndMessagesPicker.this.f4059b != null) {
                RecentCallsAndMessagesPicker.this.f4059b.m4116a(null, null, false);
                return true;
            }
            return true;
        }

        /* renamed from: c */
        public /* synthetic */ boolean m4117d(MenuItem menuItem) {
            if (RecentCallsAndMessagesPicker.this.f4059b != null) {
                RecentCallsAndMessagesPicker.this.f4059b.m4116a(null, null, true);
                return true;
            }
            return true;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            MenuItem add;
            MenuItem.OnMenuItemClickListener onMenuItemClickListener;
            RecentCallsAndMessagesPicker recentCallsAndMessagesPicker;
            SubMenu addSubMenu;
            Context context = RecentCallsAndMessagesPicker.this.getContext();
            RecentCallsAndMessagesPicker.this.f4061d.clear();
            if (RecentCallsAndMessagesPicker.this.f4060c != null) {
                contextMenu.setHeaderTitle(RecentCallsAndMessagesPicker.this.f4060c);
            }
            if (context == null) {
                return;
            }
            Iterator it = RecentCallsAndMessagesPicker.this.f4058a.iterator();
            while (it.hasNext()) {
                EnumC0699e enumC0699e = (EnumC0699e) it.next();
                int i = C0697c.f4064a[enumC0699e.ordinal()];
                boolean z = true;
                if (i == 1) {
                    add = contextMenu.add(context.getString(enumC0699e.f4070a));
                    onMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: pb1
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            return RecentCallsAndMessagesPicker.View$OnCreateContextMenuListenerC0696b.this.m4119b(menuItem);
                        }
                    };
                } else if (i != 2) {
                    if (i == 3) {
                        recentCallsAndMessagesPicker = RecentCallsAndMessagesPicker.this;
                        addSubMenu = contextMenu.addSubMenu(context.getString(enumC0699e.f4070a));
                        z = false;
                    } else if (i == 4) {
                        recentCallsAndMessagesPicker = RecentCallsAndMessagesPicker.this;
                        addSubMenu = contextMenu.addSubMenu(context.getString(enumC0699e.f4070a));
                    }
                    recentCallsAndMessagesPicker.m4123f(addSubMenu, z);
                } else {
                    add = contextMenu.add(context.getString(enumC0699e.f4070a));
                    onMenuItemClickListener = new MenuItem.OnMenuItemClickListener() { // from class: ob1
                        @Override // android.view.MenuItem.OnMenuItemClickListener
                        public final boolean onMenuItemClick(MenuItem menuItem) {
                            return RecentCallsAndMessagesPicker.View$OnCreateContextMenuListenerC0696b.this.m4117d(menuItem);
                        }
                    };
                }
                add.setOnMenuItemClickListener(onMenuItemClickListener);
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.RecentCallsAndMessagesPicker$c */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RecentCallsAndMessagesPicker$c.class */
    public static /* synthetic */ class C0697c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f4064a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0699e.values().length];
            f4064a = iArr;
            try {
                iArr[EnumC0699e.DIRECT_ENTRY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4064a[EnumC0699e.WILDCARDS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f4064a[EnumC0699e.RECENT_CALLS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f4064a[EnumC0699e.RECENT_MESSAGES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.RecentCallsAndMessagesPicker$d */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RecentCallsAndMessagesPicker$d.class */
    public interface AbstractC0698d {
        /* renamed from: a */
        void m4116a(String str, String str2, boolean z);
    }

    /* renamed from: com.kedlin.cca.ui.RecentCallsAndMessagesPicker$e */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/RecentCallsAndMessagesPicker$e.class */
    public enum EnumC0699e {
        DIRECT_ENTRY(2131821676),
        WILDCARDS(2131821679),
        RECENT_CALLS(2131821677),
        RECENT_MESSAGES(2131821678);
        

        /* renamed from: a */
        public int f4070a;

        EnumC0699e(int i) {
            this.f4070a = i;
        }
    }

    public RecentCallsAndMessagesPicker(Context context) {
        super(context);
        m4122g();
    }

    public RecentCallsAndMessagesPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4122g();
    }

    public RecentCallsAndMessagesPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4122g();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4123f(android.view.SubMenu r7, boolean r8) {
        /*
            r6 = this;
            r0 = r6
            android.util.SparseArray<l81> r0 = r0.f4061d
            int r0 = r0.size()
            r9 = r0
            l81 r0 = new l81
            r1 = r0
            r1.<init>()
            r1 = r8
            android.database.Cursor r0 = r0.m1331f0(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto Lef
            r0 = r7
            if (r0 != 0) goto L21
            goto Lef
        L21:
            r0 = r10
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto Lcc
        L2b:
            l81 r0 = new l81
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            l81 r0 = r0.m1344S(r1)
            r0 = r6
            android.util.SparseArray<l81> r0 = r0.f4061d
            r1 = r9
            r2 = r11
            r0.put(r1, r2)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            r1 = r11
            i91 r1 = r1.f6929m
            java.lang.String r1 = r1.m1601m()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r11
            java.lang.String r0 = r0.f6925h
            r1 = r11
            i91 r1 = r1.f6929m
            java.lang.String r1 = r1.m1601m()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L77
            java.lang.String r0 = ""
            r13 = r0
            goto La2
        L77:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r13 = r0
            r0 = r13
            java.lang.String r1 = " ("
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            r1 = r11
            java.lang.String r1 = r1.f6925h
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r1 = ")"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r13
            java.lang.String r0 = r0.toString()
            r13 = r0
        La2:
            r0 = r12
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 0
            r2 = r9
            r3 = 0
            r4 = r12
            java.lang.String r4 = r4.toString()
            android.view.MenuItem r0 = r0.add(r1, r2, r3, r4)
            r1 = r6
            android.view.MenuItem r0 = r0.setOnMenuItemClickListener(r1)
            int r9 = r9 + 1
            r0 = r10
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L2b
        Lcc:
            r0 = r10
            r0.close()
            r0 = r10
            int r0 = r0.getCount()
            if (r0 != 0) goto Lef
            r0 = r7
            r1 = 0
            r2 = -1
            r3 = 0
            r4 = 2131821803(0x7f1104eb, float:1.927636E38)
            android.view.MenuItem r0 = r0.add(r1, r2, r3, r4)
            r1 = r6
            android.view.MenuItem r0 = r0.setOnMenuItemClickListener(r1)
        Lef:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kedlin.cca.p007ui.RecentCallsAndMessagesPicker.m4123f(android.view.SubMenu, boolean):void");
    }

    /* renamed from: g */
    public final void m4122g() {
        setOnCreateContextMenuListener(new View$OnCreateContextMenuListenerC0696b());
    }

    /* renamed from: h */
    public void m4121h(String str, EnumSet<EnumC0699e> enumSet, AbstractC0698d abstractC0698d) {
        this.f4058a = enumSet;
        this.f4059b = abstractC0698d;
        this.f4060c = str;
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0695a(), 1L);
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        String str;
        if (this.f4059b == null) {
            return true;
        }
        l81 l81Var = this.f4061d.get(menuItem.getItemId());
        String str2 = null;
        if (l81Var != null) {
            str2 = l81Var.f6929m.m1601m();
            String str3 = l81Var.f6925h;
            str = str3;
            if (str2.equals(str3)) {
                str = null;
            }
        } else {
            str = null;
        }
        this.f4059b.m4116a(str2, str, false);
        return true;
    }
}
