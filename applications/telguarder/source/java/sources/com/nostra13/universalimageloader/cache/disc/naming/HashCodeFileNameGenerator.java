package com.nostra13.universalimageloader.cache.disc.naming;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator.class */
public class HashCodeFileNameGenerator implements FileNameGenerator {
    @Override // com.nostra13.universalimageloader.cache.disc.naming.FileNameGenerator
    public String generate(String str) {
        return String.valueOf(str.hashCode());
    }
}
