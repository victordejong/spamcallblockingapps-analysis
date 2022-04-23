package okhttp3.internal.publicsuffix;

import kotlin.Metadata;
import kotlin.jvm.internal.u;
@Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1.class */
final /* synthetic */ class PublicSuffixDatabase$findMatchingRule$1 extends u {
    PublicSuffixDatabase$findMatchingRule$1(PublicSuffixDatabase publicSuffixDatabase) {
        super(publicSuffixDatabase, PublicSuffixDatabase.class, "publicSuffixListBytes", "getPublicSuffixListBytes()[B", 0);
    }

    @Override // kotlin.jvm.internal.u, kotlin.reflect.l
    public final Object get() {
        return PublicSuffixDatabase.access$getPublicSuffixListBytes$p((PublicSuffixDatabase) this.receiver);
    }

    @Override // kotlin.jvm.internal.u
    public final void set(Object obj) {
        ((PublicSuffixDatabase) this.receiver).publicSuffixListBytes = (byte[]) obj;
    }
}
