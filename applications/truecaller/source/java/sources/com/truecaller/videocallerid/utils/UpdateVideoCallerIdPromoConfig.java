package com.truecaller.videocallerid.utils;

import androidx.annotation.Keep;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0087\b\u0018��2\u00020\u0001B5\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\b¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJH\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\u000e\b\u0002\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\bHÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0004J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00172\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001a\u001a\u0004\b\u001b\u0010\u0004R\u001f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b\u001d\u0010\nR\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001e\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001f\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b \u0010\u0004¨\u0006#"}, d2 = {"Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;", "", "", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "", "component5", "()Ljava/util/List;", "imageDark", "imageLight", "subtitleText", "titleText", "videoIds", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getTitleText", "Ljava/util/List;", "getVideoIds", "getSubtitleText", "getImageDark", "getImageLight", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/UpdateVideoCallerIdPromoConfig.class */
public final class UpdateVideoCallerIdPromoConfig {
    private final String imageDark;
    private final String imageLight;
    private final String subtitleText;
    private final String titleText;
    private final List<String> videoIds;

    public UpdateVideoCallerIdPromoConfig(String str, String str2, String str3, String str4, List<String> list) {
        l.e(str, "imageDark");
        l.e(str2, "imageLight");
        l.e(str3, "subtitleText");
        l.e(str4, "titleText");
        l.e(list, "videoIds");
        this.imageDark = str;
        this.imageLight = str2;
        this.subtitleText = str3;
        this.titleText = str4;
        this.videoIds = list;
    }

    public static /* synthetic */ UpdateVideoCallerIdPromoConfig copy$default(UpdateVideoCallerIdPromoConfig updateVideoCallerIdPromoConfig, String str, String str2, String str3, String str4, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = updateVideoCallerIdPromoConfig.imageDark;
        }
        if ((i & 2) != 0) {
            str2 = updateVideoCallerIdPromoConfig.imageLight;
        }
        if ((i & 4) != 0) {
            str3 = updateVideoCallerIdPromoConfig.subtitleText;
        }
        if ((i & 8) != 0) {
            str4 = updateVideoCallerIdPromoConfig.titleText;
        }
        if ((i & 16) != 0) {
            list = updateVideoCallerIdPromoConfig.videoIds;
        }
        return updateVideoCallerIdPromoConfig.copy(str, str2, str3, str4, list);
    }

    public final String component1() {
        return this.imageDark;
    }

    public final String component2() {
        return this.imageLight;
    }

    public final String component3() {
        return this.subtitleText;
    }

    public final String component4() {
        return this.titleText;
    }

    public final List<String> component5() {
        return this.videoIds;
    }

    public final UpdateVideoCallerIdPromoConfig copy(String str, String str2, String str3, String str4, List<String> list) {
        l.e(str, "imageDark");
        l.e(str2, "imageLight");
        l.e(str3, "subtitleText");
        l.e(str4, "titleText");
        l.e(list, "videoIds");
        return new UpdateVideoCallerIdPromoConfig(str, str2, str3, str4, list);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof UpdateVideoCallerIdPromoConfig)) {
                return false;
            }
            UpdateVideoCallerIdPromoConfig updateVideoCallerIdPromoConfig = (UpdateVideoCallerIdPromoConfig) obj;
            return l.a(this.imageDark, updateVideoCallerIdPromoConfig.imageDark) && l.a(this.imageLight, updateVideoCallerIdPromoConfig.imageLight) && l.a(this.subtitleText, updateVideoCallerIdPromoConfig.subtitleText) && l.a(this.titleText, updateVideoCallerIdPromoConfig.titleText) && l.a(this.videoIds, updateVideoCallerIdPromoConfig.videoIds);
        }
        return true;
    }

    public final String getImageDark() {
        return this.imageDark;
    }

    public final String getImageLight() {
        return this.imageLight;
    }

    public final String getSubtitleText() {
        return this.subtitleText;
    }

    public final String getTitleText() {
        return this.titleText;
    }

    public final List<String> getVideoIds() {
        return this.videoIds;
    }

    public int hashCode() {
        String str = this.imageDark;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.imageLight;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.subtitleText;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.titleText;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        List<String> list = this.videoIds;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("UpdateVideoCallerIdPromoConfig(imageDark=");
        m8728C.append(this.imageDark);
        m8728C.append(", imageLight=");
        m8728C.append(this.imageLight);
        m8728C.append(", subtitleText=");
        m8728C.append(this.subtitleText);
        m8728C.append(", titleText=");
        m8728C.append(this.titleText);
        m8728C.append(", videoIds=");
        return C22128a.m8602l(m8728C, this.videoIds, ")");
    }
}
