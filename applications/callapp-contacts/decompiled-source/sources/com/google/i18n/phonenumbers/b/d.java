package com.google.i18n.phonenumbers.b;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.k;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.SortedSet;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/b/d.class */
public class d implements Externalizable {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f32846b = Logger.getLogger(d.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final PhoneNumberUtil f32847a = PhoneNumberUtil.getInstance();

    /* renamed from: c  reason: collision with root package name */
    private e f32848c;

    private String a(long j) {
        int a2 = this.f32848c.a();
        if (a2 == 0) {
            return null;
        }
        int i = a2 - 1;
        SortedSet b2 = this.f32848c.b();
        while (b2.size() > 0) {
            Integer num = (Integer) b2.last();
            String valueOf = String.valueOf(j);
            int i2 = 0;
            if (valueOf.length() > num.intValue()) {
                j = Long.parseLong(valueOf.substring(0, num.intValue()));
            }
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) >>> 1;
                int i5 = (this.f32848c.a(i4) > j ? 1 : (this.f32848c.a(i4) == j ? 0 : -1));
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
            if (j == this.f32848c.a(i3)) {
                return this.f32848c.b(i3);
            }
            b2 = b2.headSet(num);
            i = i3;
        }
        return null;
    }

    public final String a(k.a aVar) {
        return a(Long.parseLong(aVar.f32890a + this.f32847a.getNationalSignificantNumber(aVar)));
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        if (objectInput.readBoolean()) {
            this.f32848c = new b();
        } else {
            this.f32848c = new a();
        }
        this.f32848c.a(objectInput);
    }

    public String toString() {
        return this.f32848c.toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeBoolean(this.f32848c instanceof b);
        this.f32848c.a(objectOutput);
    }
}
