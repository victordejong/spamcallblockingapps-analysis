package p459j.p460a.p474c0.p475c.p479z;

import android.net.Uri;
import gogolook.callgogolook2.messaging.datamodel.action.UpdateMessagePartSizeAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
/* renamed from: j.a.c0.c.z.u */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/u.class */
public class C11680u extends C11641b0 {

    /* renamed from: l */
    public final String f26213l;

    public C11680u(MessagePartData messagePartData, int i, int i2, boolean z) {
        this(messagePartData.m27564t(), messagePartData.m27567q(), i, i2, messagePartData.getWidth(), messagePartData.getHeight(), z);
    }

    public C11680u(String str, Uri uri, int i, int i2, int i3, int i4, boolean z) {
        super(uri, i, i2, i3, i4, true, z, false, false, 0, 0);
        this.f26213l = str;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11667n
    /* renamed from: a */
    public void mo8643a(int i, int i2) {
        String str = this.f26213l;
        if (str != null && i != -1 && i2 != -1 && i != this.f26186c && i2 != this.f26187d) {
            UpdateMessagePartSizeAction.m27650a(str, i, i2);
        }
    }
}
