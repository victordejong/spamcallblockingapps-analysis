package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.tenor.android.core.constant.StringConstant;
/* renamed from: com.freshchat.consumer.sdk.j.az */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/az.class */
public class C1634az {

    /* renamed from: com.freshchat.consumer.sdk.j.az$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/az$a.class */
    public interface AbstractC1635a {
        /* renamed from: a */
        void mo40172a(EnumC1637c enumC1637c);

        /* renamed from: fQ */
        void mo40171fQ();
    }

    /* renamed from: com.freshchat.consumer.sdk.j.az$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/az$b.class */
    public enum EnumC1636b {
        TYPE_IMAGE("image/*");
        
        private String type;

        EnumC1636b(String str) {
            this.type = str;
        }

        public String getType() {
            return this.type;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.az$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/az$c.class */
    public enum EnumC1637c {
        INVALID_PARAMS,
        UNKNOWN_TYPE,
        INVALID_TYPE
    }

    /* renamed from: V */
    private static String m40175V(String str) {
        if (C1626as.isEmpty(str)) {
            return null;
        }
        return str.split(StringConstant.SLASH)[0];
    }

    /* renamed from: a */
    public static void m40174a(Context context, Uri uri, EnumC1636b enumC1636b, AbstractC1635a abstractC1635a) {
        if (context == null || uri == null || abstractC1635a == null || enumC1636b == null) {
            if (abstractC1635a != null) {
                abstractC1635a.mo40172a(EnumC1637c.INVALID_PARAMS);
                return;
            } else {
                C1613ai.m40283e("FRESHCHAT_WARNING", "Invalid parameters. Can not validate Uri.");
                return;
            }
        }
        String m40173e = m40173e(context, uri);
        if (C1626as.isEmpty(m40173e)) {
            abstractC1635a.mo40172a(EnumC1637c.UNKNOWN_TYPE);
        } else if (C1626as.m40224m(m40175V(enumC1636b.getType()), m40175V(m40173e))) {
            abstractC1635a.mo40171fQ();
        } else {
            abstractC1635a.mo40172a(EnumC1637c.INVALID_TYPE);
        }
    }

    /* renamed from: e */
    private static String m40173e(Context context, Uri uri) {
        String mimeTypeFromExtension;
        String str = null;
        if (context != null) {
            if (uri == null) {
                str = null;
            } else {
                try {
                    if (C1626as.m40224m(uri.getScheme(), "content")) {
                        mimeTypeFromExtension = context.getContentResolver().getType(uri);
                    } else {
                        mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(MimeTypeMap.getFileExtensionFromUrl(uri.toString()).toLowerCase());
                    }
                    str = mimeTypeFromExtension;
                } catch (Exception e) {
                    C1613ai.m40283e("FRESHCHAT", e.toString());
                    str = null;
                }
            }
        }
        return str;
    }
}
