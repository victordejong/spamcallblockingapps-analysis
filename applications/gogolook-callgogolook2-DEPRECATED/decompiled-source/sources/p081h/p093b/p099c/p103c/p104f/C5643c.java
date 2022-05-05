package p081h.p093b.p099c.p103c.p104f;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import androidx.collection.SimpleArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import p081h.p093b.p099c.p103c.C5623c;
import p081h.p093b.p099c.p103c.p105g.View$OnClickListenerC5644a;
import p081h.p093b.p099c.p103c.p107i.AbstractC5652a;
/* renamed from: h.b.c.c.f.c */
/* loaded from: classes-dex2jar.jar:h/b/c/c/f/c.class */
public class C5643c extends AbstractC5640a {

    /* renamed from: j */
    public SimpleArrayMap<String, Integer> f14124j = new SimpleArrayMap<>(AbstractC5652a.f14154a.length);

    /* renamed from: k */
    public final float f14125k;

    /* renamed from: l */
    public boolean f14126l;

    public C5643c(Context context, FragmentManager fragmentManager, Cursor cursor, float f, boolean z) {
        super(context, fragmentManager, cursor);
        this.f14125k = f;
        this.f14126l = z;
    }

    @Override // p081h.p093b.p099c.p103c.p104f.AbstractC5640a
    /* renamed from: a */
    public Cursor mo24909a(Cursor cursor) {
        String[] strArr;
        String[] strArr2;
        this.f14124j.clear();
        if (cursor != null) {
            for (String str : AbstractC5652a.f14154a) {
                this.f14124j.put(str, Integer.valueOf(cursor.getColumnIndexOrThrow(str)));
            }
            for (String str2 : AbstractC5652a.f14155b) {
                int columnIndex = cursor.getColumnIndex(str2);
                if (columnIndex != -1) {
                    this.f14124j.put(str2, Integer.valueOf(columnIndex));
                }
            }
        }
        return super.mo24909a(cursor);
    }

    @Override // p081h.p093b.p099c.p103c.p104f.AbstractC5640a
    /* renamed from: a */
    public Fragment mo24911a(Context context, Cursor cursor, int i) {
        String b = m24907b(cursor);
        String c = m24905c(cursor);
        boolean z = b == null && m24904d(cursor);
        C5623c.C5625b a = C5623c.m24990a(this.f14114e, m24906c());
        a.m24987a(b);
        a.m24984b(c);
        a.m24986a(this.f14126l);
        a.m24988a(this.f14125k);
        return m24910a(a.m24989a(), i, z);
    }

    /* renamed from: a */
    public View$OnClickListenerC5644a m24910a(Intent intent, int i, boolean z) {
        return View$OnClickListenerC5644a.m24895a(intent, i, z);
    }

    /* renamed from: a */
    public final String m24908a(Cursor cursor, String str) {
        if (this.f14124j.containsKey(str)) {
            return cursor.getString(this.f14124j.get(str).intValue());
        }
        return null;
    }

    /* renamed from: b */
    public String m24907b(Cursor cursor) {
        return m24908a(cursor, "contentUri");
    }

    /* renamed from: c */
    public Class<? extends View$OnClickListenerC5644a> m24906c() {
        return View$OnClickListenerC5644a.class;
    }

    /* renamed from: c */
    public String m24905c(Cursor cursor) {
        return m24908a(cursor, "thumbnailUri");
    }

    /* renamed from: d */
    public boolean m24904d(Cursor cursor) {
        String a = m24908a(cursor, "loadingIndicator");
        if (a == null) {
            return false;
        }
        return Boolean.valueOf(a).booleanValue();
    }
}
