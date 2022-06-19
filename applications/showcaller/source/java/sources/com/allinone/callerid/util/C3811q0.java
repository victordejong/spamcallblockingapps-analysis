package com.allinone.callerid.util;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import androidx.core.content.C0586a;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.search.CallLogBean;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.allinone.callerid.util.q0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/q0.class */
public class C3811q0 {

    /* renamed from: a */
    private ArrayList<CallLogBean> f12061a;

    /* renamed from: b */
    public List<String> f12062b = new ArrayList();

    /* renamed from: c */
    public List<CallLogBean> f12063c = new ArrayList();

    /* renamed from: d */
    public List<CallLogBean> f12064d = new ArrayList();

    /* renamed from: e */
    private Context f12065e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.q0$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/q0$a.class */
    public class C3812a implements Comparator<CallLogBean> {
        C3812a() {
            C3811q0.this = r4;
        }

        /* renamed from: a */
        public int compare(CallLogBean callLogBean, CallLogBean callLogBean2) {
            return Collator.getInstance(Locale.getDefault()).compare(callLogBean.m24884m(), callLogBean2.m24884m());
        }
    }

    public C3811q0(Context context) {
        this.f12065e = context;
    }

    /* renamed from: a */
    public List<CallLogBean> m24059a() {
        try {
            if (C0586a.m33353a(this.f12065e, "android.permission.READ_CALL_LOG") == 0) {
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(C3714b1.m24450h(), new String[]{ShortCut.NUMBER, ShortCut.NAME}, null, null, "date DESC limit 10");
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("short", "查找通话记录,cursor:" + query.getCount());
                }
                if (query != null && query.getCount() > 0) {
                    query.moveToFirst();
                    for (int i = 0; i < query.getCount(); i++) {
                        query.moveToPosition(i);
                        String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                        String string2 = query.getString(query.getColumnIndex(ShortCut.NAME));
                        CallLogBean callLogBean = new CallLogBean();
                        callLogBean.m24951E0(string);
                        if (string2 == null) {
                            String m24217w = C3767h1.m24217w(EZCallApplication.m26146c(), string);
                            if (m24217w == null) {
                                callLogBean.m24955C0(string);
                            } else {
                                callLogBean.m24955C0(m24217w);
                            }
                        } else {
                            callLogBean.m24955C0(string2);
                        }
                        this.f12064d.add(callLogBean);
                    }
                    List<CallLogBean> list = this.f12064d;
                    if (list != null && list.size() > 1) {
                        for (int i2 = 0; i2 < this.f12064d.size(); i2++) {
                            for (int size = this.f12064d.size() - 1; size > i2; size--) {
                                if (this.f12064d.get(i2).m24880o().equals(this.f12064d.get(size).m24880o())) {
                                    this.f12064d.remove(size);
                                }
                            }
                        }
                    }
                }
                if (query != null) {
                    query.close();
                }
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return this.f12064d;
    }

    /* renamed from: b */
    public List<CallLogBean> m24058b() {
        int i;
        this.f12061a = new ArrayList<>();
        try {
            if (C0586a.m33353a(this.f12065e, "android.permission.READ_CONTACTS") == 0) {
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "starred = 1 ", null, null);
                if (query == null) {
                    return null;
                }
                while (true) {
                    if (!query.moveToNext()) {
                        break;
                    }
                    long j = query.getLong(query.getColumnIndex("_id"));
                    Cursor query2 = this.f12065e.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "contact_id=" + Long.toString(j), null, null);
                    String str = "";
                    while (query2.moveToNext()) {
                        str = str + query2.getString(query2.getColumnIndex("data1")) + ":";
                    }
                    query2.close();
                    String string = query.getString(query.getColumnIndex("display_name"));
                    String[] split = str.split(":");
                    if (split.length == 1) {
                        CallLogBean callLogBean = new CallLogBean();
                        callLogBean.m24955C0(string);
                        callLogBean.m24951E0(split[0]);
                        callLogBean.m24922V0("1");
                        callLogBean.m24878p0(true);
                        this.f12061a.add(callLogBean);
                    } else if (split.length > 1) {
                        CallLogBean callLogBean2 = new CallLogBean();
                        callLogBean2.m24955C0(string);
                        callLogBean2.m24951E0(split[0]);
                        callLogBean2.m24922V0("1");
                        callLogBean2.m24878p0(true);
                        this.f12061a.add(callLogBean2);
                    }
                }
                query.close();
                ArrayList<CallLogBean> arrayList = this.f12061a;
                if (arrayList != null && arrayList.size() != 0) {
                    for (i = 0; i < this.f12061a.size(); i++) {
                        for (int size = this.f12061a.size() - 1; size > i; size--) {
                            if (this.f12061a.get(i).m24880o().equals(this.f12061a.get(size).m24880o())) {
                                this.f12061a.remove(size);
                            }
                        }
                    }
                    Collections.sort(this.f12061a, new C3812a());
                }
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("short", "util中获取收藏的联系人：" + this.f12061a.size());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return this.f12061a;
    }
}
