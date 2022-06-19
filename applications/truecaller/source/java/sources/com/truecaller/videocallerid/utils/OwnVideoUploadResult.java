package com.truecaller.videocallerid.utils;

import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p947k.p969c.C16068r1;
import s1.z.c.f;
import s1.z.c.l;
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/OwnVideoUploadResult.class */
public abstract class OwnVideoUploadResult {

    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed.class */
    public static final class Failed extends OwnVideoUploadResult {

        /* renamed from: a */
        public final Reason f16178a;

        /* renamed from: b */
        public final String f16179b;

        /* renamed from: c */
        public final C16068r1 f16180c;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;", "", "<init>", "(Ljava/lang/String;I)V", "READ_FILE_FAILED", "FETCH_UPLOAD_LINKS_FAILED", "UPLOAD_FAILED", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason.class */
        public enum Reason {
            READ_FILE_FAILED,
            FETCH_UPLOAD_LINKS_FAILED,
            UPLOAD_FAILED
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Failed(Reason reason, String str, C16068r1 c16068r1) {
            super(null);
            l.e(reason, "reason");
            this.f16178a = reason;
            this.f16179b = str;
            this.f16180c = c16068r1;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Failed)) {
                    return false;
                }
                Failed failed = (Failed) obj;
                return l.a(this.f16178a, failed.f16178a) && l.a(this.f16179b, failed.f16179b) && l.a(this.f16180c, failed.f16180c);
            }
            return true;
        }

        public int hashCode() {
            Reason reason = this.f16178a;
            int i = 0;
            int hashCode = reason != null ? reason.hashCode() : 0;
            String str = this.f16179b;
            int hashCode2 = str != null ? str.hashCode() : 0;
            C16068r1 c16068r1 = this.f16180c;
            if (c16068r1 != null) {
                i = c16068r1.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Failed(reason=");
            m8728C.append(this.f16178a);
            m8728C.append(", videoId=");
            m8728C.append(this.f16179b);
            m8728C.append(", fileInfo=");
            m8728C.append(this.f16180c);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: com.truecaller.videocallerid.utils.OwnVideoUploadResult$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/OwnVideoUploadResult$a.class */
    public static final class C4769a extends OwnVideoUploadResult {

        /* renamed from: a */
        public final String f16181a;

        /* renamed from: b */
        public final C16068r1 f16182b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4769a(String str, C16068r1 c16068r1) {
            super(null);
            l.e(str, "videoId");
            l.e(c16068r1, "fileInfo");
            this.f16181a = str;
            this.f16182b = c16068r1;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C4769a)) {
                    return false;
                }
                C4769a c4769a = (C4769a) obj;
                return l.a(this.f16181a, c4769a.f16181a) && l.a(this.f16182b, c4769a.f16182b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f16181a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            C16068r1 c16068r1 = this.f16182b;
            if (c16068r1 != null) {
                i = c16068r1.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Successful(videoId=");
            m8728C.append(this.f16181a);
            m8728C.append(", fileInfo=");
            m8728C.append(this.f16182b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public OwnVideoUploadResult() {
    }

    public OwnVideoUploadResult(f fVar) {
    }
}
