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
/* renamed from: e.a.l5.a.s2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/s2.class */
public class C17739s2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f50278f;

    /* renamed from: g */
    public static SpecificData f50279g;

    /* renamed from: h */
    public static final DatumWriter<C17739s2> f50280h;

    /* renamed from: i */
    public static final DatumReader<C17739s2> f50281i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f50282a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f50283b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f50284c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f50285d;
    @Deprecated

    /* renamed from: e */
    public Integer f50286e;

    /* renamed from: e.a.l5.a.s2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/s2$b.class */
    public static class C17741b extends SpecificRecordBuilderBase<C17739s2> implements RecordBuilder<C17739s2> {

        /* renamed from: a */
        public CharSequence f50287a;

        /* renamed from: b */
        public CharSequence f50288b;

        /* renamed from: c */
        public Integer f50289c;

        public C17741b(C17740a c17740a) {
            super(C17739s2.f50278f);
        }

        /* renamed from: a */
        public C17739s2 build() {
            try {
                C17739s2 c17739s2 = new C17739s2();
                c17739s2.f50282a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17739s2.f50283b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17739s2.f50284c = fieldSetFlags()[2] ? this.f50287a : (CharSequence) defaultValue(fields()[2]);
                c17739s2.f50285d = fieldSetFlags()[3] ? this.f50288b : (CharSequence) defaultValue(fields()[3]);
                c17739s2.f50286e = fieldSetFlags()[4] ? this.f50289c : (Integer) defaultValue(fields()[4]);
                return c17739s2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppVideoCallerIdSent\",\"namespace\":\"com.truecaller.tracking.events\",\"doc\":\"Track that call alert is sent successfully with video call id\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"videoId\",\"type\":\"string\",\"doc\":\"Unique identifier for each uploaded video.\"},{\"name\":\"callId\",\"type\":\"string\",\"doc\":\"Unique identifier for each call with video call id.\"},{\"name\":\"presenceVersion\",\"type\":[\"null\",\"int\"],\"doc\":\"Presence version of the receiver side. 0 means not enabled.\",\"default\":null}]}");
        f50278f = m8613i0;
        SpecificData specificData = new SpecificData();
        f50279g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f50279g, m8613i0);
        f50280h = f50279g.createDatumWriter(m8613i0);
        f50281i = f50279g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50282a = null;
            } else {
                if (this.f50282a == null) {
                    this.f50282a = new C17638l3();
                }
                this.f50282a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50283b = null;
            } else {
                if (this.f50283b == null) {
                    this.f50283b = new ClientHeaderV2();
                }
                this.f50283b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f50284c;
            this.f50284c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f50285d;
            this.f50285d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() == 1) {
                this.f50286e = Integer.valueOf(resolvingDecoder.readInt());
                return;
            }
            resolvingDecoder.readNull();
            this.f50286e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f50284c;
                        this.f50284c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos == 3) {
                        Utf8 utf84 = this.f50285d;
                        this.f50285d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f50286e = null;
                        } else {
                            this.f50286e = Integer.valueOf(resolvingDecoder.readInt());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f50283b = null;
                } else {
                    if (this.f50283b == null) {
                        this.f50283b = new ClientHeaderV2();
                    }
                    this.f50283b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f50282a = null;
            } else {
                if (this.f50282a == null) {
                    this.f50282a = new C17638l3();
                }
                this.f50282a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f50282a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50282a.customEncode(encoder);
        }
        if (this.f50283b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f50283b.customEncode(encoder);
        }
        encoder.writeString(this.f50284c);
        encoder.writeString(this.f50285d);
        if (this.f50286e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeInt(this.f50286e.intValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f50283b;
            }
            if (i == 2) {
                return this.f50284c;
            }
            if (i == 3) {
                return this.f50285d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f50286e;
        }
        return this.f50282a;
    }

    public Schema getSchema() {
        return f50278f;
    }

    public SpecificData getSpecificData() {
        return f50279g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f50282a = (C17638l3) obj;
        } else if (i == 1) {
            this.f50283b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f50284c = (CharSequence) obj;
        } else if (i == 3) {
            this.f50285d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f50286e = (Integer) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f50281i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f50280h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
