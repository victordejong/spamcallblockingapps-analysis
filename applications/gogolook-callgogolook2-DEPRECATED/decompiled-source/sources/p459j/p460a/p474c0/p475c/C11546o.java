package p459j.p460a.p474c0.p475c;

import android.content.Context;
import android.net.Uri;
import android.provider.MediaStore;
import com.google.common.base.Joiner;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import p459j.p460a.p474c0.p475c.p478y.C11624k;
/* renamed from: j.a.c0.c.o */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/o.class */
public class C11546o extends C11520b {

    /* renamed from: m */
    public static final Uri f25788m = MediaStore.Files.getContentUri("external");

    /* renamed from: n */
    public static final String f25789n = m9199a(MessagePartData.f11227j, new Integer[]{1, 3});

    public C11546o(String str, Context context) {
        super(str, context, f25788m, C11624k.f26099e, f25789n, null, "date_modified DESC");
    }

    /* renamed from: a */
    public static String m9199a(String[] strArr, Integer[] numArr) {
        return "mime_type IN ('" + Joiner.m31135on("','").join(strArr) + "') AND media_type IN (" + Joiner.m31140a(',').join(numArr) + ")";
    }
}
