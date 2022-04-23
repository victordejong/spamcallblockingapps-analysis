package com.google.android.exoplayer2.drm;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
public final class DefaultDrmSessionManager$MissingSchemeDataException extends Exception {
    public DefaultDrmSessionManager$MissingSchemeDataException(UUID uuid) {
        super("Media does not support uuid: " + uuid);
    }
}
