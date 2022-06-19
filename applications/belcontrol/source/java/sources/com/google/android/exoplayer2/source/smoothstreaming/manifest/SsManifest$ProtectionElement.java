package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement.class */
public class SsManifest$ProtectionElement {
    public final byte[] data;
    public final UUID uuid;

    public SsManifest$ProtectionElement(UUID uuid, byte[] bArr) {
        this.uuid = uuid;
        this.data = bArr;
    }
}
