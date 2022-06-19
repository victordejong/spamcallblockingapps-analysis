package com.truecaller.bizmon.newBusiness.workers;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018�� \t2\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/bizmon/newBusiness/workers/ImageType;", "", "", "value", "I", "getValue", "()I", "<init>", "(Ljava/lang/String;II)V", "Companion", "a", "LOGO", "GALLERY", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/ImageType.class */
public enum ImageType {
    LOGO(1),
    GALLERY(2);
    
    public static final C3513a Companion = new C3513a(null);
    private static final Map<Integer, ImageType> map;
    private final int value;

    /* renamed from: com.truecaller.bizmon.newBusiness.workers.ImageType$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/bizmon/newBusiness/workers/ImageType$a.class */
    public static final class C3513a {
        public C3513a(f fVar) {
        }

        /* renamed from: a */
        public final ImageType m35844a(int i) {
            return (ImageType) ImageType.map.get(Integer.valueOf(i));
        }
    }

    static {
        ImageType[] values = values();
        int m3942Y1 = C25225a.m3942Y1(2);
        int i = m3942Y1;
        if (m3942Y1 < 16) {
            i = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (ImageType imageType : values) {
            linkedHashMap.put(Integer.valueOf(imageType.value), imageType);
        }
        map = linkedHashMap;
    }

    ImageType(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }
}
