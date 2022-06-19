package com.callerid.block.mvc.controller;

import android.content.AsyncQueryHandler;
import android.content.ContentResolver;
import android.database.Cursor;
import android.provider.ContactsContract;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.search.CallLogBean;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/CallLogActivity$a.class */
class CallLogActivity$a extends AsyncQueryHandler {

    /* renamed from: a */
    final /* synthetic */ CallLogActivity f4612a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallLogActivity$a(CallLogActivity callLogActivity, ContentResolver contentResolver) {
        super(contentResolver);
        this.f4612a = callLogActivity;
    }

    @Override // android.content.AsyncQueryHandler
    protected void onQueryComplete(int i, Object obj, Cursor cursor) {
        if (cursor == null || cursor.getCount() <= 0) {
            CallLogActivity.R(this.f4612a, new ArrayList());
            CallLogActivity callLogActivity = this.f4612a;
            CallLogActivity.T(callLogActivity, CallLogActivity.Q(callLogActivity));
        } else {
            CallLogActivity.R(this.f4612a, new ArrayList());
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd,yyyy HH:mm", Locale.ENGLISH);
            cursor.moveToFirst();
            for (int i2 = 0; i2 < cursor.getCount(); i2++) {
                cursor.moveToPosition(i2);
                Date date = new Date(cursor.getLong(cursor.getColumnIndex("date")));
                String string = cursor.getString(cursor.getColumnIndex(EZBlackList.NUMBER));
                int i3 = cursor.getInt(cursor.getColumnIndex("type"));
                String string2 = cursor.getString(cursor.getColumnIndex(EZBlackList.NAME));
                String string3 = cursor.getString(cursor.getColumnIndex("duration"));
                int i4 = cursor.getInt(cursor.getColumnIndex(EZBlackList.f4115ID));
                int i5 = cursor.getInt(cursor.getColumnIndex("numbertype"));
                String string4 = cursor.getString(cursor.getColumnIndex("numberlabel"));
                String str = (i5 == 0 && string4 == null) ? "" : (String) ContactsContract.CommonDataKinds.Phone.getTypeLabel(EZCallApplication.m10163c().getResources(), i5, string4);
                CallLogBean callLogBean = new CallLogBean();
                callLogBean.m10054i0(i4);
                callLogBean.m10048m0(string);
                callLogBean.m10050l0(string2);
                callLogBean.m10046n0(str);
                callLogBean.m10094G0(i3);
                callLogBean.m10068b0(simpleDateFormat.format(date));
                callLogBean.m10076V(date);
                callLogBean.m10066c0(string3);
                CallLogActivity.Q(this.f4612a).add(callLogBean);
            }
            CallLogActivity callLogActivity2 = this.f4612a;
            CallLogActivity.T(callLogActivity2, CallLogActivity.Q(callLogActivity2));
            cursor.close();
        }
        super.onQueryComplete(i, obj, cursor);
    }
}
