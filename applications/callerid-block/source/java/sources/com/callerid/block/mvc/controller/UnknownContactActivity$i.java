package com.callerid.block.mvc.controller;

import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.callerid.block.main.EZCallApplication;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$i.class */
public class UnknownContactActivity$i implements Runnable {

    /* renamed from: b */
    final /* synthetic */ UnknownContactActivity f4720b;

    /* renamed from: com.callerid.block.mvc.controller.UnknownContactActivity$i$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$i$a.class */
    class RunnableC1111a implements Runnable {
        RunnableC1111a() {
            UnknownContactActivity$i.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                UnknownContactActivity$i.this.f4720b.startActivityForResult(new Intent("android.intent.action.EDIT", Uri.parse("content://com.android.contacts/contacts/" + UnknownContactActivity.U(UnknownContactActivity$i.this.f4720b))), 200);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    UnknownContactActivity$i(UnknownContactActivity unknownContactActivity) {
        this.f4720b = unknownContactActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        ContentResolver contentResolver = EZCallApplication.m10163c().getContentResolver();
        Cursor query = contentResolver.query(Uri.parse("content://com.android.contacts/data/phones/filter/" + UnknownContactActivity.o0(this.f4720b).m10045o()), null, null, null, null);
        if (query != null && query.getCount() > 0) {
            query.moveToFirst();
            UnknownContactActivity.V(this.f4720b, query.getInt(query.getColumnIndex("contact_id")));
        }
        this.f4720b.runOnUiThread(new RunnableC1111a());
    }
}
