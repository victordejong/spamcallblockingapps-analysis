package p459j.p460a.p474c0.p491g;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.view.menu.MenuBuilder;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$style;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.h */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/h.class */
public class C12086h {

    /* renamed from: a */
    public static Dialog f27162a;

    /* renamed from: b */
    public static ViewGroup f27163b;

    /* renamed from: c */
    public static Menu f27164c;

    /* renamed from: d */
    public static int f27165d = -1;

    /* renamed from: e */
    public static int f27166e = -1;

    /* renamed from: j.a.c0.g.h$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/h$a.class */
    public static final class DialogInterface$OnDismissListenerC12087a implements DialogInterface.OnDismissListener {
        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            if (C12086h.f27163b != null) {
                for (int i = 0; i < C12086h.f27163b.getChildCount(); i++) {
                    View childAt = C12086h.f27163b.getChildAt(i);
                    childAt.setTag(null);
                    childAt.setOnClickListener(null);
                }
                C12086h.f27163b.removeAllViews();
                ViewGroup unused = C12086h.f27163b = null;
            }
            if (C12086h.f27164c != null) {
                C12086h.f27164c.clear();
            }
        }
    }

    /* renamed from: j.a.c0.g.h$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/h$b.class */
    public static final class View$OnClickListenerC12088b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC12090d f27167a;

        /* renamed from: b */
        public final /* synthetic */ MenuItem f27168b;

        public View$OnClickListenerC12088b(AbstractC12090d dVar, MenuItem menuItem) {
            this.f27167a = dVar;
            this.f27168b = menuItem;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f27167a.mo7193a(this.f27168b);
            C12086h.f27162a.dismiss();
        }
    }

    /* renamed from: j.a.c0.g.h$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/h$c.class */
    public static final class RunnableC12089c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Context f27169a;

        public RunnableC12089c(Context context) {
            this.f27169a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!((Activity) this.f27169a).isFinishing()) {
                C12086h.f27162a.show();
            }
        }
    }

    /* renamed from: j.a.c0.g.h$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/h$d.class */
    public interface AbstractC12090d {
        /* renamed from: a */
        void mo7194a(Menu menu);

        /* renamed from: a */
        void mo7193a(MenuItem menuItem);
    }

    /* renamed from: a */
    public static void m7201a(@NonNull Context context) {
        C12151d.m7000b(f27162a);
        C12151d.m7000b(f27163b);
        if (f27163b.getParent() != null) {
            ((ViewGroup) f27163b.getParent()).removeAllViews();
        }
        f27162a.setContentView(f27163b);
        f27162a.getWindow().setLayout(f27166e, -2);
        f27162a.getWindow().setBackgroundDrawableResource(17170445);
    }

    /* renamed from: a */
    public static void m7200a(@NonNull Context context, LayoutInflater layoutInflater, AbstractC12090d dVar) {
        if (f27165d == -1) {
            f27165d = context.getResources().getDimensionPixelSize(R$dimen.app_context_menu_item_height);
        }
        if (f27166e == -1) {
            f27166e = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getWidth() - (context.getResources().getDimensionPixelSize(R$dimen.app_context_menu_margin_horizontal) * 2);
        }
        if (f27163b == null) {
            f27163b = (ViewGroup) layoutInflater.inflate(R$layout.custom_context_menu, (ViewGroup) null);
        }
        for (int i = 0; i < f27163b.getChildCount(); i++) {
            View childAt = f27163b.getChildAt(i);
            childAt.setTag(null);
            childAt.setOnClickListener(null);
        }
        f27163b.removeAllViews();
        if (f27164c == null) {
            f27164c = new MenuBuilder(context);
        }
        f27164c.clear();
        Dialog dialog = f27162a;
        if (dialog != null && dialog.isShowing()) {
            f27162a.dismiss();
        }
        f27162a = new Dialog(context, R$style.AppTheme_ContextMenu);
        f27162a.setOnDismissListener(new DialogInterface$OnDismissListenerC12087a());
    }

    /* renamed from: a */
    public static void m7199a(@NonNull Context context, AbstractC12090d dVar) {
        ViewGroup viewGroup;
        LayoutInflater from = LayoutInflater.from(context);
        m7200a(context, from, dVar);
        if (dVar != null) {
            C12151d.m7000b(f27164c);
            dVar.mo7194a(f27164c);
        }
        for (int i = 0; i < f27164c.size(); i++) {
            MenuItem item = f27164c.getItem(i);
            if (item != null && item.getSubMenu() == null && item.isVisible()) {
                ViewGroup viewGroup2 = (ViewGroup) from.inflate(R$layout.custom_context_menu_item, (ViewGroup) null);
                if (dVar != null) {
                    viewGroup2.setOnClickListener(new View$OnClickListenerC12088b(dVar, item));
                }
                ((ImageView) viewGroup2.getChildAt(0)).setImageDrawable(item.getIcon());
                ((TextView) viewGroup2.getChildAt(1)).setText(item.getTitle());
                f27163b.addView(viewGroup2, new ViewGroup.LayoutParams(-1, f27165d));
            }
        }
        m7201a(context);
        if (f27162a != null && (viewGroup = f27163b) != null && viewGroup.getChildCount() > 0 && (context instanceof Activity)) {
            ((Activity) context).runOnUiThread(new RunnableC12089c(context));
        }
    }

    /* renamed from: d */
    public static void m7195d() {
        Dialog dialog = f27162a;
        if (dialog != null && dialog.isShowing()) {
            f27162a.dismiss();
        }
    }
}
