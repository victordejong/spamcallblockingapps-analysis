package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.core.content.FileProvider;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import java.io.File;
/* renamed from: com.freshchat.consumer.sdk.j.an */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/an.class */
public class C1620an {
    public static final String TAG = "com.freshchat.consumer.sdk.j.an";

    /* renamed from: a */
    public static Intent m40251a(Context context, File file) {
        Intent intent;
        Uri uri;
        try {
        } catch (Exception e) {
            intent = new Intent();
            intent.putExtra("HAS_ERRORS", true);
            C1723q.m39823a(e);
        }
        if (file == null) {
            Intent intent2 = new Intent();
            intent2.putExtra("HAS_ERRORS", true);
            intent2.putExtra("ERROR_MESSAGE", EnumC1464c.PICTURE_ATTACHMENT_FAILED_NO_STORAGE_ACCESS.toString());
            return intent2;
        }
        if (!C1630aw.m40191fc() || !C1710g.m39950am(context)) {
            uri = Uri.fromFile(file);
        } else if (!C1710g.m39951al(context)) {
            Intent intent3 = new Intent();
            intent3.putExtra("HAS_ERRORS", true);
            intent3.putExtra("ERROR_MESSAGE", EnumC1464c.PICTURE_ATTACHMENT_FAILED_BAD_AUTHORITY.toString());
            return intent3;
        } else {
            uri = FileProvider.m42989b(context, C1710g.m39953aj(context), file);
        }
        Intent intent4 = new Intent("android.media.action.IMAGE_CAPTURE");
        intent4.putExtra("output", uri);
        intent = intent4;
        return intent;
    }
}
