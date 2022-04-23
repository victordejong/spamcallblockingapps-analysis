package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:okhttp3/FormBody$Builder.class */
public final class FormBody$Builder {
    private final Charset charset;
    private final List<String> names;
    private final List<String> values;

    public FormBody$Builder() {
        this(null);
    }

    public FormBody$Builder(Charset charset) {
        this.names = new ArrayList();
        this.values = new ArrayList();
        this.charset = charset;
    }

    public FormBody$Builder add(String str, String str2) {
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

    public FormBody$Builder addEncoded(String str, String str2) {
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
