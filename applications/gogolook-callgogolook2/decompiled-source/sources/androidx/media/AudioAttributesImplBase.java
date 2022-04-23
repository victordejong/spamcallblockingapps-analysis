package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase.class */
public class AudioAttributesImplBase implements AudioAttributesImpl {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mContentType;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mFlags;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mLegacyStream;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int mUsage;

    /* loaded from: classes-dex2jar.jar:androidx/media/AudioAttributesImplBase$Builder.class */
    public static class Builder implements AudioAttributesImpl.Builder {
        public int mContentType;
        public int mFlags;
        public int mLegacyStream;
        public int mUsage;

        public Builder() {
            this.mUsage = 0;
            this.mContentType = 0;
            this.mFlags = 0;
            this.mLegacyStream = -1;
        }

        public Builder(AudioAttributesCompat audioAttributesCompat) {
            this.mUsage = 0;
            this.mContentType = 0;
            this.mFlags = 0;
            this.mLegacyStream = -1;
            this.mUsage = audioAttributesCompat.getUsage();
            this.mContentType = audioAttributesCompat.getContentType();
            this.mFlags = audioAttributesCompat.getFlags();
            this.mLegacyStream = audioAttributesCompat.getRawLegacyStreamType();
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public AudioAttributesImpl build() {
            return new AudioAttributesImplBase(this.mContentType, this.mFlags, this.mUsage, this.mLegacyStream);
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public Builder setContentType(int i) {
            if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
                this.mContentType = i;
            } else {
                this.mUsage = 0;
            }
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public Builder setFlags(int i) {
            this.mFlags = (i & AudioAttributesCompat.FLAG_ALL) | this.mFlags;
            return this;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public Builder setLegacyStreamType(int i) {
            if (i != 10) {
                this.mLegacyStream = i;
                return this;
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public Builder setUsage(int i) {
            switch (i) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    this.mUsage = i;
                    break;
                case 16:
                    this.mUsage = 12;
                    break;
                default:
                    this.mUsage = 0;
                    break;
            }
            return this;
        }
    }

    public AudioAttributesImplBase() {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
    }

    public AudioAttributesImplBase(int i, int i2, int i3, int i4) {
        this.mUsage = 0;
        this.mContentType = 0;
        this.mFlags = 0;
        this.mLegacyStream = -1;
        this.mContentType = i;
        this.mFlags = i2;
        this.mUsage = i3;
        this.mLegacyStream = i4;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        boolean z = false;
        if (this.mContentType == audioAttributesImplBase.getContentType()) {
            z = false;
            if (this.mFlags == audioAttributesImplBase.getFlags()) {
                z = false;
                if (this.mUsage == audioAttributesImplBase.getUsage()) {
                    z = false;
                    if (this.mLegacyStream == audioAttributesImplBase.mLegacyStream) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    @Override // androidx.media.AudioAttributesImpl
    public Object getAudioAttributes() {
        return null;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getContentType() {
        return this.mContentType;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getFlags() {
        int i;
        int i2 = this.mFlags;
        int legacyStreamType = getLegacyStreamType();
        if (legacyStreamType == 6) {
            i = i2 | 4;
        } else {
            i = i2;
            if (legacyStreamType == 7) {
                i = i2 | 1;
            }
        }
        return i & AudioAttributesCompat.FLAG_ALL_PUBLIC;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i = this.mLegacyStream;
        return i != -1 ? i : AudioAttributesCompat.toVolumeStreamType(false, this.mFlags, this.mUsage);
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getRawLegacyStreamType() {
        return this.mLegacyStream;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getUsage() {
        return this.mUsage;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getVolumeControlStream() {
        return AudioAttributesCompat.toVolumeStreamType(true, this.mFlags, this.mUsage);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.mContentType), Integer.valueOf(this.mFlags), Integer.valueOf(this.mUsage), Integer.valueOf(this.mLegacyStream)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.mLegacyStream != -1) {
            sb.append(" stream=");
            sb.append(this.mLegacyStream);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.usageToString(this.mUsage));
        sb.append(" content=");
        sb.append(this.mContentType);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.mFlags).toUpperCase());
        return sb.toString();
    }
}
