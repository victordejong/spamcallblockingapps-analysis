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
import org.apache.avro.util.Utf8;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.l5.a.f */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/f.class */
public class C17520f extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f49187e;

    /* renamed from: f */
    public static SpecificData f49188f;

    /* renamed from: g */
    public static final DatumWriter<C17520f> f49189g;

    /* renamed from: h */
    public static final DatumReader<C17520f> f49190h;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49191a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49192b;
    @Deprecated

    /* renamed from: c */
    public int f49193c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49194d;

    /* renamed from: e.a.l5.a.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/f$b.class */
    public static class C17522b extends SpecificRecordBuilderBase<C17520f> implements RecordBuilder<C17520f> {

        /* renamed from: a */
        public int f49195a;

        /* renamed from: b */
        public CharSequence f49196b;

        public C17522b(C17521a c17521a) {
            super(C17520f.f49187e);
        }

        /* renamed from: a */
        public C17520f build() {
            try {
                C17520f c17520f = new C17520f();
                c17520f.f49191a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17520f.f49192b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17520f.f49193c = fieldSetFlags()[2] ? this.f49195a : ((Integer) defaultValue(fields()[2])).intValue();
                c17520f.f49194d = fieldSetFlags()[3] ? this.f49196b : (CharSequence) defaultValue(fields()[3]);
                return c17520f;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppACSettingsTapped\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"}]}");
        f49187e = m8613i0;
        SpecificData specificData = new SpecificData();
        f49188f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49188f, m8613i0);
        f49189g = f49188f.createDatumWriter(m8613i0);
        f49190h = f49188f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        Utf8 utf8 = null;
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49191a = null;
            } else {
                if (this.f49191a == null) {
                    this.f49191a = new C17638l3();
                }
                this.f49191a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49192b = null;
            } else {
                if (this.f49192b == null) {
                    this.f49192b = new ClientHeaderV2();
                }
                this.f49192b.customDecode(resolvingDecoder);
            }
            this.f49193c = resolvingDecoder.readInt();
            Utf8 utf82 = this.f49194d;
            if (utf82 instanceof Utf8) {
                utf8 = utf82;
            }
            this.f49194d = resolvingDecoder.readString(utf8);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f49193c = resolvingDecoder.readInt();
                    } else if (pos != 3) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        Utf8 utf83 = this.f49194d;
                        this.f49194d = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49192b = null;
                } else {
                    if (this.f49192b == null) {
                        this.f49192b = new ClientHeaderV2();
                    }
                    this.f49192b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49191a = null;
            } else {
                if (this.f49191a == null) {
                    this.f49191a = new C17638l3();
                }
                this.f49191a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49191a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49191a.customEncode(encoder);
        }
        if (this.f49192b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49192b.customEncode(encoder);
        }
        encoder.writeInt(this.f49193c);
        encoder.writeString(this.f49194d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49192b;
            }
            if (i == 2) {
                return Integer.valueOf(this.f49193c);
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49194d;
        }
        return this.f49191a;
    }

    public Schema getSchema() {
        return f49187e;
    }

    public SpecificData getSpecificData() {
        return f49188f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49191a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49192b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49193c = ((Integer) obj).intValue();
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49194d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49190h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49189g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
