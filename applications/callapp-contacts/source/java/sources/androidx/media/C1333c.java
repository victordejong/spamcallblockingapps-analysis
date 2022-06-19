package androidx.media;

import android.content.Context;
import androidx.media.C1329b;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.media.c */
/* loaded from: classes-dex2jar.jar:androidx/media/c.class */
public class C1333c extends C1336e {
    public C1333c(Context context) {
        super(context);
        this.f4998b = context;
    }

    @Override // androidx.media.C1336e, androidx.media.C1329b.AbstractC1330a
    /* renamed from: a */
    public boolean mo43215a(C1329b.AbstractC1332c abstractC1332c) {
        return (this.f4998b.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", abstractC1332c.mo43211b(), abstractC1332c.mo43210c()) == 0) || super.mo43215a(abstractC1332c);
    }
}
