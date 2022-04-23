package com.bytedance.sdk.openadsdk.g.a;

import android.text.TextUtils;
import com.callapp.contacts.recorder.service.RecordService;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/w.class */
public enum w {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w a(String str) {
        if (TextUtils.isEmpty(str)) {
            return PUBLIC;
        }
        String lowerCase = str.toLowerCase();
        return TextUtils.equals("protected", lowerCase) ? PROTECTED : TextUtils.equals(RecordService.PRIVATE_NUMBER_STRING, lowerCase) ? PRIVATE : PUBLIC;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this == PRIVATE ? RecordService.PRIVATE_NUMBER_STRING : this == PROTECTED ? "protected" : "public";
    }
}
