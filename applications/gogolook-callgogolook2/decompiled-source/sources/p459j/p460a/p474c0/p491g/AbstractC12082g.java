package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
/* renamed from: j.a.c0.g.g */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/g.class */
public abstract class AbstractC12082g<VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: a */
    public boolean f27153a;

    /* renamed from: b */
    public boolean f27154b;

    /* renamed from: c */
    public Cursor f27155c;

    /* renamed from: d */
    public Context f27156d;

    /* renamed from: e */
    public int f27157e;

    /* renamed from: f */
    public AbstractC12082g<VH>.C12084b f27158f;

    /* renamed from: g */
    public DataSetObserver f27159g;

    /* renamed from: j.a.c0.g.g$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/g$b.class */
    public class C12084b extends ContentObserver {
        public C12084b() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC12082g.this.m7207a();
        }
    }

    /* renamed from: j.a.c0.g.g$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/g$c.class */
    public class C12085c extends DataSetObserver {
        public C12085c() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC12082g gVar = AbstractC12082g.this;
            gVar.f27153a = true;
            gVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC12082g gVar = AbstractC12082g.this;
            gVar.f27153a = false;
            gVar.notifyDataSetChanged();
        }
    }

    public AbstractC12082g(Context context, Cursor cursor, int i) {
        m7206a(context, cursor, i);
    }

    /* renamed from: a */
    public Cursor m7204a(Cursor cursor) {
        Cursor cursor2 = this.f27155c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            AbstractC12082g<VH>.C12084b bVar = this.f27158f;
            if (bVar != null) {
                cursor2.unregisterContentObserver(bVar);
            }
            DataSetObserver dataSetObserver = this.f27159g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f27155c = cursor;
        if (cursor != null) {
            AbstractC12082g<VH>.C12084b bVar2 = this.f27158f;
            if (bVar2 != null) {
                cursor.registerContentObserver(bVar2);
            }
            DataSetObserver dataSetObserver2 = this.f27159g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f27157e = cursor.getColumnIndexOrThrow("_id");
            this.f27153a = true;
            notifyDataSetChanged();
        } else {
            this.f27157e = -1;
            this.f27153a = false;
            notifyDataSetChanged();
        }
        if (cursor2 != null && !cursor2.isClosed()) {
            cursor2.close();
        }
        return cursor2;
    }

    /* renamed from: a */
    public abstract VH mo7205a(Context context, ViewGroup viewGroup, int i);

    /* renamed from: a */
    public void m7207a() {
        Cursor cursor;
        if (this.f27154b && (cursor = this.f27155c) != null && !cursor.isClosed()) {
            this.f27153a = this.f27155c.requery();
        }
    }

    /* renamed from: a */
    public void m7206a(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f27154b = true;
        } else {
            this.f27154b = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f27155c = cursor;
        this.f27153a = z;
        this.f27156d = context;
        this.f27157e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f27158f = new C12084b();
            this.f27159g = new C12085c();
        } else {
            this.f27158f = null;
            this.f27159g = null;
        }
        if (z) {
            AbstractC12082g<VH>.C12084b bVar = this.f27158f;
            if (bVar != null) {
                cursor.registerContentObserver(bVar);
            }
            DataSetObserver dataSetObserver = this.f27159g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: a */
    public abstract void mo7203a(VH vh, Context context, Cursor cursor);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        Cursor cursor;
        if (!this.f27153a || (cursor = this.f27155c) == null || cursor.isClosed()) {
            return 0;
        }
        return this.f27155c.getCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f27153a || (cursor = this.f27155c) == null || cursor.isClosed() || !this.f27155c.moveToPosition(i)) {
            return 0L;
        }
        return this.f27155c.getLong(this.f27157e);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(VH vh, int i) {
        if (!this.f27153a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.f27155c.moveToPosition(i)) {
            mo7203a((AbstractC12082g<VH>) vh, this.f27156d, this.f27155c);
        } else {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup viewGroup, int i) {
        return mo7205a(this.f27156d, viewGroup, i);
    }
}
