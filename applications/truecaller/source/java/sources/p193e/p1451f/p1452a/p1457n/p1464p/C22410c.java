package p193e.p1451f.p1452a.p1457n.p1464p;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.p1457n.AbstractC22261d;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1480t.C22611a;
/* renamed from: e.f.a.n.p.c */
/* loaded from: classes-dex2jar.jar:e/f/a/n/p/c.class */
public class C22410c implements AbstractC22261d<ByteBuffer> {
    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22261d
    /* renamed from: a */
    public boolean mo8221a(ByteBuffer byteBuffer, File file, C22267i c22267i) {
        boolean z;
        try {
            C22611a.m8034b(byteBuffer, file);
            z = true;
        } catch (IOException e) {
            Log.isLoggable("ByteBufferEncoder", 3);
            z = false;
        }
        return z;
    }
}
