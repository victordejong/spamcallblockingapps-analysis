package p193e.p194a.p195a.p243j1;

import android.content.ClipDescription;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import com.truecaller.messaging.views.MediaEditText;
import p1727n3.p1807k.p1821i.p1823g0.AbstractC26598d;
import p1727n3.p1807k.p1821i.p1823g0.C26599e;
import s1.z.c.l;
/* renamed from: e.a.a.j1.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/j1/b.class */
public final class C6435b implements AbstractC26598d {

    /* renamed from: a */
    public final /* synthetic */ MediaEditText f21392a;

    public C6435b(MediaEditText mediaEditText) {
        this.f21392a = mediaEditText;
    }

    @Override // p1727n3.p1807k.p1821i.p1823g0.AbstractC26598d
    /* renamed from: a */
    public final boolean mo1605a(C26599e c26599e, int i, Bundle bundle) {
        MediaEditText.AbstractC4283a mediaCallback;
        MediaEditText mediaEditText = this.f21392a;
        if (mediaEditText.f13953f != null || c26599e == null || (mediaCallback = mediaEditText.getMediaCallback()) == null) {
            return false;
        }
        boolean z = (i & 1) != 0;
        if (Build.VERSION.SDK_INT >= 25 && z) {
            try {
                c26599e.f74489a.mo1602c();
            } catch (Exception e) {
                return false;
            }
        }
        ClipDescription description = c26599e.f74489a.getDescription();
        l.d(description, "it");
        String str = null;
        if (!(description.getMimeTypeCount() == 1)) {
            description = null;
        }
        if (description != null) {
            str = description.getMimeType(0);
        }
        this.f21392a.f13953f = c26599e;
        Uri mo1603b = c26599e.f74489a.mo1603b();
        l.d(mo1603b, "inputContentInfo.contentUri");
        mediaCallback.mo32473b1(mo1603b, str, this.f21392a.f13954g);
        return true;
    }
}
