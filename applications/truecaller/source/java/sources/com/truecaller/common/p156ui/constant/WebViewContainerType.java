package com.truecaller.common.p156ui.constant;

import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/truecaller/common/ui/constant/WebViewContainerType;", "", "", "id", "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "a", "BOTTOM_SHEET", "FULLSCREEN_DIALOG", "POPUP_DIALOG", "common_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.constant.WebViewContainerType */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/constant/WebViewContainerType.class */
public enum WebViewContainerType {
    BOTTOM_SHEET("1"),
    FULLSCREEN_DIALOG("2"),
    POPUP_DIALOG("3");
    
    public static final C3709a Companion = new C3709a(null);

    /* renamed from: id */
    private final String f11157id;

    /* renamed from: com.truecaller.common.ui.constant.WebViewContainerType$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/constant/WebViewContainerType$a.class */
    public static final class C3709a {
        public C3709a(f fVar) {
        }
    }

    WebViewContainerType(String str) {
        this.f11157id = str;
    }

    public final String getId() {
        return this.f11157id;
    }
}
