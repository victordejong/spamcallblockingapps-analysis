package p131c.p431l.p432a.p442b.p448f.p451c;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
/* renamed from: c.l.a.b.f.c.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/f/c/b.class */
public class DialogC6778b extends Dialog implements DialogInterface.OnCancelListener {

    /* renamed from: d */
    public Context f20900d;

    /* renamed from: e */
    public Animation f20901e;

    /* renamed from: a */
    public AbstractC6780b f20897a = null;

    /* renamed from: f */
    public DialogInterface.OnKeyListener f20902f = new DialogInterface$OnKeyListenerC6779a();

    /* renamed from: b */
    public TextView f20898b = (TextView) findViewById(2131231033);

    /* renamed from: c */
    public ImageView f20899c = (ImageView) findViewById(2131231032);

    /* renamed from: c.l.a.b.f.c.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/c/b$a.class */
    public class DialogInterface$OnKeyListenerC6779a implements DialogInterface.OnKeyListener {
        public DialogInterface$OnKeyListenerC6779a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 3 || i == 84;
        }
    }

    /* renamed from: c.l.a.b.f.c.b$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/c/b$b.class */
    public interface AbstractC6780b {
        /* renamed from: a */
        void m19825a();

        /* renamed from: b */
        void m19824b();
    }

    public DialogC6778b(Context context) {
        super(context, 2131624362);
        this.f20901e = null;
        requestWindowFeature(1);
        setContentView(2131427394);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        getWindow().addFlags(2);
        attributes.gravity = 17;
        attributes.dimAmount = 0.45f;
        getWindow().setAttributes(attributes);
        this.f20900d = context;
        this.f20901e = AnimationUtils.loadAnimation(context, 2130771994);
        setOnKeyListener(this.f20902f);
    }

    /* renamed from: a */
    public void m19826a() {
        AbstractC6780b bVar = this.f20897a;
        if (bVar != null) {
            bVar.m19825a();
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        m19826a();
        super.cancel();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        AbstractC6780b bVar = this.f20897a;
        if (bVar != null) {
            bVar.m19824b();
        }
        try {
            super.dismiss();
        } catch (Exception e) {
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        super.setOnDismissListener(onDismissListener);
    }

    @Override // android.app.Dialog
    public void show() {
        ImageView imageView = this.f20899c;
        if (imageView != null) {
            imageView.clearAnimation();
            this.f20899c.startAnimation(this.f20901e);
        }
        try {
            super.show();
        } catch (Exception e) {
        }
    }
}
