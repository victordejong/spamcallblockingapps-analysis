package com.callerid.block.sms;

import android.database.Cursor;
import android.net.Uri;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.bean.MessageBean;
import com.callerid.block.util.C1174e;
import com.callerid.block.util.C1227w;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$g.class */
public class MessageBoxListActivity$g implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f4845b;

    /* renamed from: c */
    final /* synthetic */ String[] f4846c;

    /* renamed from: d */
    final /* synthetic */ MessageBoxListActivity f4847d;

    /* renamed from: com.callerid.block.sms.MessageBoxListActivity$g$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/sms/MessageBoxListActivity$g$a.class */
    class RunnableC1136a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ ArrayList f4848b;

        RunnableC1136a(ArrayList arrayList) {
            MessageBoxListActivity$g.this = r4;
            this.f4848b = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = this.f4848b;
            if (arrayList == null || arrayList.size() <= 0) {
                return;
            }
            if (MessageBoxListActivity.B0(MessageBoxListActivity$g.this.f4847d) != null) {
                MessageBoxListActivity.B0(MessageBoxListActivity$g.this.f4847d).m10592e(this.f4848b, true);
                MessageBoxListActivity.B0(MessageBoxListActivity$g.this.f4847d).notifyDataSetChanged();
            }
            MessageBoxListActivity.j0(MessageBoxListActivity$g.this.f4847d).setDivider(null);
            MessageBoxListActivity.j0(MessageBoxListActivity$g.this.f4847d).setSelection(MessageBoxListActivity.A0(MessageBoxListActivity$g.this.f4847d).size());
        }
    }

    MessageBoxListActivity$g(MessageBoxListActivity messageBoxListActivity, String str, String[] strArr) {
        this.f4847d = messageBoxListActivity;
        this.f4845b = str;
        this.f4846c = strArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        MessageBean messageBean;
        String str;
        try {
            Cursor query = MessageBoxListActivity.h0(this.f4847d).query(Uri.parse("content://mms-sms/conversations/" + this.f4845b), this.f4846c, null, null, null);
            if (query != null && query.getCount() != 0) {
                if (C1227w.f5084a) {
                    C1227w.m9527a("readsms", "cursor_conver_size:" + query.getCount());
                }
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < query.getCount(); i++) {
                    query.moveToPosition(i);
                    String string = query.getString(query.getColumnIndex("transport_type"));
                    String string2 = query.getString(query.getColumnIndex(EZBlackList.f4115ID));
                    String string3 = query.getString(query.getColumnIndex("address"));
                    String string4 = query.getString(query.getColumnIndex("body"));
                    int i2 = query.getInt(query.getColumnIndex("type"));
                    int i3 = query.getInt(query.getColumnIndex("msg_box"));
                    Long valueOf = Long.valueOf(query.getLong(query.getColumnIndex("date")));
                    if (C1227w.f5084a) {
                        C1227w.m9527a("readsms", "cursor_conver:sms_mms_type:" + string + "\nid:" + string2 + "\naddress:" + string3 + "\nbody:" + string4 + "\ntype:" + i2 + "\nm_type:" + i3 + "\n");
                        if ("mms".equals(string)) {
                            if (C1227w.f5084a) {
                                str = "date:" + (valueOf.longValue() * 1000) + ":" + C1174e.m9861c(valueOf.longValue() * 1000);
                                C1227w.m9527a("readsms", str);
                            }
                        } else if (C1227w.f5084a) {
                            str = "date:" + valueOf + ":" + C1174e.m9861c(valueOf.longValue());
                            C1227w.m9527a("readsms", str);
                        }
                    }
                    boolean z = true;
                    int hashCode = string.hashCode();
                    if (hashCode != 108243) {
                        if (hashCode == 114009 && string.equals("sms")) {
                            z = false;
                        }
                    } else if (string.equals("mms")) {
                        z = true;
                    }
                    if (!z) {
                        messageBean = new MessageBean();
                        messageBean.setId(string2);
                        messageBean.setName(string3);
                        messageBean.setDate(C1174e.m9855i(new Date(valueOf.longValue())));
                        messageBean.setDate_time(SimpleDateFormat.getTimeInstance(3).format(new Date(valueOf.longValue())));
                        messageBean.setText(string4);
                        messageBean.setType(i2);
                    } else if (z) {
                        MessageBean messageBean2 = new MessageBean();
                        messageBean2.setId(string2);
                        messageBean2.setMms(true);
                        messageBean2.setDate(C1174e.m9855i(new Date(valueOf.longValue() * 1000)));
                        messageBean2.setDate_time(SimpleDateFormat.getTimeInstance(3).format(new Date(valueOf.longValue() * 1000)));
                        messageBean2.setType(i3);
                        Cursor query2 = this.f4847d.getContentResolver().query(Uri.parse("content://mms/part"), null, "mid=" + string2, null, null);
                        if (C1227w.f5084a) {
                            C1227w.m9527a("readsms", "cursor_mms:" + Arrays.toString(query2.getColumnNames()));
                        }
                        messageBean = messageBean2;
                        if (query2.moveToFirst()) {
                            do {
                                String string5 = query2.getString(query2.getColumnIndex(EZBlackList.f4115ID));
                                String string6 = query2.getString(query2.getColumnIndex("ct"));
                                String string7 = query2.getString(query2.getColumnIndex("_data"));
                                if (C1227w.f5084a) {
                                    C1227w.m9527a("readsms", "partId:" + string5);
                                    C1227w.m9527a("readsms", "mms_type:" + string6);
                                    C1227w.m9527a("readsms", "_data:" + string7);
                                }
                                String str2 = "";
                                if ("text/plain".equals(string6)) {
                                    str2 = string7 != null ? MessageBoxListActivity.i0(this.f4847d, string5) : query2.getString(query2.getColumnIndex("text"));
                                }
                                messageBean2.setText(str2);
                                if ("image/jpeg".equals(string6) || "image/bmp".equals(string6) || "image/gif".equals(string6) || "image/jpg".equals(string6) || "image/png".equals(string6) || "video/3gpp".equals(string6) || "video/mp4".equals(string6)) {
                                    messageBean2.setImageOrVideo(1);
                                    messageBean2.setPartId(string5);
                                }
                                if ("video/3gpp".equals(string6) || "video/3gpp2".equals(string6) || "video/mp4".equals(string6)) {
                                    messageBean2.setImageOrVideo(2);
                                    messageBean2.setPartId(string5);
                                }
                            } while (query2.moveToNext());
                            messageBean = messageBean2;
                        }
                    }
                    arrayList.add(messageBean);
                }
                this.f4847d.runOnUiThread(new RunnableC1136a(arrayList));
            }
        } catch (Exception e) {
            if (C1227w.f5084a) {
                C1227w.m9527a("readsms", "Exception:" + e.getLocalizedMessage());
            }
            e.printStackTrace();
        }
    }
}
