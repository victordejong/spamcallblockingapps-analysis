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
/* renamed from: e.a.l5.a.i2 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/i2.class */
public class C17583i2 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49503f;

    /* renamed from: g */
    public static SpecificData f49504g;

    /* renamed from: h */
    public static final DatumWriter<C17583i2> f49505h;

    /* renamed from: i */
    public static final DatumReader<C17583i2> f49506i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49507a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49508b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49509c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49510d;
    @Deprecated

    /* renamed from: e */
    public Boolean f49511e;

    /* renamed from: e.a.l5.a.i2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/i2$b.class */
    public static class C17585b extends SpecificRecordBuilderBase<C17583i2> implements RecordBuilder<C17583i2> {

        /* renamed from: a */
        public CharSequence f49512a;

        /* renamed from: b */
        public CharSequence f49513b;

        /* renamed from: c */
        public Boolean f49514c;

        public C17585b(C17584a c17584a) {
            super(C17583i2.f49503f);
        }

        /* renamed from: a */
        public C17583i2 build() {
            try {
                C17583i2 c17583i2 = new C17583i2();
                c17583i2.f49507a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17583i2.f49508b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17583i2.f49509c = fieldSetFlags()[2] ? this.f49512a : (CharSequence) defaultValue(fields()[2]);
                c17583i2.f49510d = fieldSetFlags()[3] ? this.f49513b : (CharSequence) defaultValue(fields()[3]);
                c17583i2.f49511e = fieldSetFlags()[4] ? this.f49514c : (Boolean) defaultValue(fields()[4]);
                return c17583i2;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppSubscriptionLaunched\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"source\",\"type\":\"string\",\"doc\":\"Launch source\"},{\"name\":\"campaign\",\"type\":[\"null\",\"string\"],\"doc\":\"Campaign String\",\"default\":null},{\"name\":\"hadPremiumBefore\",\"type\":[\"null\",\"boolean\"],\"doc\":\"Does user has premium in the past\",\"default\":null}]}");
        f49503f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49504g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49504g, m8613i0);
        f49505h = f49504g.createDatumWriter(m8613i0);
        f49506i = f49504g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49507a = null;
            } else {
                if (this.f49507a == null) {
                    this.f49507a = new C17638l3();
                }
                this.f49507a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49508b = null;
            } else {
                if (this.f49508b == null) {
                    this.f49508b = new ClientHeaderV2();
                }
                this.f49508b.customDecode(resolvingDecoder);
            }
            Utf8 utf8 = this.f49509c;
            this.f49509c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49510d = null;
            } else {
                Utf8 utf82 = this.f49510d;
                this.f49510d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() == 1) {
                this.f49511e = Boolean.valueOf(resolvingDecoder.readBoolean());
                return;
            }
            resolvingDecoder.readNull();
            this.f49511e = null;
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos == 2) {
                        Utf8 utf83 = this.f49509c;
                        this.f49509c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
                    } else if (pos != 3) {
                        if (pos != 4) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49511e = null;
                        } else {
                            this.f49511e = Boolean.valueOf(resolvingDecoder.readBoolean());
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49510d = null;
                    } else {
                        Utf8 utf84 = this.f49510d;
                        this.f49510d = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49508b = null;
                } else {
                    if (this.f49508b == null) {
                        this.f49508b = new ClientHeaderV2();
                    }
                    this.f49508b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49507a = null;
            } else {
                if (this.f49507a == null) {
                    this.f49507a = new C17638l3();
                }
                this.f49507a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49507a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49507a.customEncode(encoder);
        }
        if (this.f49508b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49508b.customEncode(encoder);
        }
        encoder.writeString(this.f49509c);
        if (this.f49510d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49510d);
        }
        if (this.f49511e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeBoolean(this.f49511e.booleanValue());
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49508b;
            }
            if (i == 2) {
                return this.f49509c;
            }
            if (i == 3) {
                return this.f49510d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49511e;
        }
        return this.f49507a;
    }

    public Schema getSchema() {
        return f49503f;
    }

    public SpecificData getSpecificData() {
        return f49504g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49507a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49508b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49509c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49510d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49511e = (Boolean) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49506i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49505h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
