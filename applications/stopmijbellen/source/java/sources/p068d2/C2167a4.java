package p068d2;

import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import java.util.Objects;
/* renamed from: d2.a4 */
/* loaded from: classes-dex2jar.jar:d2/a4.class */
public class C2167a4 extends WebMessagePort.WebMessageCallback {

    /* renamed from: a */
    public final /* synthetic */ C2441x3 f7918a;

    public C2167a4(C2441x3 c2441x3) {
        this.f7918a = c2441x3;
    }

    @Override // android.webkit.WebMessagePort.WebMessageCallback
    public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
        String data = webMessage.getData();
        if (data != null) {
            String[] split = data.split(":", 2);
            if (split.length != 2 || !split[0].equals(this.f7918a.f8654k)) {
                return;
            }
            C2441x3 c2441x3 = this.f7918a;
            String str = split[1];
            Objects.requireNonNull(c2441x3);
            C2408t.m3591d().m3717q().m3574f(C2227e4.m3742k(str));
        }
    }
}
