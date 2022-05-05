package p081h.p160h.p174c.p175e;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.view.View;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import p081h.p160h.p174c.p177g.C6332a;
/* renamed from: h.h.c.e.a */
/* loaded from: classes2-dex2jar.jar:h/h/c/e/a.class */
public class DialogC6320a extends Dialog {

    /* renamed from: a */
    public C6332a f15665a;

    /* renamed from: b */
    public AbstractC6326f f15666b;

    /* renamed from: c */
    public ArrayList<String> f15667c = new ArrayList<>();

    /* renamed from: d */
    public ArrayList<ArrayList<String>> f15668d = new ArrayList<>();

    /* renamed from: e */
    public int f15669e = 0;

    /* renamed from: f */
    public int f15670f = 20;

    /* renamed from: h.h.c.e.a$a */
    /* loaded from: classes2-dex2jar.jar:h/h/c/e/a$a.class */
    public class View$OnClickListenerC6321a implements View.OnClickListener {
        public View$OnClickListenerC6321a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC6320a.this.dismiss();
        }
    }

    /* renamed from: h.h.c.e.a$b */
    /* loaded from: classes2-dex2jar.jar:h/h/c/e/a$b.class */
    public class View$OnClickListenerC6322b implements View.OnClickListener {
        public View$OnClickListenerC6322b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DialogC6320a.this.f15666b != null) {
                DialogC6320a.this.f15666b.mo23289a(DialogC6320a.this.f15668d);
            }
        }
    }

    /* renamed from: h.h.c.e.a$c */
    /* loaded from: classes2-dex2jar.jar:h/h/c/e/a$c.class */
    public class View$OnClickListenerC6323c implements View.OnClickListener {
        public View$OnClickListenerC6323c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC6320a.this.f15669e -= DialogC6320a.this.f15670f;
            if (DialogC6320a.this.f15669e < 0) {
                DialogC6320a.this.f15669e = 0;
            }
            DialogC6320a.this.m23303a();
        }
    }

    /* renamed from: h.h.c.e.a$d */
    /* loaded from: classes2-dex2jar.jar:h/h/c/e/a$d.class */
    public class View$OnClickListenerC6324d implements View.OnClickListener {
        public View$OnClickListenerC6324d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DialogC6320a.this.f15669e += DialogC6320a.this.f15670f;
            if (DialogC6320a.this.f15669e > DialogC6320a.this.f15668d.size()) {
                DialogC6320a.this.f15669e -= DialogC6320a.this.f15670f;
            }
            DialogC6320a.this.m23303a();
        }
    }

    /* renamed from: h.h.c.e.a$e */
    /* loaded from: classes2-dex2jar.jar:h/h/c/e/a$e.class */
    public class AsyncTaskC6325e extends AsyncTask<String, Void, Void> {

        /* renamed from: a */
        public ProgressDialog f15675a;

        public AsyncTaskC6325e() {
        }

        /* renamed from: a */
        public Void doInBackground(String... strArr) {
            Uri parse = Uri.parse(strArr[0]);
            Cursor query = DialogC6320a.this.getContext().getContentResolver().query(parse, null, null, null, null);
            if (query != null) {
                try {
                    query.close();
                } catch (Exception e) {
                }
            }
            query = DialogC6320a.this.getContext().getContentResolver().query(parse, null, null, null, "date desc");
            if (query == null) {
                return null;
            }
            for (String str : query.getColumnNames()) {
                DialogC6320a.this.f15667c.add(str);
            }
            for (int i = 0; i < query.getCount(); i++) {
                ArrayList arrayList = new ArrayList();
                query.moveToPosition(i);
                for (int i2 = 0; i2 < query.getColumnCount(); i2++) {
                    arrayList.add(query.getString(i2));
                }
                DialogC6320a.this.f15668d.add(arrayList);
            }
            query.close();
            return null;
        }

        /* renamed from: a */
        public void onPostExecute(Void r3) {
            this.f15675a.dismiss();
            DialogC6320a.this.m23298b();
            DialogC6320a.this.m23303a();
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            this.f15675a = new ProgressDialog(DialogC6320a.this.getContext());
            this.f15675a.setMessage("Exporting...");
            this.f15675a.show();
            DialogC6320a.this.f15667c.clear();
            DialogC6320a.this.f15668d.clear();
        }
    }

    /* renamed from: h.h.c.e.a$f */
    /* loaded from: classes2-dex2jar.jar:h/h/c/e/a$f.class */
    public interface AbstractC6326f {
        /* renamed from: a */
        void mo23289a(ArrayList<ArrayList<String>> arrayList);
    }

    public DialogC6320a(Context context) {
        super(context, 16973833);
        this.f15665a = new C6332a(context);
        setContentView(this.f15665a);
        this.f15665a.f15721i.setOnClickListener(new View$OnClickListenerC6321a());
        this.f15665a.f15724l.setOnClickListener(new View$OnClickListenerC6322b());
        this.f15665a.f15726n.setOnClickListener(new View$OnClickListenerC6323c());
        this.f15665a.f15727o.setOnClickListener(new View$OnClickListenerC6324d());
    }

    /* renamed from: a */
    public final void m23303a() {
        this.f15665a.m23275d();
        for (int i = this.f15669e; i < Math.min(this.f15669e + this.f15670f, this.f15668d.size()); i++) {
            Iterator<String> it = this.f15668d.get(i).iterator();
            while (it.hasNext()) {
                this.f15665a.m23278a(it.next());
            }
            this.f15665a.m23276c();
        }
        int i2 = this.f15669e / this.f15670f;
        int ceil = (int) Math.ceil(this.f15668d.size() / this.f15670f);
        TextView textView = this.f15665a.f15725m;
        textView.setText((i2 + 1) + "/" + ceil);
    }

    /* renamed from: a */
    public void m23302a(AbstractC6326f fVar) {
        this.f15666b = fVar;
    }

    /* renamed from: a */
    public void m23299a(String str) {
        this.f15665a.m23279a((CharSequence) str);
        new AsyncTaskC6325e().execute(str);
    }

    /* renamed from: b */
    public final void m23298b() {
        this.f15665a.m23277a(this.f15667c);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        this.f15665a.m23279a(charSequence);
    }
}
