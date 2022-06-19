package com.callerid.block.mvc.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.widget.ImageView;
/* loaded from: classes-dex2jar.jar:com/callerid/block/mvc/controller/UnknownContactActivity$l.class */
class UnknownContactActivity$l extends AsyncTask<Void, Void, Bitmap> {

    /* renamed from: a */
    public Long f4724a;

    /* renamed from: b */
    public ImageView f4725b;

    /* renamed from: c */
    public Context f4726c;

    public UnknownContactActivity$l(UnknownContactActivity unknownContactActivity, Context context, ImageView imageView, Long l) {
        this.f4724a = l;
        this.f4725b = imageView;
        this.f4726c = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Bitmap doInBackground(java.lang.Void... r8) {
        /*
            r7 = this;
            r0 = 0
            r9 = r0
            r0 = r7
            android.content.Context r0 = r0.f4726c     // Catch: java.lang.Exception -> L6b
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Exception -> L6b
            android.net.Uri r1 = android.provider.ContactsContract.Data.CONTENT_URI     // Catch: java.lang.Exception -> L6b
            r2 = r7
            java.lang.Long r2 = r2.f4724a     // Catch: java.lang.Exception -> L6b
            long r2 = r2.longValue()     // Catch: java.lang.Exception -> L6b
            android.net.Uri r1 = android.content.ContentUris.withAppendedId(r1, r2)     // Catch: java.lang.Exception -> L6b
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Exception -> L6b
            r3 = r2
            r4 = 0
            java.lang.String r5 = "data15"
            r3[r4] = r5     // Catch: java.lang.Exception -> L6b
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L6b
            r8 = r0
            r0 = r8
            r10 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L96
            r0 = r8
            r10 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Exception -> L66
            if (r0 == 0) goto L96
            r0 = r8
            r10 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            r1 = 0
            boolean r0 = r0.isNull(r1)     // Catch: java.lang.Exception -> L66
            if (r0 != 0) goto L96
            r0 = r8
            r1 = 0
            byte[] r0 = r0.getBlob(r1)     // Catch: java.lang.Exception -> L66
            r11 = r0
            r0 = r11
            r1 = 0
            r2 = r11
            int r2 = r2.length     // Catch: java.lang.Exception -> L66
            r3 = 0
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeByteArray(r0, r1, r2, r3)     // Catch: java.lang.Exception -> L66
            r11 = r0
            r0 = r8
            r10 = r0
            goto L96
        L66:
            r11 = move-exception
            goto L6f
        L6b:
            r11 = move-exception
            r0 = 0
            r8 = r0
        L6f:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            r1 = r11
            java.lang.String r1 = r1.getMessage()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = ""
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "error_contact"
            r1 = r10
            java.lang.String r1 = r1.toString()
            com.callerid.block.util.C1227w.m9527a(r0, r1)
            r0 = r9
            r11 = r0
            r0 = r8
            r10 = r0
        L96:
            r0 = r10
            if (r0 == 0) goto La0
            r0 = r10
            r0.close()
        La0:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.mvc.controller.UnknownContactActivity$l.doInBackground(java.lang.Void[]):android.graphics.Bitmap");
    }

    /* renamed from: b */
    public void onPostExecute(Bitmap bitmap) {
        super.onPostExecute(bitmap);
        if (bitmap == null) {
            return;
        }
        this.f4725b.setImageBitmap(bitmap);
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
    }
}
