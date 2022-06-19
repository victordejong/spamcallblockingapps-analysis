package it.gmariotti.changelibs.library.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.widget.Toast;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.LinkedList;
import p029c4.C0821e;
import p124i4.C3102d;
import p139j9.C3289a;
import p139j9.C3290b;
import p139j9.C3293c;
import p150k9.C3412b;
/* loaded from: classes2-dex2jar.jar:it/gmariotti/changelibs/library/view/ChangeLogRecyclerView.class */
public class ChangeLogRecyclerView extends RecyclerView {

    /* renamed from: I0 */
    public static final /* synthetic */ int f10581I0 = 0;

    /* renamed from: D0 */
    public int f10582D0;

    /* renamed from: E0 */
    public int f10583E0;

    /* renamed from: F0 */
    public int f10584F0;

    /* renamed from: G0 */
    public String f10585G0;

    /* renamed from: H0 */
    public C3290b f10586H0;

    /* renamed from: it.gmariotti.changelibs.library.view.ChangeLogRecyclerView$a */
    /* loaded from: classes2-dex2jar.jar:it/gmariotti/changelibs/library/view/ChangeLogRecyclerView$a.class */
    public class AsyncTaskC3143a extends AsyncTask<Void, Void, C3289a> {

        /* renamed from: a */
        public C3290b f10587a;

        /* renamed from: b */
        public C3412b f10588b;

        public AsyncTaskC3143a(C3290b c3290b, C3412b c3412b) {
            ChangeLogRecyclerView.this = r4;
            this.f10587a = c3290b;
            this.f10588b = c3412b;
        }

        @Override // android.os.AsyncTask
        public C3289a doInBackground(Void[] voidArr) {
            C3289a c3289a;
            C3412b c3412b;
            try {
                c3412b = this.f10588b;
            } catch (Exception e) {
                int i = ChangeLogRecyclerView.f10581I0;
                ChangeLogRecyclerView.this.getResources().getString(2131820659);
            }
            if (c3412b != null) {
                c3289a = c3412b.m2326a();
                return c3289a;
            }
            c3289a = null;
            return c3289a;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(C3289a c3289a) {
            C3289a c3289a2 = c3289a;
            if (c3289a2 != null) {
                C3290b c3290b = this.f10587a;
                LinkedList<C3293c> linkedList = c3289a2.f11129a;
                int size = c3290b.f11135g.size();
                c3290b.f11135g.addAll(linkedList);
                c3290b.f2244a.m7827d(size, linkedList.size() + size);
            }
        }
    }

    public ChangeLogRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        C3412b c3412b;
        this.f10582D0 = 2131492910;
        this.f10583E0 = 2131492912;
        this.f10584F0 = 2131755008;
        this.f10585G0 = null;
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(attributeSet, C3102d.f10508l, 0, 0);
        try {
            this.f10582D0 = obtainStyledAttributes.getResourceId(3, this.f10582D0);
            this.f10583E0 = obtainStyledAttributes.getResourceId(2, this.f10583E0);
            this.f10584F0 = obtainStyledAttributes.getResourceId(0, this.f10584F0);
            this.f10585G0 = obtainStyledAttributes.getString(1);
            try {
                c3412b = this.f10585G0 != null ? new C3412b(getContext(), this.f10585G0) : new C3412b(getContext(), this.f10584F0);
                C3290b c3290b = new C3290b(getContext(), new LinkedList());
                this.f10586H0 = c3290b;
                c3290b.f11132d = this.f10582D0;
                c3290b.f11133e = this.f10583E0;
            } catch (Exception e) {
                getResources().getString(2131820659);
            }
            if (this.f10585G0 != null && !C0821e.m7333l(getContext())) {
                Toast.makeText(getContext(), 2131820658, 1).show();
                setAdapter(this.f10586H0);
                getContext();
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1, false);
                linearLayoutManager.m7930m1(1);
                setLayoutManager(linearLayoutManager);
            }
            new AsyncTaskC3143a(this.f10586H0, c3412b).execute(new Void[0]);
            setAdapter(this.f10586H0);
            getContext();
            LinearLayoutManager linearLayoutManager2 = new LinearLayoutManager(1, false);
            linearLayoutManager2.m7930m1(1);
            setLayoutManager(linearLayoutManager2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
