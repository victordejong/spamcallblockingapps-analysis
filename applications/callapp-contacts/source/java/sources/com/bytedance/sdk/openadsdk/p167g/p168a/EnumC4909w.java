package com.bytedance.sdk.openadsdk.p167g.p168a;

import android.text.TextUtils;
import com.callapp.contacts.recorder.service.RecordService;
/* renamed from: com.bytedance.sdk.openadsdk.g.a.w */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/g/a/w.class */
public enum EnumC4909w {
    PUBLIC,
    PROTECTED,
    PRIVATE;

    /* renamed from: a */
    public static EnumC4909w m33592a(String str) {
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
