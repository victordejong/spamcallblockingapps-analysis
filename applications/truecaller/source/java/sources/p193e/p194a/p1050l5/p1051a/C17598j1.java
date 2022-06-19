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
/* renamed from: e.a.l5.a.j1 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/j1.class */
public class C17598j1 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49557f;

    /* renamed from: g */
    public static SpecificData f49558g;

    /* renamed from: h */
    public static final DatumWriter<C17598j1> f49559h;

    /* renamed from: i */
    public static final DatumReader<C17598j1> f49560i;
    @Deprecated

    /* renamed from: a */
    public C17638l3 f49561a;
    @Deprecated

    /* renamed from: b */
    public ClientHeaderV2 f49562b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49563c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f49564d;
    @Deprecated

    /* renamed from: e */
    public CharSequence f49565e;

    /* renamed from: e.a.l5.a.j1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/j1$b.class */
    public static class C17600b extends SpecificRecordBuilderBase<C17598j1> implements RecordBuilder<C17598j1> {

        /* renamed from: a */
        public CharSequence f49566a;

        /* renamed from: b */
        public CharSequence f49567b;

        /* renamed from: c */
        public CharSequence f49568c;

        public C17600b(C17599a c17599a) {
            super(C17598j1.f49557f);
        }

        /* renamed from: a */
        public C17598j1 build() {
            try {
                C17598j1 c17598j1 = new C17598j1();
                c17598j1.f49561a = fieldSetFlags()[0] ? null : (C17638l3) defaultValue(fields()[0]);
                c17598j1.f49562b = fieldSetFlags()[1] ? null : (ClientHeaderV2) defaultValue(fields()[1]);
                c17598j1.f49563c = fieldSetFlags()[2] ? this.f49566a : (CharSequence) defaultValue(fields()[2]);
                c17598j1.f49564d = fieldSetFlags()[3] ? this.f49567b : (CharSequence) defaultValue(fields()[3]);
                c17598j1.f49565e = fieldSetFlags()[4] ? this.f49568c : (CharSequence) defaultValue(fields()[4]);
                return c17598j1;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"AppOpenV2\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"commonHeader\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"CommonHeader\",\"fields\":[{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"eventId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"App\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}],\"default\":null},{\"name\":\"user\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"User\",\"fields\":[{\"name\":\"registerId\",\"type\":\"string\"},{\"name\":\"countryCode\",\"type\":\"string\"}]}],\"default\":null},{\"name\":\"os\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"OS\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"clientHeaderV2\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ClientHeaderV2\",\"fields\":[{\"name\":\"sequenceNumber\",\"type\":\"long\"},{\"name\":\"timestamp\",\"type\":\"long\"},{\"name\":\"registerId\",\"type\":[\"null\",\"string\"]},{\"name\":\"clientId\",\"type\":\"string\"},{\"name\":\"app\",\"type\":\"App\"},{\"name\":\"connection\",\"type\":\"string\"},{\"name\":\"operator\",\"type\":\"string\"},{\"name\":\"coordinates\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"Coordinates\",\"fields\":[{\"name\":\"latitude\",\"type\":\"float\"},{\"name\":\"longitude\",\"type\":\"float\"},{\"name\":\"ages\",\"type\":\"long\"}]}],\"default\":null}]}],\"default\":null},{\"name\":\"context\",\"type\":[\"null\",\"string\"],\"default\":null},{\"name\":\"view\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":[\"null\",\"string\"],\"default\":null}]}");
        f49557f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49558g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49558g, m8613i0);
        f49559h = f49558g.createDatumWriter(m8613i0);
        f49560i = f49558g.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49561a = null;
            } else {
                if (this.f49561a == null) {
                    this.f49561a = new C17638l3();
                }
                this.f49561a.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49562b = null;
            } else {
                if (this.f49562b == null) {
                    this.f49562b = new ClientHeaderV2();
                }
                this.f49562b.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49563c = null;
            } else {
                Utf8 utf8 = this.f49563c;
                this.f49563c = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            }
            Utf8 utf82 = this.f49564d;
            this.f49564d = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49565e = null;
                return;
            }
            Utf8 utf83 = this.f49565e;
            Utf8 utf84 = null;
            if (utf83 instanceof Utf8) {
                utf84 = utf83;
            }
            this.f49565e = resolvingDecoder.readString(utf84);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos != 0) {
                if (pos != 1) {
                    if (pos != 2) {
                        if (pos == 3) {
                            Utf8 utf85 = this.f49564d;
                            this.f49564d = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                        } else if (pos != 4) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        } else {
                            if (resolvingDecoder.readIndex() != 1) {
                                resolvingDecoder.readNull();
                                this.f49565e = null;
                            } else {
                                Utf8 utf86 = this.f49565e;
                                this.f49565e = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
                            }
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49563c = null;
                    } else {
                        Utf8 utf87 = this.f49563c;
                        this.f49563c = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49562b = null;
                } else {
                    if (this.f49562b == null) {
                        this.f49562b = new ClientHeaderV2();
                    }
                    this.f49562b.customDecode(resolvingDecoder);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49561a = null;
            } else {
                if (this.f49561a == null) {
                    this.f49561a = new C17638l3();
                }
                this.f49561a.customDecode(resolvingDecoder);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        if (this.f49561a == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49561a.customEncode(encoder);
        }
        if (this.f49562b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49562b.customEncode(encoder);
        }
        if (this.f49563c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49563c);
        }
        encoder.writeString(this.f49564d);
        if (this.f49565e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f49565e);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49562b;
            }
            if (i == 2) {
                return this.f49563c;
            }
            if (i == 3) {
                return this.f49564d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49565e;
        }
        return this.f49561a;
    }

    public Schema getSchema() {
        return f49557f;
    }

    public SpecificData getSpecificData() {
        return f49558g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49561a = (C17638l3) obj;
        } else if (i == 1) {
            this.f49562b = (ClientHeaderV2) obj;
        } else if (i == 2) {
            this.f49563c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49564d = (CharSequence) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49565e = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49560i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49559h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
