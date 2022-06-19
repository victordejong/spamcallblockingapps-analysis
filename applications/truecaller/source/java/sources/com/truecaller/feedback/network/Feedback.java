package com.truecaller.feedback.network;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0007\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/truecaller/feedback/network/Feedback;", "", "", "override", "Ljava/lang/String;", "getOverride", "()Ljava/lang/String;", "setOverride", "(Ljava/lang/String;)V", RemoteMessageConst.FROM, "getFrom", "setFrom", "message", "getMessage", "setMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "feedback_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes9-dex2jar.jar:com/truecaller/feedback/network/Feedback.class */
public final class Feedback {
    private String from;
    private String message;
    private String override;

    public Feedback(String str, String str2) {
        l.e(str, RemoteMessageConst.FROM);
        l.e(str2, "message");
        this.from = str;
        this.message = str2;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getMessage() {
        return this.message;
    }

    public final String getOverride() {
        return this.override;
    }

    public final void setFrom(String str) {
        l.e(str, "<set-?>");
        this.from = str;
    }

    public final void setMessage(String str) {
        l.e(str, "<set-?>");
        this.message = str;
    }

    public final void setOverride(String str) {
        this.override = str;
    }
}
