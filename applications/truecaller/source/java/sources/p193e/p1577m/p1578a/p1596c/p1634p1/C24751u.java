package p193e.p1577m.p1578a.p1596c.p1634p1;

import com.mopub.mobileads.AdData;
import java.io.FileNotFoundException;
import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24681c0;
/* renamed from: e.m.a.c.p1.u */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/u.class */
public class C24751u implements AbstractC24679b0 {
    /* renamed from: a */
    public int m4660a(int i) {
        return i == 7 ? 6 : 3;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* renamed from: b */
    public long m4659b(int i, long j, IOException iOException, int i2) {
        return ((iOException instanceof C24560m0) || (iOException instanceof FileNotFoundException) || (iOException instanceof C24681c0.C24689h)) ? (char) 1 : Math.min((i2 - 1) * 1000, (int) AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);
    }
}
