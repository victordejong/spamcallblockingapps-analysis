package p459j.p460a.p613z0.p617p;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.view.SizedTextView;
import p459j.p460a.p582w0.C14123p4;
/* renamed from: j.a.z0.p.c */
/* loaded from: classes3-dex2jar.jar:j/a/z0/p/c.class */
public class DialogC14669c extends Dialog {

    /* renamed from: a */
    public Activity f32751a;

    /* renamed from: b */
    public RelativeLayout f32752b;

    /* renamed from: c */
    public LinearLayout f32753c;

    /* renamed from: d */
    public int f32754d = -1;

    /* renamed from: e */
    public int f32755e = -1;

    /* renamed from: f */
    public int f32756f = -1;

    /* renamed from: g */
    public int f32757g = -1;

    /* renamed from: h */
    public SparseArray<String> f32758h = new SparseArray<>();

    /* renamed from: i */
    public View.OnClickListener f32759i;

    /* renamed from: j.a.z0.p.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/c$a.class */
    public class View$OnClickListenerC14670a implements View.OnClickListener {
        public View$OnClickListenerC14670a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC14669c.this.dismiss();
        }
    }

    /* renamed from: j.a.z0.p.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/c$b.class */
    public class View$OnClickListenerC14671b implements View.OnClickListener {

        /* renamed from: j.a.z0.p.c$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/z0/p/c$b$a.class */
        public class RunnableC14672a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C14675e f32762a;

            public RunnableC14672a(C14675e eVar) {
                this.f32762a = eVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                DialogC14669c.this.f32751a.onContextItemSelected(this.f32762a.f32776g);
                DialogC14669c.this.dismiss();
            }
        }

        public View$OnClickListenerC14671b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C14675e eVar = (C14675e) view;
            eVar.postDelayed(new RunnableC14672a(eVar), 150L);
        }
    }

    /* renamed from: j.a.z0.p.c$c */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/c$c.class */
    public class View$OnClickListenerC14673c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View.OnClickListener f32764a;

        public View$OnClickListenerC14673c(View.OnClickListener onClickListener) {
            this.f32764a = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f32764a.onClick(DialogC14669c.this.f32752b);
            DialogC14669c.this.dismiss();
        }
    }

    /* renamed from: j.a.z0.p.c$d */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/c$d.class */
    public static class C14674d {

        /* renamed from: a */
        public Menu f32766a;

        /* renamed from: b */
        public Integer[] f32767b;

        /* renamed from: c */
        public SparseArray<String> f32768c = new SparseArray<>();

        /* renamed from: d */
        public DialogC14669c f32769d;

        public C14674d(Activity activity, Menu menu) {
            this.f32766a = menu;
            this.f32769d = new DialogC14669c(activity);
        }

        /* renamed from: a */
        public C14674d m890a(int i) {
            this.f32769d.m896b(i);
            return this;
        }

        /* renamed from: a */
        public C14674d m889a(int i, String str) {
            this.f32768c.put(i, str);
            return this;
        }

        /* renamed from: a */
        public C14674d m888a(View.OnClickListener onClickListener) {
            this.f32769d.m900a(onClickListener);
            return this;
        }

        /* renamed from: a */
        public DialogC14669c m891a() {
            this.f32769d.m897a(this.f32767b);
            this.f32769d.m902a(this.f32768c);
            this.f32769d.m895b(this.f32766a);
            if (this.f32769d.m901a(this.f32766a)) {
                this.f32769d.show();
            }
            this.f32766a.clear();
            return this.f32769d;
        }

        /* renamed from: b */
        public C14674d m887b(int i) {
            this.f32769d.m893c(i);
            return this;
        }

        /* renamed from: c */
        public C14674d m886c(int i) {
            this.f32769d.m892d(i);
            return this;
        }
    }

    /* renamed from: j.a.z0.p.c$e */
    /* loaded from: classes3-dex2jar.jar:j/a/z0/p/c$e.class */
    public static class C14675e extends ConstraintLayout {

        /* renamed from: a */
        public ImageView f32770a;

        /* renamed from: b */
        public SizedTextView f32771b;

        /* renamed from: c */
        public ImageView f32772c;

        /* renamed from: d */
        public ImageView f32773d;

        /* renamed from: e */
        public SizedTextView f32774e;

        /* renamed from: f */
        public View f32775f;

        /* renamed from: g */
        public MenuItem f32776g;

        public C14675e(Context context) {
            super(context);
            View inflate = LayoutInflater.from(context).inflate(R$layout.item_customized_context_menu, this);
            this.f32775f = inflate.findViewById(R$id.divider);
            ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(R$id.cl_content);
            this.f32770a = (ImageView) inflate.findViewById(R$id.iv_icon);
            this.f32771b = (SizedTextView) inflate.findViewById(R$id.tv_title);
            this.f32772c = (ImageView) inflate.findViewById(R$id.iv_checked);
            this.f32772c.setVisibility(8);
            this.f32773d = (ImageView) inflate.findViewById(R$id.iv_go);
            this.f32773d.setVisibility(8);
            this.f32774e = (SizedTextView) inflate.findViewById(R$id.tv_action);
            this.f32774e.setVisibility(8);
        }

        /* renamed from: a */
        public void m885a() {
            this.f32770a.setVisibility(8);
        }

        /* renamed from: a */
        public void m884a(MenuItem menuItem) {
            this.f32776g = menuItem;
            this.f32770a.setImageDrawable(menuItem.getIcon());
            this.f32771b.setText(menuItem.getTitle());
            if (menuItem.isVisible()) {
                setVisibility(0);
            } else {
                setVisibility(8);
            }
        }

        /* renamed from: b */
        public void m883b() {
            this.f32770a.setVisibility(0);
        }
    }

    public DialogC14669c(Activity activity) {
        super(activity, 16973840);
        this.f32751a = activity;
        View inflate = LayoutInflater.from(activity).inflate(R$layout.view_customized_context_menu, (ViewGroup) null);
        this.f32752b = (RelativeLayout) inflate.findViewById(R$id.rl_parent);
        this.f32753c = (LinearLayout) inflate.findViewById(R$id.ll_container);
        setContentView(inflate);
        inflate.setOnClickListener(new View$OnClickListenerC14670a());
    }

    /* renamed from: a */
    public TextView m903a(int i) {
        if (this.f32753c.getChildCount() > i) {
            return ((C14675e) this.f32753c.getChildAt(i)).f32771b;
        }
        return null;
    }

    /* renamed from: a */
    public void m902a(SparseArray<String> sparseArray) {
        this.f32758h = sparseArray;
    }

    /* renamed from: a */
    public final void m900a(View.OnClickListener onClickListener) {
        this.f32759i = onClickListener;
        this.f32752b.setOnClickListener(new View$OnClickListenerC14673c(onClickListener));
    }

    /* renamed from: a */
    public void m897a(Integer... numArr) {
    }

    /* renamed from: a */
    public boolean m901a(Menu menu) {
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= menu.size()) {
                break;
            } else if (menu.getItem(i).isVisible()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m896b(int i) {
        this.f32756f = i;
    }

    /* renamed from: b */
    public void m895b(Menu menu) {
        boolean z;
        int i = 0;
        while (true) {
            if (i >= menu.size()) {
                z = true;
                break;
            } else if (menu.getItem(i).getIcon() != null) {
                z = false;
                break;
            } else {
                i++;
            }
        }
        int i2 = 0;
        while (true) {
            if (i2 >= menu.size()) {
                i2 = 0;
                break;
            } else if (menu.getItem(i2).isVisible()) {
                break;
            } else {
                i2++;
            }
        }
        for (int i3 = 0; i3 < menu.size(); i3++) {
            MenuItem item = menu.getItem(i3);
            C14675e eVar = new C14675e(getContext());
            this.f32753c.addView(eVar);
            eVar.m884a(item);
            if (z) {
                eVar.m885a();
            } else {
                eVar.m883b();
            }
            if (item.getItemId() == this.f32756f) {
                int i4 = this.f32755e;
                if (i4 != -1) {
                    eVar.f32771b.setTextColor(i4);
                } else {
                    eVar.f32771b.setTextColor(-899526);
                }
                int i5 = this.f32754d;
                if (i5 != -1) {
                    eVar.f32772c.setImageResource(i5);
                }
                eVar.f32772c.setVisibility(0);
            } else if (item.getItemId() == this.f32757g) {
                eVar.f32771b.setTextColor(-3092272);
                eVar.f32772c.setVisibility(8);
            } else {
                eVar.f32771b.setTextColor(-13421773);
                eVar.f32772c.setVisibility(8);
            }
            eVar.f32773d.setVisibility(8);
            if (i3 == i2) {
                eVar.f32775f.setVisibility(8);
            }
            if (item.getItemId() != this.f32757g) {
                eVar.setEnabled(true);
                eVar.setOnClickListener(new View$OnClickListenerC14671b());
            } else {
                eVar.setEnabled(false);
                eVar.setOnClickListener(null);
            }
            String str = this.f32758h.get(item.getItemId());
            if (str != null) {
                eVar.f32774e.setText(str);
                eVar.f32774e.setVisibility(0);
            } else {
                eVar.f32774e.setVisibility(8);
            }
        }
    }

    /* renamed from: c */
    public void m893c(int i) {
        this.f32754d = i;
    }

    /* renamed from: d */
    public void m892d(int i) {
        this.f32755e = i;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        super.onBackPressed();
        View.OnClickListener onClickListener = this.f32759i;
        if (onClickListener != null) {
            onClickListener.onClick(this.f32752b);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (!isShowing()) {
            AnimationSet animationSet = new AnimationSet(true);
            long j = 150;
            animationSet.setDuration(j);
            ScaleAnimation scaleAnimation = new ScaleAnimation(0.3f, 1.0f, 0.3f, 1.0f, 1, 0.5f, 1, 0.5f);
            scaleAnimation.setDuration(j);
            scaleAnimation.setInterpolator(new DecelerateInterpolator());
            animationSet.addAnimation(scaleAnimation);
            this.f32753c.startAnimation(scaleAnimation);
            C14123p4.m2445a(this.f32751a, getWindow());
            super.show();
        }
    }
}
