package com.truecaller.videocallerid.utils;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B/\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004JB\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001c\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001d\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001a\u001a\u0004\b\u001e\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;", "", "", "component1", "()J", "component2", "component3", "component4", "component5", "pacsCallWithVcidInterval", "pacsCallWithoutVcidInterval", "pacsExpandInterval", "facsWithVcidInterval", "facsWithoutVcidInterval", "copy", "(JJJJJ)Lcom/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getPacsCallWithoutVcidInterval", "getFacsWithVcidInterval", "getPacsExpandInterval", "getPacsCallWithVcidInterval", "getFacsWithoutVcidInterval", "<init>", "(JJJJJ)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/VideoCallerIdOnboardingIntervalDays.class */
public final class VideoCallerIdOnboardingIntervalDays {
    private final long facsWithVcidInterval;
    private final long facsWithoutVcidInterval;
    private final long pacsCallWithVcidInterval;
    private final long pacsCallWithoutVcidInterval;
    private final long pacsExpandInterval;

    public VideoCallerIdOnboardingIntervalDays(long j, long j2, long j3, long j4, long j5) {
        this.pacsCallWithVcidInterval = j;
        this.pacsCallWithoutVcidInterval = j2;
        this.pacsExpandInterval = j3;
        this.facsWithVcidInterval = j4;
        this.facsWithoutVcidInterval = j5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [com.truecaller.videocallerid.utils.VideoCallerIdOnboardingIntervalDays] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    public static /* synthetic */ VideoCallerIdOnboardingIntervalDays copy$default(VideoCallerIdOnboardingIntervalDays videoCallerIdOnboardingIntervalDays, long j, long j2, long j3, long j4, long j5, int i, Object obj) {
        ?? r13 = j;
        if ((i & 1) != 0) {
            r13 = ((VideoCallerIdOnboardingIntervalDays) videoCallerIdOnboardingIntervalDays).pacsCallWithVcidInterval;
        }
        ?? r15 = j2;
        if ((i & 2) != 0) {
            r15 = ((VideoCallerIdOnboardingIntervalDays) videoCallerIdOnboardingIntervalDays).pacsCallWithoutVcidInterval;
        }
        ?? r17 = j3;
        if ((i & 4) != 0) {
            r17 = ((VideoCallerIdOnboardingIntervalDays) videoCallerIdOnboardingIntervalDays).pacsExpandInterval;
        }
        ?? r19 = j4;
        if ((i & 8) != 0) {
            r19 = ((VideoCallerIdOnboardingIntervalDays) videoCallerIdOnboardingIntervalDays).facsWithVcidInterval;
        }
        ?? r21 = j5;
        if ((i & 16) != 0) {
            r21 = ((VideoCallerIdOnboardingIntervalDays) videoCallerIdOnboardingIntervalDays).facsWithoutVcidInterval;
        }
        return videoCallerIdOnboardingIntervalDays.copy(r13, r15, r17, r19, r21);
    }

    public final long component1() {
        return this.pacsCallWithVcidInterval;
    }

    public final long component2() {
        return this.pacsCallWithoutVcidInterval;
    }

    public final long component3() {
        return this.pacsExpandInterval;
    }

    public final long component4() {
        return this.facsWithVcidInterval;
    }

    public final long component5() {
        return this.facsWithoutVcidInterval;
    }

    public final VideoCallerIdOnboardingIntervalDays copy(long j, long j2, long j3, long j4, long j5) {
        return new VideoCallerIdOnboardingIntervalDays(j, j2, j3, j4, j5);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VideoCallerIdOnboardingIntervalDays)) {
                return false;
            }
            VideoCallerIdOnboardingIntervalDays videoCallerIdOnboardingIntervalDays = (VideoCallerIdOnboardingIntervalDays) obj;
            return this.pacsCallWithVcidInterval == videoCallerIdOnboardingIntervalDays.pacsCallWithVcidInterval && this.pacsCallWithoutVcidInterval == videoCallerIdOnboardingIntervalDays.pacsCallWithoutVcidInterval && this.pacsExpandInterval == videoCallerIdOnboardingIntervalDays.pacsExpandInterval && this.facsWithVcidInterval == videoCallerIdOnboardingIntervalDays.facsWithVcidInterval && this.facsWithoutVcidInterval == videoCallerIdOnboardingIntervalDays.facsWithoutVcidInterval;
        }
        return true;
    }

    public final long getFacsWithVcidInterval() {
        return this.facsWithVcidInterval;
    }

    public final long getFacsWithoutVcidInterval() {
        return this.facsWithoutVcidInterval;
    }

    public final long getPacsCallWithVcidInterval() {
        return this.pacsCallWithVcidInterval;
    }

    public final long getPacsCallWithoutVcidInterval() {
        return this.pacsCallWithoutVcidInterval;
    }

    public final long getPacsExpandInterval() {
        return this.pacsExpandInterval;
    }

    public int hashCode() {
        return (((((((C4876d.m34274a(this.pacsCallWithVcidInterval) * 31) + C4876d.m34274a(this.pacsCallWithoutVcidInterval)) * 31) + C4876d.m34274a(this.pacsExpandInterval)) * 31) + C4876d.m34274a(this.facsWithVcidInterval)) * 31) + C4876d.m34274a(this.facsWithoutVcidInterval);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoCallerIdOnboardingIntervalDays(pacsCallWithVcidInterval=");
        m8728C.append(this.pacsCallWithVcidInterval);
        m8728C.append(", pacsCallWithoutVcidInterval=");
        m8728C.append(this.pacsCallWithoutVcidInterval);
        m8728C.append(", pacsExpandInterval=");
        m8728C.append(this.pacsExpandInterval);
        m8728C.append(", facsWithVcidInterval=");
        m8728C.append(this.facsWithVcidInterval);
        m8728C.append(", facsWithoutVcidInterval=");
        return C22128a.m8693K2(m8728C, this.facsWithoutVcidInterval, ")");
    }
}
