package p459j.p460a.p613z0.p617p;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.gogolook.developmode.p050ui.FreeLayout;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.app.WhoscallActivity;
import gogolook.callgogolook2.app.WhoscallFragmentActivity;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14217x3;
/* renamed from: j.a.z0.p.d */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/d.class */
public class DialogC14676d extends Dialog {

    /* renamed from: a */
    public Activity f32777a;

    /* renamed from: b */
    public FreeLayout f32778b;

    /* renamed from: c */
    public LinearLayout f32779c;

    /* renamed from: j.a.z0.p.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/d$a.class */
    public class View$OnClickListenerC14677a implements View.OnClickListener {
        public View$OnClickListenerC14677a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14676d.this.dismiss();
        }
    }

    /* renamed from: j.a.z0.p.d$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/d$b.class */
    public class View$OnClickListenerC14678b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ MenuItem f32781a;

        /* renamed from: j.a.z0.p.d$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/z0/p/d$b$a.class */
        public class RunnableC14679a implements Runnable {
            public RunnableC14679a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (DialogC14676d.this.f32777a instanceof WhoscallActivity) {
                    ((WhoscallActivity) DialogC14676d.this.f32777a).onOptionsItemSelected(View$OnClickListenerC14678b.this.f32781a);
                } else if (DialogC14676d.this.f32777a instanceof WhoscallFragmentActivity) {
                    ((WhoscallFragmentActivity) DialogC14676d.this.f32777a).onOptionsItemSelected(View$OnClickListenerC14678b.this.f32781a);
                }
                DialogC14676d.this.dismiss();
            }
        }

        public View$OnClickListenerC14678b(MenuItem menuItem) {
            this.f32781a = menuItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.postDelayed(new RunnableC14679a(), 150L);
        }
    }

    /* renamed from: j.a.z0.p.d$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/d$c.class */
    public static class C14680c {

        /* renamed from: a */
        public int f32784a;

        /* renamed from: b */
        public MenuItem f32785b;

        /* renamed from: c */
        public DialogC14676d f32786c;

        public C14680c(Activity activity, Menu menu) {
            int i = 0;
            this.f32784a = 0;
            while (true) {
                if (i >= menu.size()) {
                    break;
                }
                MenuItem item = menu.getItem(i);
                if (item.hasSubMenu()) {
                    this.f32784a = item.getItemId();
                    this.f32785b = menu.findItem(this.f32784a);
                    break;
                }
                i++;
            }
            this.f32786c = new DialogC14676d(activity);
        }

        /* renamed from: a */
        public DialogC14676d m880a() {
            MenuItem menuItem = this.f32785b;
            if (menuItem != null) {
                this.f32786c.m882a(menuItem);
            }
            return this.f32786c;
        }

        /* renamed from: a */
        public DialogC14676d m879a(MenuItem menuItem) {
            if (this.f32784a == menuItem.getItemId()) {
                this.f32786c.show();
            }
            return this.f32786c;
        }

        /* renamed from: b */
        public void m878b() {
            MenuItem menuItem = this.f32785b;
            if (menuItem != null) {
                this.f32786c.m882a(menuItem);
            }
        }
    }

    /* renamed from: j.a.z0.p.d$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/d$d.class */
    public static class C14681d extends FreeLayout {

        /* renamed from: i */
        public FreeLayout f32787i;

        /* renamed from: j */
        public ImageView f32788j;

        /* renamed from: k */
        public C14682e f32789k;

        public C14681d(Context context) {
            super(context);
            m32222b();
            m32234a(720);
            setBackgroundResource(R$drawable.btn_overflow_menu_selector);
            this.f32787i = (FreeLayout) m32232a((View) new FreeLayout(context), -2, -2);
            this.f32787i.getLayoutParams().height = C14217x3.m2201a(48.0f);
            this.f32787i.m32234a(720);
            this.f32787i.setMinimumWidth(C14217x3.m2201a(152.0f));
            this.f32787i.setPadding(C14217x3.m2201a(15.5f), 0, C14217x3.m2201a(35.5f), 0);
            this.f32788j = (ImageView) this.f32787i.m32228a(new ImageView(context), 45, 45, new int[]{15});
            this.f32789k = (C14682e) this.f32787i.m32227a(new C14682e(context), -2, -2, new int[]{15}, this.f32788j, new int[]{1});
            this.f32789k.setTextColor(-13421773);
            this.f32789k.setTextSize(16.0f);
            this.f32789k.setSingleLine();
            this.f32789k.setEllipsize(TextUtils.TruncateAt.END);
            m32231a(this.f32789k, 32, 0, 0, 0);
        }

        /* renamed from: a */
        public void m877a(MenuItem menuItem) {
            this.f32788j.setImageDrawable(menuItem.getIcon());
            this.f32789k.setText(menuItem.getTitle());
            if (menuItem.getIntent() == null || !menuItem.getIntent().getAction().equals("red_dot")) {
                this.f32789k.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
                this.f32789k.setCompoundDrawablePadding(0);
            } else {
                this.f32789k.setCompoundDrawablesWithIntrinsicBounds(0, 0, R$drawable.new_red_icon, 0);
                this.f32789k.setCompoundDrawablePadding(C14217x3.m2201a(3.0f));
            }
            if (menuItem.isVisible()) {
                setVisibility(0);
            } else {
                setVisibility(8);
            }
        }

        /* renamed from: c */
        public void m876c() {
            this.f32788j.setVisibility(8);
            m32231a(this.f32789k, 0, 0, 0, 0);
        }

        /* renamed from: d */
        public void m875d() {
            this.f32788j.setVisibility(0);
            m32231a(this.f32789k, 32, 0, 0, 0);
        }
    }

    public DialogC14676d(Activity activity) {
        super(activity, 16973840);
        this.f32777a = activity;
        this.f32778b = new FreeLayout(activity);
        this.f32778b.m32235a();
        this.f32778b.setPadding(0, C14217x3.m2201a(40.0f), 0, 0);
        FreeLayout freeLayout = (FreeLayout) this.f32778b.m32228a(new FreeLayout(activity), -2, -2, new int[]{11, 10});
        freeLayout.setBackgroundResource(R$drawable.layer_menu_bg);
        this.f32779c = (LinearLayout) freeLayout.m32232a(new LinearLayout(activity), -2, -2);
        this.f32779c.setOrientation(1);
        this.f32779c.setPadding(0, C14217x3.m2201a(10.0f), 0, C14217x3.m2201a(10.0f));
        setContentView(this.f32778b);
        this.f32778b.setOnClickListener(new View$OnClickListenerC14677a());
        getWindow().setBackgroundDrawable(new ColorDrawable(335544320));
    }

    /* renamed from: a */
    public void m882a(MenuItem menuItem) {
        boolean z;
        this.f32779c.removeAllViews();
        if (menuItem != null) {
            int i = 0;
            while (true) {
                if (i >= menuItem.getSubMenu().size()) {
                    z = true;
                    break;
                } else if (menuItem.getSubMenu().getItem(i).getIcon() != null) {
                    z = false;
                    break;
                } else {
                    i++;
                }
            }
            for (int i2 = 0; i2 < menuItem.getSubMenu().size(); i2++) {
                MenuItem item = menuItem.getSubMenu().getItem(i2);
                if (item.isVisible()) {
                    C14681d dVar = (C14681d) this.f32778b.m32225a(this.f32779c, new C14681d(getContext()), -2, -2);
                    dVar.m877a(item);
                    if (z) {
                        dVar.m876c();
                    } else {
                        dVar.m875d();
                    }
                    int a = C14217x3.m2201a(15.5f);
                    int a2 = C14217x3.m2201a(45.5f);
                    if (i2 == 0) {
                        dVar.f32787i.setPadding(a, C14217x3.m2201a(14.0f), a2, C14217x3.m2201a(10.0f));
                    } else if (i2 == menuItem.getSubMenu().size() - 1) {
                        dVar.f32787i.setPadding(a, C14217x3.m2201a(10.0f), a2, C14217x3.m2201a(13.0f));
                    } else {
                        int a3 = C14217x3.m2201a(10.0f);
                        dVar.f32787i.setPadding(a, a3, a2, a3);
                    }
                    dVar.setOnClickListener(new View$OnClickListenerC14678b(item));
                }
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        int i = 0;
        for (int i2 = 0; i2 < this.f32779c.getChildCount(); i2++) {
            i = Math.max(this.f32779c.getChildAt(i2).getWidth(), i);
        }
        for (int i3 = 0; i3 < this.f32779c.getChildCount(); i3++) {
            this.f32779c.getChildAt(i3).getLayoutParams().width = i;
            this.f32779c.getChildAt(i3).requestLayout();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (!isShowing()) {
            C14123p4.m2430b(this.f32777a, getWindow());
            super.show();
        }
    }
}
