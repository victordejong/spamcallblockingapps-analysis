package p193e.p194a.p195a.p286y0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.a.y0.o */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/o.class */
public final class C7326o implements AbstractC7325n {

    /* renamed from: a */
    public final Set<Long> f23371a = new LinkedHashSet();

    /* renamed from: b */
    public boolean f23372b;

    /* renamed from: c */
    public final Context f23373c;

    @Inject
    public C7326o(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f23373c = context;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7325n
    /* renamed from: a */
    public boolean mo29779a(long j) {
        if (!this.f23372b) {
            try {
                this.f23372b = true;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                try {
                    while (true) {
                        try {
                            linkedHashSet.add(Long.valueOf(new DataInputStream(this.f23373c.openFileInput("notifications.state")).readLong()));
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                } catch (EOFException e) {
                    this.f23371a.clear();
                    this.f23371a.addAll(linkedHashSet);
                }
            } catch (IOException e2) {
            }
        }
        return this.f23371a.contains(Long.valueOf(j));
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7325n
    /* renamed from: b */
    public void mo29778b(List<Long> list) {
        l.e(list, "ids");
        this.f23371a.clear();
        this.f23371a.addAll(list);
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(this.f23373c.openFileOutput("notifications.state", 0));
            for (Number number : this.f23371a) {
                dataOutputStream.writeLong(number.longValue());
            }
            C25225a.m4016G(dataOutputStream, null);
        } catch (IOException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
