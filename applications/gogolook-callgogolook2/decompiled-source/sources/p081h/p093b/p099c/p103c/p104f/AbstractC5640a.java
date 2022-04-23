package p081h.p093b.p099c.p103c.p104f;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import java.util.HashMap;
/* renamed from: h.b.c.c.f.a */
/* loaded from: classes-dex2jar.jar:h/b/c/c/f/a.class */
public abstract class AbstractC5640a extends AbstractC5641b {

    /* renamed from: e */
    public Context f14114e;

    /* renamed from: f */
    public Cursor f14115f;

    /* renamed from: g */
    public int f14116g;

    /* renamed from: h */
    public SparseIntArray f14117h;

    /* renamed from: i */
    public final HashMap<Object, Integer> f14118i = new HashMap<>();

    public AbstractC5640a(Context context, FragmentManager fragmentManager, Cursor cursor) {
        super(fragmentManager);
        m24916a(context, cursor);
    }

    /* renamed from: a */
    public Cursor m24918a() {
        return this.f14115f;
    }

    /* renamed from: a */
    public Cursor mo24909a(Cursor cursor) {
        if (Log.isLoggable("BaseCursorPagerAdapter", 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("swapCursor old=");
            Cursor cursor2 = this.f14115f;
            sb.append(cursor2 == null ? -1 : cursor2.getCount());
            sb.append("; new=");
            sb.append(cursor == null ? -1 : cursor.getCount());
            sb.toString();
        }
        Cursor cursor3 = this.f14115f;
        if (cursor == cursor3) {
            return null;
        }
        this.f14115f = cursor;
        if (cursor != null) {
            this.f14116g = cursor.getColumnIndex("uri");
        } else {
            this.f14116g = -1;
        }
        m24915b();
        notifyDataSetChanged();
        return cursor3;
    }

    /* renamed from: a */
    public abstract Fragment mo24911a(Context context, Cursor cursor, int i);

    @Override // p081h.p093b.p099c.p103c.p104f.AbstractC5641b
    /* renamed from: a */
    public String mo24914a(int i, int i2) {
        if (!m24917a(i2)) {
            return super.mo24914a(i, i2);
        }
        return "android:pager:" + i + ":" + this.f14115f.getString(this.f14116g).hashCode();
    }

    /* renamed from: a */
    public final void m24916a(Context context, Cursor cursor) {
        boolean z = cursor != null;
        this.f14115f = cursor;
        this.f14114e = context;
        this.f14116g = z ? this.f14115f.getColumnIndex("uri") : -1;
    }

    /* renamed from: a */
    public final boolean m24917a(int i) {
        Cursor cursor = this.f14115f;
        if (cursor == null || cursor.isClosed()) {
            return false;
        }
        return this.f14115f.moveToPosition(i);
    }

    /* renamed from: b */
    public final void m24915b() {
        Cursor cursor = this.f14115f;
        if (cursor == null || cursor.isClosed()) {
            this.f14117h = null;
            return;
        }
        SparseIntArray sparseIntArray = new SparseIntArray(this.f14115f.getCount());
        this.f14115f.moveToPosition(-1);
        while (this.f14115f.moveToNext()) {
            sparseIntArray.append(this.f14115f.getString(this.f14116g).hashCode(), this.f14115f.getPosition());
        }
        this.f14117h = sparseIntArray;
    }

    @Override // p081h.p093b.p099c.p103c.p104f.AbstractC5641b, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(View view, int i, Object obj) {
        this.f14118i.remove(obj);
        super.destroyItem(view, i, obj);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        Cursor cursor = this.f14115f;
        if (cursor != null) {
            return cursor.getCount();
        }
        return 0;
    }

    @Override // p081h.p093b.p099c.p103c.p104f.AbstractC5641b
    public Fragment getItem(int i) {
        if (this.f14115f == null || !m24917a(i)) {
            return null;
        }
        return mo24911a(this.f14114e, this.f14115f, i);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        SparseIntArray sparseIntArray;
        Integer num = this.f14118i.get(obj);
        if (num == null || (sparseIntArray = this.f14117h) == null) {
            return -2;
        }
        return sparseIntArray.get(num.intValue(), -2);
    }

    @Override // p081h.p093b.p099c.p103c.p104f.AbstractC5641b, androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(View view, int i) {
        if (this.f14115f != null) {
            Integer valueOf = m24917a(i) ? Integer.valueOf(this.f14115f.getString(this.f14116g).hashCode()) : null;
            Object instantiateItem = super.instantiateItem(view, i);
            if (instantiateItem != null) {
                this.f14118i.put(instantiateItem, valueOf);
            }
            return instantiateItem;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }
}
