package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.Versioned;
import com.fasterxml.jackson.core.util.VersionUtil;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/PackageVersion.class */
public final class PackageVersion implements Versioned {
    public static final Version VERSION = VersionUtil.parseVersion("2.12.3", "com.fasterxml.jackson.core", "jackson-databind");

    @Override // com.fasterxml.jackson.core.Versioned
    public final Version version() {
        return VERSION;
    }
}
