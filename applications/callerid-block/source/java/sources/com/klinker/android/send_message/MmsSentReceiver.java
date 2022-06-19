package com.klinker.android.send_message;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.mms.e.f;
import e.d.a.a.a;
import java.io.File;
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/MmsSentReceiver.class */
public abstract class MmsSentReceiver extends StatusUpdatedReceiver {
    @Override // com.klinker.android.send_message.StatusUpdatedReceiver
    /* renamed from: b */
    public final void mo2120b(Context context, Intent intent, int i) {
        a.k("MmsSentReceiver", "MMS has finished sending, marking it as so, in the database");
        Uri parse = Uri.parse(intent.getStringExtra("content_uri"));
        a.k("MmsSentReceiver", parse.toString());
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("msg_box", (Integer) 2);
        f.f(context, context.getContentResolver(), parse, contentValues, (String) null, (String[]) null);
        String stringExtra = intent.getStringExtra("file_path");
        a.k("MmsSentReceiver", stringExtra);
        new File(stringExtra).delete();
    }
}
