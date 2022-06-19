package p000;

import android.content.Intent;
import android.view.KeyEvent;
/* renamed from: m71 */
/* loaded from: classes3-dex2jar.jar:m71.class */
public class m71 extends l71 {
    @Override // p000.k71
    /* renamed from: k */
    public void mo1289k() {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 79));
        fa1.m1840j().sendOrderedBroadcast(intent, null);
        m1430j();
    }
}
