package androidx.media;

import android.content.Context;
import androidx.media.b;
/* loaded from: classes-dex2jar.jar:androidx/media/c.class */
class c extends e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context) {
        super(context);
        this.f2715b = context;
    }

    @Override // androidx.media.e, androidx.media.b.a
    public boolean a(b.c cVar) {
        return (this.f2715b.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", cVar.b(), cVar.c()) == 0) || super.a(cVar);
    }
}
