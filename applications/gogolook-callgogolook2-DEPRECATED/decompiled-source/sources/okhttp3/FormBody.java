package okhttp3;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import p645m.AbstractC15173d;
import p645m.C15170c;
/* loaded from: classes3-dex2jar.jar:okhttp3/FormBody.class */
public final class FormBody extends RequestBody {
    public static final MediaType CONTENT_TYPE = MediaType.get("application/x-www-form-urlencoded");
    public final List<String> encodedNames;
    public final List<String> encodedValues;

    /* loaded from: classes3-dex2jar.jar:okhttp3/FormBody$Builder.class */
    public static final class Builder {
        public final Charset charset;
        public final List<String> names;
        public final List<String> values;

        public Builder() {
            this(null);
        }

        public Builder(Charset charset) {
            this.names = new ArrayList();
            this.values = new ArrayList();
            this.charset = charset;
        }

        public Builder add(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str2 != null) {
                this.names.add(HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.charset));
                this.values.add(HttpUrl.canonicalize(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, false, true, true, this.charset));
                return this;
            } else {
                throw new NullPointerException("value == null");
            }
        }

        public Builder addEncoded(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            } else if (str2 != null) {
                this.names.add(HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.charset));
                this.values.add(HttpUrl.canonicalize(str2, " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, false, true, true, this.charset));
                return this;
            } else {
                throw new NullPointerException("value == null");
            }
        }

        public FormBody build() {
            return new FormBody(this.names, this.values);
        }
    }

    public FormBody(List<String> list, List<String> list2) {
        this.encodedNames = Util.immutableList(list);
        this.encodedValues = Util.immutableList(list2);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    public final long writeOrCountBytes(@Nullable AbstractC15173d dVar, boolean z) {
        long j;
        C15170c cVar = z ? new C15170c() : dVar.mo296q();
        int size = this.encodedNames.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                cVar.writeByte(38);
            }
            cVar.mo309e(this.encodedNames.get(i));
            cVar.writeByte(61);
            cVar.mo309e(this.encodedValues.get(i));
        }
        if (z) {
            j = cVar.m348i();
            cVar.m355d();
        } else {
            j = 0;
        }
        return j;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(AbstractC15173d dVar) throws IOException {
        writeOrCountBytes(dVar, false);
    }
}
