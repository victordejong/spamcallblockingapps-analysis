package com.allinone.callerid.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.search.CallLogBean;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.allinone.callerid.util.n */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/n.class */
public class C3802n {

    /* renamed from: a */
    private SQLiteDatabase f12052a;

    /* renamed from: b */
    private C3804o f12053b;

    public C3802n(Context context) {
        this.f12053b = new C3804o(context);
    }

    /* renamed from: a */
    private void m24093a() {
        SQLiteDatabase sQLiteDatabase = this.f12052a;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    /* renamed from: b */
    public void m24092b(String str) {
        try {
            SQLiteDatabase writableDatabase = this.f12053b.getWritableDatabase();
            this.f12052a = writableDatabase;
            if (writableDatabase.delete("usershortcut", "number=?", new String[]{str}) > 0) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("quick", str + "删除成功");
                }
            } else if (C3718c0.f11914a) {
                C3718c0.m24436a("quick", str + "删除失败");
            }
            m24093a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public List<CallLogBean> m24091c() {
        ArrayList arrayList = new ArrayList();
        try {
            SQLiteDatabase writableDatabase = this.f12053b.getWritableDatabase();
            this.f12052a = writableDatabase;
            Cursor query = writableDatabase.query("usershortcut", null, null, null, null, null, null);
            query.moveToFirst();
            while (!query.isAfterLast() && query.getString(1) != null) {
                CallLogBean callLogBean = new CallLogBean();
                callLogBean.m24955C0(query.getString(query.getColumnIndex(ShortCut.NAME)));
                String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                callLogBean.m24951E0(string);
                callLogBean.m24942J0(C3767h1.m24262Z(EZCallApplication.m26146c(), string));
                if (arrayList.contains(callLogBean)) {
                    arrayList.remove(callLogBean);
                } else {
                    arrayList.add(callLogBean);
                }
                query.moveToNext();
            }
            query.close();
            m24093a();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("quick", "快捷联系人长度:" + arrayList.size());
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    /* renamed from: d */
    public Boolean m24090d(String str) {
        SQLiteDatabase writableDatabase = this.f12053b.getWritableDatabase();
        this.f12052a = writableDatabase;
        boolean z = false;
        try {
            Cursor query = writableDatabase.query("usershortcut", null, "number=?", new String[]{str}, null, null, null);
            boolean moveToFirst = query.moveToFirst();
            if (query.getCount() > 0) {
                if (C3718c0.f11914a) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append("查询成功");
                    C3718c0.m24436a("quick", sb.toString());
                }
            } else if (C3718c0.f11914a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("失败");
                C3718c0.m24436a("quick", sb2.toString());
            }
            z = moveToFirst;
            query.close();
            z = moveToFirst;
        } catch (Exception e) {
            e.printStackTrace();
        }
        m24093a();
        return Boolean.valueOf(z);
    }

    /* renamed from: e */
    public void m24089e(CallLogBean callLogBean) {
        try {
            this.f12052a = this.f12053b.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            String m24884m = callLogBean.m24884m();
            String m24880o = callLogBean.m24880o();
            String str = m24884m;
            if (m24884m == null) {
                str = callLogBean.m24880o();
            }
            contentValues.put(ShortCut.NAME, str);
            contentValues.put(ShortCut.NUMBER, m24880o);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("quick", "name==" + str + "----number==" + m24880o);
            }
            Cursor query = this.f12052a.query("usershortcut", null, "number=?", new String[]{m24880o}, null, null, null);
            if (!query.moveToFirst()) {
                if (Long.valueOf(this.f12052a.insert("usershortcut", null, contentValues)).longValue() > 0) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("quick", m24880o + "保存成功");
                    }
                } else if (C3718c0.f11914a) {
                    C3718c0.m24436a("quick", m24880o + "保存失败");
                }
            }
            query.close();
            m24093a();
        } catch (Exception e) {
            e.printStackTrace();
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("quick", "出错啦" + e.getMessage());
        }
    }
}
