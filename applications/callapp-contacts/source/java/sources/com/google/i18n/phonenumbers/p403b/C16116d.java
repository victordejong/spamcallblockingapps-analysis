package com.google.i18n.phonenumbers.p403b;

import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.TreeSet;
import java.util.logging.Logger;
/* renamed from: com.google.i18n.phonenumbers.b.d */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/d.class */
public class C16116d implements Externalizable {

    /* renamed from: b */
    private static final Logger f56903b = Logger.getLogger(C16116d.class.getName());

    /* renamed from: a */
    private final PhoneNumberUtil f56904a = PhoneNumberUtil.getInstance();

    /* renamed from: c */
    private AbstractC16117e f56905c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* renamed from: a */
    private String m7834a(long j) {
        int m7832a = this.f56905c.m7832a();
        if (m7832a == 0) {
            return null;
        }
        int i = m7832a - 1;
        TreeSet<Integer> m7828b = this.f56905c.m7828b();
        long j2 = j;
        while (m7828b.size() > 0) {
            Integer last = m7828b.last();
            String valueOf = String.valueOf((long) (j2 == 1 ? 1 : 0));
            int i2 = 0;
            ?? r6 = j2;
            if (valueOf.length() > last.intValue()) {
                r6 = Long.parseLong(valueOf.substring(0, last.intValue()));
            }
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) >>> 1;
                int i5 = (this.f56905c.mo7831a(i4) > r6 ? 1 : (this.f56905c.mo7831a(i4) == r6 ? 0 : -1));
                i3 = i4;
                if (i5 == 0) {
                    break;
                } else if (i5 > 0) {
                    i3 = i4 - 1;
                    i = i3;
                } else {
                    i2 = i4 + 1;
                    i3 = i4;
                }
            }
            if (i3 < 0) {
                return null;
            }
            if (r6 == this.f56905c.mo7831a(i3)) {
                return this.f56905c.mo7827b(i3);
            }
            m7828b = m7828b.headSet(last);
            i = i3;
            j2 = r6;
        }
        return null;
    }

    /* renamed from: a */
    public final String m7833a(C16136k.C16137a c16137a) {
        return m7834a(Long.parseLong(c16137a.f57029a + this.f56904a.getNationalSignificantNumber(c16137a)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            this.f56905c = new C16114b();
        } else {
            this.f56905c = new C16113a();
        }
        this.f56905c.mo7830a(objectInput);
    }

    public String toString() {
        return this.f56905c.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.f56905c instanceof C16114b);
        this.f56905c.mo7829a(objectOutput);
    }
}
