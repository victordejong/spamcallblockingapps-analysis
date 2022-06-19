package okhttp3.internal.publicsuffix;

import kotlin.Metadata;
import kotlin.jvm.internal.C18529u;
@Metadata(m4300bv = {1, 0, 3}, m4297k = 3, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1.class */
final /* synthetic */ class PublicSuffixDatabase$findMatchingRule$1 extends C18529u {
    PublicSuffixDatabase$findMatchingRule$1(PublicSuffixDatabase publicSuffixDatabase) {
        super(publicSuffixDatabase, PublicSuffixDatabase.class, "publicSuffixListBytes", "getPublicSuffixListBytes()[B", 0);
    }

    @Override // kotlin.jvm.internal.C18529u, kotlin.reflect.AbstractC20105l
    public final Object get() {
        return PublicSuffixDatabase.access$getPublicSuffixListBytes$p((PublicSuffixDatabase) this.receiver);
    }

    @Override // kotlin.jvm.internal.C18529u
    public final void set(Object obj) {
        ((PublicSuffixDatabase) this.receiver).publicSuffixListBytes = (byte[]) obj;
    }
}
