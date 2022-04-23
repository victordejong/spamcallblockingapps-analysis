package p131c.p135b.p136a.p148e.p149a;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.e.a.b */
/* loaded from: classes-dex2jar.jar:c/b/a/e/a/b.class */
public class C2229b {

    /* renamed from: a */
    public final C2341l f8399a;

    /* renamed from: b */
    public final Activity f8400b;

    /* renamed from: c */
    public AlertDialog f8401c;

    /* renamed from: d */
    public AbstractC2237d f8402d;

    /* renamed from: c.b.a.e.a.b$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$a.class */
    public class RunnableC2230a implements Runnable {
        public RunnableC2230a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2229b.this.f8401c != null) {
                C2229b.this.f8401c.dismiss();
            }
        }
    }

    /* renamed from: c.b.a.e.a.b$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$b.class */
    public class RunnableC2231b implements Runnable {

        /* renamed from: c.b.a.e.a.b$b$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$b$a.class */
        public class DialogInterface$OnClickListenerC2232a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC2232a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C2229b.this.f8402d.mo30683a();
            }
        }

        /* renamed from: c.b.a.e.a.b$b$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$b$b.class */
        public class DialogInterface$OnClickListenerC2233b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC2233b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C2229b.this.f8402d.mo30682b();
            }
        }

        public RunnableC2231b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2229b.this.f8401c = new AlertDialog.Builder(C2229b.this.f8400b).setTitle((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8578O0)).setMessage((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8583P0)).setCancelable(false).setPositiveButton((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8593R0), new DialogInterface$OnClickListenerC2233b()).setNegativeButton((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8588Q0), new DialogInterface$OnClickListenerC2232a()).show();
        }
    }

    /* renamed from: c.b.a.e.a.b$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$c.class */
    public class RunnableC2234c implements Runnable {

        /* renamed from: c.b.a.e.a.b$c$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$c$a.class */
        public class DialogInterface$OnClickListenerC2235a implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC2235a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C2229b.this.f8402d.mo30682b();
            }
        }

        /* renamed from: c.b.a.e.a.b$c$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$c$b.class */
        public class DialogInterface$OnClickListenerC2236b implements DialogInterface.OnClickListener {
            public DialogInterface$OnClickListenerC2236b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                C2229b.this.f8402d.mo30683a();
            }
        }

        public RunnableC2234c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(C2229b.this.f8400b);
            builder.setTitle((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8603T0));
            builder.setMessage((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8608U0));
            builder.setCancelable(false);
            builder.setPositiveButton((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8618W0), new DialogInterface$OnClickListenerC2235a());
            builder.setNegativeButton((CharSequence) C2229b.this.f8399a.m30291a(C2251d.C2256e.f8613V0), new DialogInterface$OnClickListenerC2236b());
            C2229b.this.f8401c = builder.show();
        }
    }

    /* renamed from: c.b.a.e.a.b$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/b$d.class */
    public interface AbstractC2237d {
        /* renamed from: a */
        void mo30683a();

        /* renamed from: b */
        void mo30682b();
    }

    public C2229b(Activity activity, C2341l lVar) {
        this.f8399a = lVar;
        this.f8400b = activity;
    }

    /* renamed from: a */
    public void m30693a() {
        this.f8400b.runOnUiThread(new RunnableC2230a());
    }

    /* renamed from: a */
    public void m30692a(AbstractC2237d dVar) {
        this.f8402d = dVar;
    }

    /* renamed from: b */
    public void m30689b() {
        this.f8400b.runOnUiThread(new RunnableC2231b());
    }

    /* renamed from: c */
    public void m30687c() {
        this.f8400b.runOnUiThread(new RunnableC2234c());
    }

    /* renamed from: d */
    public boolean m30685d() {
        AlertDialog alertDialog = this.f8401c;
        if (alertDialog != null) {
            return alertDialog.isShowing();
        }
        return false;
    }
}
