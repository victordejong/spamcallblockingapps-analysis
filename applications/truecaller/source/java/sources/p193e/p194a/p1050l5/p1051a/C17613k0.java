package p193e.p194a.p1050l5.p1051a;

import com.truecaller.tracking.events.ClientHeaderV2;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.apache.avro.AvroMissingFieldException;
import org.apache.avro.AvroRuntimeException;
import org.apache.avro.Schema;
import org.apache.avro.data.RecordBuilder;
import org.apache.avro.io.DatumReader;
import org.apache.avro.io.DatumWriter;
import org.apache.avro.io.Encoder;
import org.apache.avro.io.ResolvingDecoder;
import org.apache.avro.message.BinaryMessageDecoder;
import org.apache.avro.message.BinaryMessageEncoder;
import org.apache.avro.specific.SpecificData;
import org.apache.avro.specific.SpecificRecord;
import org.apache.avro.specific.SpecificRecordBase;
import org.apache.avro.specific.SpecificRecordBuilderBase;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.k0 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/k0.class */
public class C17613k0 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49661e;

    /* renamed from: f */
    public static SpecificData f49662f;

    /* renamed from: g */
    public static final DatumWriter<C17613k0> f49663g;

    /* renamed from: h */
    public static final DatumReader<C17613k0> f49664h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49665a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49666b;
    @Deprecated

    /* renamed from: c */
    public int f49667c;
    @Deprecated

    /* renamed from: d */
    public boolean f49668d;

    /* renamed from: e.a.l5.a.k0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/k0$b.class */
    public static class C17615b extends SpecificRecordBuilderBase<C17613k0> implements RecordBuilder<C17613k0> {

        /* renamed from: a */
        public int f49669a;

        /* renamed from: b */
        public boolean f49670b;

        public C17615b(C17614a c17614a) {
            super(C17613k0.f49661e);
        }

        /* renamed from: a */
        public C17613k0 build() {
            try {
                C17613k0 c17613k0 = new C17613k0();
                c17613k0.f49665a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17613k0.f49666b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17613k0.f49667c = fieldSetFlags()[2] ? this.f49669a : ((Integer) defaultValue(fields()[2])).intValue();
                c17613k0.f49668d = fieldSetFlags()[3] ? this.f49670b : ((Boolean) defaultValue(fields()[3])).booleanValue();
                return c17613k0;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppCreateGroupChatNameSet\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Group chat's name and other metadata set, step 3/4 in process\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"groupNameLength\",\"type\":\"int\"},{\"name\":\"isPictureSet\",\"type\":\"boolean\"}]}");
        f49661e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49662f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49662f, m8613i0);
        f49663g = f49662f.createDatumWriter(m8613i0);
        f49664h = f49662f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49665a = null;
            } else {
                if (this.f49665a == null) {
                    this.f49665a = new C17638l3();
                }
                this.f49665a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49666b = null;
            } else {
                if (this.f49666b == null) {
                    this.f49666b = new ClientHeaderV2();
                }
                this.f49666b.customDecode(resolvingDecoder);
            }
            this.f49667c = resolvingDecoder.readInt();
            this.f49668d = resolvingDecoder.readBoolean();
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f49667c = resolvingDecoder.readInt();
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        this.f49668d = resolvingDecoder.readBoolean();
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49666b = null;
                } else {
                    if (this.f49666b == null) {
                        this.f49666b = new ClientHeaderV2();
                    }
                    this.f49666b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49665a = null;
            } else {
                if (this.f49665a == null) {
                    this.f49665a = new C17638l3();
                }
                this.f49665a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49665a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49665a.customEncode(encoder);
        }
        if (this.f49666b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49666b.customEncode(encoder);
        }
        encoder.writeInt(this.f49667c);
        encoder.writeBoolean(this.f49668d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49666b;
            }
            if (i == 2) {
                return Integer.valueOf(this.f49667c);
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return Boolean.valueOf(this.f49668d);
        }
        return this.f49665a;
    }

    public Schema getSchema() {
        return f49661e;
    }

    public SpecificData getSpecificData() {
        return f49662f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49665a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49666b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49667c = ((Integer) obj).intValue();
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49668d = ((Boolean) obj).booleanValue();
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49664h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49663g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
