package p193e.p194a.p1050l5.p1051a;

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
/* renamed from: e.a.l5.a.e4 */
/* loaded from: classes15-dex2jar.jar:e/a/l5/a/e4.class */
public class C17517e4 extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: f */
    public static final Schema f49173f;

    /* renamed from: g */
    public static SpecificData f49174g;

    /* renamed from: h */
    public static final DatumWriter<C17517e4> f49175h;

    /* renamed from: i */
    public static final DatumReader<C17517e4> f49176i;
    @Deprecated

    /* renamed from: a */
    public CharSequence f49177a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f49178b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f49179c;
    @Deprecated

    /* renamed from: d */
    public C17589i4 f49180d;
    @Deprecated

    /* renamed from: e */
    public C17654m3 f49181e;

    /* renamed from: e.a.l5.a.e4$b */
    /* loaded from: classes15-dex2jar.jar:e/a/l5/a/e4$b.class */
    public static class C17519b extends SpecificRecordBuilderBase<C17517e4> implements RecordBuilder<C17517e4> {

        /* renamed from: a */
        public CharSequence f49182a;

        /* renamed from: b */
        public CharSequence f49183b;

        /* renamed from: c */
        public CharSequence f49184c;

        /* renamed from: d */
        public C17589i4 f49185d;

        /* renamed from: e */
        public C17654m3 f49186e;

        public C17519b(C17518a c17518a) {
            super(C17517e4.f49173f);
        }

        /* renamed from: a */
        public C17517e4 build() {
            try {
                C17517e4 c17517e4 = new C17517e4();
                c17517e4.f49177a = fieldSetFlags()[0] ? this.f49182a : (CharSequence) defaultValue(fields()[0]);
                c17517e4.f49178b = fieldSetFlags()[1] ? this.f49183b : (CharSequence) defaultValue(fields()[1]);
                c17517e4.f49179c = fieldSetFlags()[2] ? this.f49184c : (CharSequence) defaultValue(fields()[2]);
                c17517e4.f49180d = fieldSetFlags()[3] ? this.f49185d : (C17589i4) defaultValue(fields()[3]);
                c17517e4.f49181e = fieldSetFlags()[4] ? this.f49186e : (C17654m3) defaultValue(fields()[4]);
                return c17517e4;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }

        /* renamed from: b */
        public C17519b m15985b(C17654m3 c17654m3) {
            validate(fields()[4], c17654m3);
            this.f49186e = c17654m3;
            fieldSetFlags()[4] = true;
            return this;
        }

        /* renamed from: c */
        public C17519b m15984c(CharSequence charSequence) {
            validate(fields()[1], charSequence);
            this.f49183b = charSequence;
            fieldSetFlags()[1] = true;
            return this;
        }

        /* renamed from: d */
        public C17519b m15983d(CharSequence charSequence) {
            validate(fields()[2], charSequence);
            this.f49184c = charSequence;
            fieldSetFlags()[2] = true;
            return this;
        }

        /* renamed from: e */
        public C17519b m15982e(C17589i4 c17589i4) {
            validate(fields()[3], c17589i4);
            this.f49185d = c17589i4;
            fieldSetFlags()[3] = true;
            return this;
        }

        /* renamed from: f */
        public C17519b m15981f(CharSequence charSequence) {
            validate(fields()[0], charSequence);
            this.f49182a = charSequence;
            fieldSetFlags()[0] = true;
            return this;
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"SearchEntity\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"term\",\"type\":\"string\"},{\"name\":\"noServerSearchReason\",\"type\":[\"null\",\"string\"]},{\"name\":\"normalizedPhoneNumber\",\"type\":[\"null\",\"string\"]},{\"name\":\"tags\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"TagsServed\",\"fields\":[{\"name\":\"serverTagsReceived\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"manualTagsAvailable\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null},{\"name\":\"shownTags\",\"type\":[\"null\",{\"type\":\"array\",\"items\":\"string\"}],\"default\":null}]}]},{\"name\":\"contactInfo\",\"type\":[\"null\",{\"type\":\"record\",\"name\":\"ContactInfo\",\"fields\":[{\"name\":\"inPhonebook\",\"type\":\"boolean\"},{\"name\":\"hasName\",\"type\":\"boolean\"},{\"name\":\"inUserSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inTopSpammerList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"inUserWhiteList\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spammerFromServer\",\"type\":[\"null\",\"boolean\"]},{\"name\":\"spamScore\",\"type\":[\"null\",\"int\"]},{\"name\":\"hasPushData\",\"type\":[\"null\",\"boolean\"],\"default\":null},{\"name\":\"spamVersion\",\"type\":[\"null\",\"int\"],\"default\":null}]}]}]}");
        f49173f = m8613i0;
        SpecificData specificData = new SpecificData();
        f49174g = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f49174g, m8613i0);
        f49175h = f49174g.createDatumWriter(m8613i0);
        f49176i = f49174g.createDatumReader(m8613i0);
    }

    /* renamed from: a */
    public static C17519b m15987a() {
        return new C17519b(null);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f49177a;
            this.f49177a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49178b = null;
            } else {
                Utf8 utf82 = this.f49178b;
                this.f49178b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49179c = null;
            } else {
                Utf8 utf83 = this.f49179c;
                this.f49179c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49180d = null;
            } else {
                if (this.f49180d == null) {
                    this.f49180d = new C17589i4();
                }
                this.f49180d.customDecode(resolvingDecoder);
            }
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49181e = null;
                return;
            }
            if (this.f49181e == null) {
                this.f49181e = new C17654m3();
            }
            this.f49181e.customDecode(resolvingDecoder);
            return;
        }
        for (int i = 0; i < 5; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf84 = this.f49177a;
                this.f49177a = resolvingDecoder.readString(utf84 instanceof Utf8 ? utf84 : null);
            } else if (pos != 1) {
                if (pos != 2) {
                    if (pos != 3) {
                        if (pos != 4) {
                            throw new IOException("Corrupt ResolvingDecoder.");
                        }
                        if (resolvingDecoder.readIndex() != 1) {
                            resolvingDecoder.readNull();
                            this.f49181e = null;
                        } else {
                            if (this.f49181e == null) {
                                this.f49181e = new C17654m3();
                            }
                            this.f49181e.customDecode(resolvingDecoder);
                        }
                    } else if (resolvingDecoder.readIndex() != 1) {
                        resolvingDecoder.readNull();
                        this.f49180d = null;
                    } else {
                        if (this.f49180d == null) {
                            this.f49180d = new C17589i4();
                        }
                        this.f49180d.customDecode(resolvingDecoder);
                    }
                } else if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f49179c = null;
                } else {
                    Utf8 utf85 = this.f49179c;
                    this.f49179c = resolvingDecoder.readString(utf85 instanceof Utf8 ? utf85 : null);
                }
            } else if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f49178b = null;
            } else {
                Utf8 utf86 = this.f49178b;
                this.f49178b = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f49177a);
        if (this.f49178b == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49178b);
        }
        if (this.f49179c == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            encoder.writeString(this.f49179c);
        }
        if (this.f49180d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
        } else {
            encoder.writeIndex(1);
            this.f49180d.customEncode(encoder);
        }
        if (this.f49181e == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        this.f49181e.customEncode(encoder);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f49178b;
            }
            if (i == 2) {
                return this.f49179c;
            }
            if (i == 3) {
                return this.f49180d;
            }
            if (i != 4) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f49181e;
        }
        return this.f49177a;
    }

    public Schema getSchema() {
        return f49173f;
    }

    public SpecificData getSpecificData() {
        return f49174g;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f49177a = (CharSequence) obj;
        } else if (i == 1) {
            this.f49178b = (CharSequence) obj;
        } else if (i == 2) {
            this.f49179c = (CharSequence) obj;
        } else if (i == 3) {
            this.f49180d = (C17589i4) obj;
        } else if (i != 4) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f49181e = (C17654m3) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f49176i.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f49175h.write(this, SpecificData.getEncoder(objectOutput));
    }
}
