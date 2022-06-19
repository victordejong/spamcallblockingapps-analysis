package com.truecaller.videocallerid.p187ui.recording.customisation_option;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption.class */
public abstract class VideoCustomisationOption {

    /* renamed from: com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$PredefinedVideo */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo.class */
    public static final class PredefinedVideo extends VideoCustomisationOption {

        /* renamed from: a */
        public final String f16041a;

        /* renamed from: b */
        public final String f16042b;

        /* renamed from: c */
        public final String f16043c;

        /* renamed from: d */
        public final long f16044d;

        /* renamed from: e */
        public final long f16045e;

        /* renamed from: f */
        public final VideoState f16046f;

        /* renamed from: g */
        public boolean f16047g;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;", "", "<init>", "(Ljava/lang/String;I)V", "Loading", "Downloaded", "Failed", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
        /* renamed from: com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$PredefinedVideo$VideoState */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState.class */
        public enum VideoState {
            Loading,
            Downloaded,
            Failed
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PredefinedVideo(String str, String str2, String str3, long j, long j2, VideoState videoState, boolean z, int i) {
            super(null);
            z = (i & 64) != 0 ? false : z;
            l.e(str, "id");
            l.e(str2, "videoUrl");
            l.e(str3, "thumbnail");
            l.e(videoState, "videoState");
            this.f16041a = str;
            this.f16042b = str2;
            this.f16043c = str3;
            this.f16044d = j;
            this.f16045e = j2;
            this.f16046f = videoState;
            this.f16047g = z;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PredefinedVideo) && l.a(this.f16041a, ((PredefinedVideo) obj).f16041a);
        }

        public int hashCode() {
            return this.f16041a.hashCode();
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PredefinedVideo(id=");
            m8728C.append(this.f16041a);
            m8728C.append(", videoUrl=");
            m8728C.append(this.f16042b);
            m8728C.append(", thumbnail=");
            m8728C.append(this.f16043c);
            m8728C.append(", sizeBytes=");
            m8728C.append(this.f16044d);
            m8728C.append(", durationMillis=");
            m8728C.append(this.f16045e);
            m8728C.append(", videoState=");
            m8728C.append(this.f16046f);
            m8728C.append(", showNewBadge=");
            return C22128a.m8590o(m8728C, this.f16047g, ")");
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.recording.customisation_option.VideoCustomisationOption$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a.class */
    public static final class C4735a extends VideoCustomisationOption {

        /* renamed from: a */
        public final String f16048a;

        /* renamed from: b */
        public final String f16049b;

        /* renamed from: c */
        public final boolean f16050c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4735a(String str, String str2, boolean z) {
            super(null);
            l.e(str2, "videoUrl");
            this.f16048a = str;
            this.f16049b = str2;
            this.f16050c = z;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4735a)) {
                    return false;
                }
                C4735a c4735a = (C4735a) obj;
                return l.a(this.f16048a, c4735a.f16048a) && l.a(this.f16049b, c4735a.f16049b) && this.f16050c == c4735a.f16050c;
            }
            return true;
        }

        public int hashCode() {
            String str = this.f16048a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f16049b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            boolean z = this.f16050c;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((hashCode * 31) + i) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("SelfieVideo(videoId=");
            m8728C.append(this.f16048a);
            m8728C.append(", videoUrl=");
            m8728C.append(this.f16049b);
            m8728C.append(", mirrorThumbnail=");
            return C22128a.m8590o(m8728C, this.f16050c, ")");
        }
    }

    public VideoCustomisationOption() {
    }

    public VideoCustomisationOption(f fVar) {
    }
}
