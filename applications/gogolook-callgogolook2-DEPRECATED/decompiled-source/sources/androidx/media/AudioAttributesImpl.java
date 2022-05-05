package androidx.media;

import androidx.versionedparcelable.VersionedParcelable;
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImpl.class */
public interface AudioAttributesImpl extends VersionedParcelable {

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImpl$Builder.class */
    public interface Builder {
        AudioAttributesImpl build();

        Builder setContentType(int i);

        Builder setFlags(int i);

        Builder setLegacyStreamType(int i);

        Builder setUsage(int i);
    }

    Object getAudioAttributes();

    int getContentType();

    int getFlags();

    int getLegacyStreamType();

    int getRawLegacyStreamType();

    int getUsage();

    int getVolumeControlStream();
}
