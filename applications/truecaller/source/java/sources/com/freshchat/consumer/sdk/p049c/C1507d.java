package com.freshchat.consumer.sdk.p049c;

import android.content.Context;
import android.database.Cursor;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Tag;
import com.freshchat.consumer.sdk.p047b.C1460a;
import com.freshchat.consumer.sdk.p057j.C1723q;
import java.util.List;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.c.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/d.class */
public class C1507d extends AbstractC1504b {
    private final Context context;

    public C1507d(Context context) {
        super(context);
        this.context = context;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        return null;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: bW */
    public void m40769bW() {
        try {
            try {
                m40789cs().beginTransaction();
                C1506c c1506c = new C1506c(this.context);
                List<Channel> m40770gn = c1506c.m40770gn();
                super.m40784v(false);
                c1506c.m40778a(m40770gn, (List<Tag>) null);
                m40789cs().setTransactionSuccessful();
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
            m40789cs().endTransaction();
            C1460a.m41033g(this.context);
        } catch (Throwable th) {
            m40789cs().endTransaction();
            throw th;
        }
    }

    /* renamed from: cx */
    public void m40768cx() {
        super.m40788ct();
    }

    /* renamed from: iR */
    public void m40767iR() {
        try {
            super.m40786iQ();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }
}
