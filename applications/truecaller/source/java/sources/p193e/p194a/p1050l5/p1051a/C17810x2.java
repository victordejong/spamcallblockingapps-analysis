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
/* renamed from: e.a.l5.a.x2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/x2.class */
public class C17810x2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50643f;

    /* renamed from: g */
    public static SpecificData f50644g;

    /* renamed from: h */
    public static final DatumWriter<C17810x2> f50645h;

    /* renamed from: i */
    public static final DatumReader<C17810x2> f50646i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50647a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50648b;
    @Deprecated

    /* renamed from: c */
    public long f50649c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50650d;
    @Deprecated

    /* renamed from: e */
    public Integer f50651e;

    /* renamed from: e.a.l5.a.x2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/x2$b.class */
    public static class C17812b extends SpecificRecordBuilderBase<C17810x2> implements RecordBuilder<C17810x2> {

        /* renamed from: a */
        public long f50652a;

        /* renamed from: b */
        public CharSequence f50653b;

        /* renamed from: c */
        public Integer f50654c;

        public C17812b(C17811a c17811a) {
            super(C17810x2.f50643f);
        }

        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r0v42, types: [long] */
        /* renamed from: a */
        public C17810x2 build() {
            try {
                C17810x2 c17810x2 = new C17810x2();
                c17810x2.f50647a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17810x2.f50648b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17810x2.f50649c = fieldSetFlags()[2] ? this.f50652a : ((Long) defaultValue(fields()[2])).longValue();
                c17810x2.f50650d = fieldSetFlags()[3] ? this.f50653b : (CharSequence) defaultValue(fields()[3]);
                c17810x2.f50651e = fieldSetFlags()[4] ? this.f50654c : (Integer) defaultValue(fields()[4]);
                return c17810x2;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVoipCallFinished\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"* Track successful call lengths, by channel name.\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"duration\",\"type\":\"long\",\"doc\":\"* The length of the call, in milliseconds.\"},{\"name\":\"channel\",\"type\":\"string\",\"doc\":\"* The name of the channel. Used to cross-reference calls.\"},{\"name\":\"size\",\"type\":[\"null\",\"int\"],\"doc\":\"* The highest number of people that were on the call.\",\"default\":null}]}");
        f50643f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50644g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50644g, m8613i0);
        f50645h = f50644g.createDatumWriter(m8613i0);
        f50646i = f50644g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50647a = null;
            } else {
                if (this.f50647a == null) {
                    this.f50647a = new C17638l3();
                }
                this.f50647a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50648b = null;
            } else {
                if (this.f50648b == null) {
                    this.f50648b = new ClientHeaderV2();
                }
                this.f50648b.customDecode(resolvingDecoder);
            }
            this.f50649c = resolvingDecoder.readLong();
            Utf8 utf8 = this.f50650d;
            this.f50650d = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() == 1) {
                this.f50651e = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f50651e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f50649c = resolvingDecoder.readLong();
                    } else if (pos == 3) {
                        Utf8 utf82 = this.f50650d;
                        this.f50650d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50651e = null;
                        } else {
                            this.f50651e = Integer.valueOf(resolvingDecoder.readInt());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50648b = null;
                } else {
                    if (this.f50648b == null) {
                        this.f50648b = new ClientHeaderV2();
                    }
                    this.f50648b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50647a = null;
            } else {
                if (this.f50647a == null) {
                    this.f50647a = new C17638l3();
                }
                this.f50647a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50647a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50647a.customEncode(encoder);
        }
        if (this.f50648b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50648b.customEncode(encoder);
        }
        encoder.writeLong(this.f50649c);
        encoder.writeString(this.f50650d);
        if (this.f50651e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f50651e.intValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50648b;
            }
            if (i == 2) {
                return Long.valueOf(this.f50649c);
            }
            if (i == 3) {
                return this.f50650d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50651e;
        }
        return this.f50647a;
    }

    public Schema getSchema() {
        return f50643f;
    }

    public SpecificData getSpecificData() {
        return f50644g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50647a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50648b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50649c = ((Long) obj).longValue();
        } else if (i == 3) {
            this.f50650d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50651e = (Integer) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50646i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50645h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
