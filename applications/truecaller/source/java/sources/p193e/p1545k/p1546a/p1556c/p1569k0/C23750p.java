package p193e.p1545k.p1546a.p1556c.p1569k0;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.k.a.c.k0.p */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/k0/p.class */
public class C23750p implements Serializable, Externalizable {

    /* renamed from: a */
    public byte[] f65822a;

    public C23750p() {
    }

    public C23750p(byte[] bArr) {
        this.f65822a = bArr;
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException {
        int readInt = objectInput.readInt();
        byte[] bArr = new byte[readInt];
        this.f65822a = bArr;
        objectInput.readFully(bArr, 0, readInt);
    }

    public Object readResolve() {
        try {
            return C23745k.m6153a(this.f65822a);
        } catch (IOException e) {
            StringBuilder m8728C = C22128a.m8728C("Failed to JDK deserialize `JsonNode` value: ");
            m8728C.append(e.getMessage());
            throw new IllegalArgumentException(m8728C.toString(), e);
        }
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeInt(this.f65822a.length);
        objectOutput.write(this.f65822a);
    }
}
