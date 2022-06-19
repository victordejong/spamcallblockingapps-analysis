package io.agora.rtc.mediaio;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/MediaIO.class */
public class MediaIO {

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/MediaIO$BufferType.class */
    public enum BufferType {
        BYTE_BUFFER(1),
        BYTE_ARRAY(2),
        TEXTURE(3);
        
        public final int value;

        BufferType(int i) {
            this.value = i;
        }

        public int intValue() {
            return this.value;
        }
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/MediaIO$CaptureType.class */
    public enum CaptureType {
        UNKNOWN(0),
        CAMERA(1),
        SCREEN(2);
        
        public final int value;

        CaptureType(int i) {
            this.value = i;
        }

        public int intValue() {
            return this.value;
        }
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/MediaIO$ContentHint.class */
    public enum ContentHint {
        NONE(0),
        MOTION(1),
        DETAIL(2);
        
        public final int value;

        ContentHint(int i) {
            this.value = i;
        }

        public int intValue() {
            return this.value;
        }
    }

    /* loaded from: classes16-dex2jar.jar:io/agora/rtc/mediaio/MediaIO$PixelFormat.class */
    public enum PixelFormat {
        I420(1),
        NV21(3),
        RGBA(4),
        TEXTURE_2D(10),
        TEXTURE_OES(11);
        
        public final int value;

        PixelFormat(int i) {
            this.value = i;
        }

        public int intValue() {
            return this.value;
        }
    }
}
