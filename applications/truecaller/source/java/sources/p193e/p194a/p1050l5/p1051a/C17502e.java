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
/* renamed from: e.a.l5.a.e */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/e.class */
public class C17502e extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49108f;

    /* renamed from: g */
    public static SpecificData f49109g;

    /* renamed from: h */
    public static final DatumWriter<C17502e> f49110h;

    /* renamed from: i */
    public static final DatumReader<C17502e> f49111i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49112a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49113b;
    @Deprecated

    /* renamed from: c */
    public int f49114c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49115d;
    @Deprecated

    /* renamed from: e */
    public Boolean f49116e;

    /* renamed from: e.a.l5.a.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/e$b.class */
    public static class C17504b extends SpecificRecordBuilderBase<C17502e> implements RecordBuilder<C17502e> {

        /* renamed from: a */
        public int f49117a;

        /* renamed from: b */
        public CharSequence f49118b;

        /* renamed from: c */
        public Boolean f49119c;

        public C17504b(C17503a c17503a) {
            super(C17502e.f49108f);
        }

        /* renamed from: a */
        public C17502e build() {
            try {
                C17502e c17502e = new C17502e();
                c17502e.f49112a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17502e.f49113b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17502e.f49114c = fieldSetFlags()[2] ? this.f49117a : ((Integer) defaultValue(fields()[2])).intValue();
                c17502e.f49115d = fieldSetFlags()[3] ? this.f49118b : (CharSequence) defaultValue(fields()[3]);
                c17502e.f49116e = fieldSetFlags()[4] ? this.f49119c : (Boolean) defaultValue(fields()[4]);
                return c17502e;
            } catch (Exception e) {
                throw new AvroRuntimeException(e);
            } catch (AvroMissingFieldException e2) {
                throw e2;
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppACCardSeen\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"cardPosition\",\"type\":\"int\",\"doc\":\"Identified card position in premium tab\"},{\"name\":\"proStatus\",\"type\":\"string\",\"doc\":\"Premium status of the user\"},{\"name\":\"isPromoShown\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Promo shown with AC card\",\"default\":null}]}");
        f49108f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49109g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49109g, m8613i0);
        f49110h = f49109g.createDatumWriter(m8613i0);
        f49111i = f49109g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49112a = null;
            } else {
                if (this.f49112a == null) {
                    this.f49112a = new C17638l3();
                }
                this.f49112a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49113b = null;
            } else {
                if (this.f49113b == null) {
                    this.f49113b = new ClientHeaderV2();
                }
                this.f49113b.customDecode(resolvingDecoder);
            }
            this.f49114c = resolvingDecoder.readInt();
            Utf8 utf8 = this.f49115d;
            this.f49115d = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() == 1) {
                this.f49116e = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49116e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        this.f49114c = resolvingDecoder.readInt();
                    } else if (pos == 3) {
                        Utf8 utf82 = this.f49115d;
                        this.f49115d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
                    } else if (pos != 4) {
                        throw new IOException("Corrupt ResolvingDecoder.");
                    } else {
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49116e = null;
                        } else {
                            this.f49116e = Boolean.valueOf(resolvingDecoder.readBoolean());
                        }
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49113b = null;
                } else {
                    if (this.f49113b == null) {
                        this.f49113b = new ClientHeaderV2();
                    }
                    this.f49113b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49112a = null;
            } else {
                if (this.f49112a == null) {
                    this.f49112a = new C17638l3();
                }
                this.f49112a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49112a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49112a.customEncode(encoder);
        }
        if (this.f49113b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49113b.customEncode(encoder);
        }
        encoder.writeInt(this.f49114c);
        encoder.writeString(this.f49115d);
        if (this.f49116e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49116e.booleanValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49113b;
            }
            if (i == 2) {
                return Integer.valueOf(this.f49114c);
            }
            if (i == 3) {
                return this.f49115d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49116e;
        }
        return this.f49112a;
    }

    public Schema getSchema() {
        return f49108f;
    }

    public SpecificData getSpecificData() {
        return f49109g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49112a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49113b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49114c = ((Integer) obj).intValue();
        } else if (i == 3) {
            this.f49115d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49116e = (Boolean) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49111i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49110h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
