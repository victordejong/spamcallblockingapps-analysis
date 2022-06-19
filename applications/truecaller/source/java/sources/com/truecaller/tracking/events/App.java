package com.truecaller.tracking.events;

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
/* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/App.class */
public class App extends SpecificRecordBase implements SpecificRecord {

    /* renamed from: e */
    public static final Schema f15409e;

    /* renamed from: f */
    public static SpecificData f15410f;

    /* renamed from: g */
    public static final DatumWriter<App> f15411g;

    /* renamed from: h */
    public static final DatumReader<App> f15412h;
    @Deprecated

    /* renamed from: a */
    public CharSequence f15413a;
    @Deprecated

    /* renamed from: b */
    public CharSequence f15414b;
    @Deprecated

    /* renamed from: c */
    public CharSequence f15415c;
    @Deprecated

    /* renamed from: d */
    public CharSequence f15416d;

    /* renamed from: com.truecaller.tracking.events.App$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/tracking/events/App$b.class */
    public static class C4637b extends SpecificRecordBuilderBase<App> implements RecordBuilder<App> {

        /* renamed from: a */
        public CharSequence f15417a;

        /* renamed from: b */
        public CharSequence f15418b;

        /* renamed from: c */
        public CharSequence f15419c;

        /* renamed from: d */
        public CharSequence f15420d;

        public C4637b(C4636a c4636a) {
            super(App.f15409e);
        }

        /* renamed from: a */
        public App build() {
            try {
                App app = new App();
                app.f15413a = fieldSetFlags()[0] ? this.f15417a : (CharSequence) defaultValue(fields()[0]);
                app.f15414b = fieldSetFlags()[1] ? this.f15418b : (CharSequence) defaultValue(fields()[1]);
                app.f15415c = fieldSetFlags()[2] ? this.f15419c : (CharSequence) defaultValue(fields()[2]);
                app.f15416d = fieldSetFlags()[3] ? this.f15420d : (CharSequence) defaultValue(fields()[3]);
                return app;
            } catch (AvroMissingFieldException e) {
                throw e;
            } catch (Exception e2) {
                throw new AvroRuntimeException(e2);
            }
        }
    }

    static {
        Schema m8613i0 = C22128a.m8613i0("{\"type\":\"record\",\"name\":\"App\",\"namespace\":\"com.truecaller.tracking.events\",\"fields\":[{\"name\":\"name\",\"type\":\"string\"},{\"name\":\"version\",\"type\":\"string\"},{\"name\":\"buildName\",\"type\":\"string\"},{\"name\":\"storeVersion\",\"type\":[\"null\",\"string\"],\"doc\":\"The store version may be diffrent than the actual app version specially on OEM builds\",\"default\":null}]}");
        f15409e = m8613i0;
        SpecificData specificData = new SpecificData();
        f15410f = specificData;
        new BinaryMessageEncoder(specificData, m8613i0);
        new BinaryMessageDecoder(f15410f, m8613i0);
        f15411g = f15410f.createDatumWriter(m8613i0);
        f15412h = f15410f.createDatumReader(m8613i0);
    }

    public void customDecode(ResolvingDecoder resolvingDecoder) throws IOException {
        Schema.Field[] readFieldOrderIfDiff = resolvingDecoder.readFieldOrderIfDiff();
        if (readFieldOrderIfDiff == null) {
            Utf8 utf8 = this.f15413a;
            this.f15413a = resolvingDecoder.readString(utf8 instanceof Utf8 ? utf8 : null);
            Utf8 utf82 = this.f15414b;
            this.f15414b = resolvingDecoder.readString(utf82 instanceof Utf8 ? utf82 : null);
            Utf8 utf83 = this.f15415c;
            this.f15415c = resolvingDecoder.readString(utf83 instanceof Utf8 ? utf83 : null);
            if (resolvingDecoder.readIndex() != 1) {
                resolvingDecoder.readNull();
                this.f15416d = null;
                return;
            }
            Utf8 utf84 = this.f15416d;
            Utf8 utf85 = null;
            if (utf84 instanceof Utf8) {
                utf85 = utf84;
            }
            this.f15416d = resolvingDecoder.readString(utf85);
            return;
        }
        for (int i = 0; i < 4; i++) {
            int pos = readFieldOrderIfDiff[i].pos();
            if (pos == 0) {
                Utf8 utf86 = this.f15413a;
                this.f15413a = resolvingDecoder.readString(utf86 instanceof Utf8 ? utf86 : null);
            } else if (pos == 1) {
                Utf8 utf87 = this.f15414b;
                this.f15414b = resolvingDecoder.readString(utf87 instanceof Utf8 ? utf87 : null);
            } else if (pos == 2) {
                Utf8 utf88 = this.f15415c;
                this.f15415c = resolvingDecoder.readString(utf88 instanceof Utf8 ? utf88 : null);
            } else if (pos != 3) {
                throw new IOException("Corrupt ResolvingDecoder.");
            } else {
                if (resolvingDecoder.readIndex() != 1) {
                    resolvingDecoder.readNull();
                    this.f15416d = null;
                } else {
                    Utf8 utf89 = this.f15416d;
                    this.f15416d = resolvingDecoder.readString(utf89 instanceof Utf8 ? utf89 : null);
                }
            }
        }
    }

    public void customEncode(Encoder encoder) throws IOException {
        encoder.writeString(this.f15413a);
        encoder.writeString(this.f15414b);
        encoder.writeString(this.f15415c);
        if (this.f15416d == null) {
            encoder.writeIndex(0);
            encoder.writeNull();
            return;
        }
        encoder.writeIndex(1);
        encoder.writeString(this.f15416d);
    }

    public Object get(int i) {
        if (i != 0) {
            if (i == 1) {
                return this.f15414b;
            }
            if (i == 2) {
                return this.f15415c;
            }
            if (i != 3) {
                throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
            }
            return this.f15416d;
        }
        return this.f15413a;
    }

    public Schema getSchema() {
        return f15409e;
    }

    public SpecificData getSpecificData() {
        return f15410f;
    }

    public boolean hasCustomCoders() {
        return true;
    }

    public void put(int i, Object obj) {
        if (i == 0) {
            this.f15413a = (CharSequence) obj;
        } else if (i == 1) {
            this.f15414b = (CharSequence) obj;
        } else if (i == 2) {
            this.f15415c = (CharSequence) obj;
        } else if (i != 3) {
            throw new IndexOutOfBoundsException(C22128a.m8611i2("Invalid index: ", i));
        } else {
            this.f15416d = (CharSequence) obj;
        }
    }

    public void readExternal(ObjectInput objectInput) throws IOException {
        f15412h.read(this, SpecificData.getDecoder(objectInput));
    }

    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        f15411g.write(this, SpecificData.getEncoder(objectOutput));
    }
}
