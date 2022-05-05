package androidx.core.provider;

import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.List;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:androidx/core/provider/FontRequest.class */
public final class FontRequest {

    /* renamed from: a */
    private final String f3095a;

    /* renamed from: b */
    private final String f3096b;

    /* renamed from: c */
    private final String f3097c;

    /* renamed from: d */
    private final List<List<byte[]>> f3098d;

    /* renamed from: e */
    private final int f3099e = 0;

    /* renamed from: f */
    private final String f3100f;

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        Preconditions.m19337d(str);
        this.f3095a = str;
        Preconditions.m19337d(str2);
        this.f3096b = str2;
        Preconditions.m19337d(str3);
        this.f3097c = str3;
        Preconditions.m19337d(list);
        this.f3098d = list;
        this.f3100f = this.f3095a + HelpFormatter.DEFAULT_OPT_PREFIX + this.f3096b + HelpFormatter.DEFAULT_OPT_PREFIX + this.f3097c;
    }

    @Nullable
    /* renamed from: a */
    public List<List<byte[]>> m19435a() {
        return this.f3098d;
    }

    @ArrayRes
    /* renamed from: b */
    public int m19434b() {
        return this.f3099e;
    }

    @RestrictTo
    /* renamed from: c */
    public String m19433c() {
        return this.f3100f;
    }

    @NonNull
    /* renamed from: d */
    public String m19432d() {
        return this.f3095a;
    }

    @NonNull
    /* renamed from: e */
    public String m19431e() {
        return this.f3096b;
    }

    @NonNull
    /* renamed from: f */
    public String m19430f() {
        return this.f3097c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f3095a + ", mProviderPackage: " + this.f3096b + ", mQuery: " + this.f3097c + ", mCertificates:");
        for (int i = 0; i < this.f3098d.size(); i++) {
            sb.append(" [");
            List<byte[]> list = this.f3098d.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.f3099e);
        return sb.toString();
    }
}
