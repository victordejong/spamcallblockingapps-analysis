package com.freshchat.consumer.sdk.p057j;

import android.graphics.Bitmap;
import e.p.b.d0;
/* renamed from: com.freshchat.consumer.sdk.j.s */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/s.class */
public class C1727s implements d0 {
    public String key() {
        return "circularly_cropped_bitmap";
    }

    public Bitmap transform(Bitmap bitmap) {
        Bitmap bitmap2;
        boolean z;
        try {
            Bitmap m40309a = C1610af.m40309a(bitmap);
            if (m40309a == null) {
                z = false;
                m40309a = bitmap;
            } else {
                z = true;
            }
            bitmap2 = m40309a;
            if (z) {
                bitmap.recycle();
                bitmap2 = m40309a;
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            bitmap2 = null;
        }
        return bitmap2;
    }
}
