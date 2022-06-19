package com.google.api.client.googleapis.media;

import com.google.api.client.http.AbstractC8653o;
import com.google.api.client.http.AbstractC8662x;
import com.google.api.client.http.C8655q;
import com.google.api.client.http.C8658t;
import com.google.api.client.util.C8731w;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.api.client.googleapis.media.c */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/googleapis/media/c.class */
public class C8612c implements AbstractC8662x, AbstractC8653o {

    /* renamed from: a */
    static final Logger f38279a = Logger.getLogger(C8612c.class.getName());

    /* renamed from: b */
    private final MediaHttpUploader f38280b;

    /* renamed from: c */
    private final AbstractC8653o f38281c;

    /* renamed from: d */
    private final AbstractC8662x f38282d;

    public C8612c(MediaHttpUploader mediaHttpUploader, C8655q c8655q) {
        this.f38280b = (MediaHttpUploader) C8731w.m2836d(mediaHttpUploader);
        this.f38281c = c8655q.m3099g();
        this.f38282d = c8655q.m3090p();
        c8655q.m3083w(this);
        c8655q.m3107D(this);
    }

    @Override // com.google.api.client.http.AbstractC8653o
    /* renamed from: a */
    public boolean mo3126a(C8655q c8655q, boolean z) {
        AbstractC8653o abstractC8653o = this.f38281c;
        boolean z2 = abstractC8653o != null && abstractC8653o.mo3126a(c8655q, z);
        if (z2) {
            try {
                this.f38280b.m3257j();
            } catch (IOException e) {
                f38279a.log(Level.WARNING, "exception thrown while calling server callback", (Throwable) e);
            }
        }
        return z2;
    }

    @Override // com.google.api.client.http.AbstractC8662x
    /* renamed from: b */
    public boolean mo3049b(C8655q c8655q, C8658t c8658t, boolean z) {
        AbstractC8662x abstractC8662x = this.f38282d;
        boolean z2 = abstractC8662x != null && abstractC8662x.mo3049b(c8655q, c8658t, z);
        if (z2 && z && c8658t.m3065h() / 100 == 5) {
            try {
                this.f38280b.m3257j();
            } catch (IOException e) {
                f38279a.log(Level.WARNING, "exception thrown while calling server callback", (Throwable) e);
            }
        }
        return z2;
    }
}
