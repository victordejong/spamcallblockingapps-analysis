package com.amazonaws;

import java.util.EnumMap;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazonaws/RequestClientOptions.class */
public final class RequestClientOptions {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Marker, String> f6542a = new EnumMap(Marker.class);

    /* loaded from: classes-dex2jar.jar:com/amazonaws/RequestClientOptions$Marker.class */
    public enum Marker {
        USER_AGENT
    }

    public final void a(String str) {
        String str2 = this.f6542a.get(Marker.USER_AGENT);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        if (!str3.contains(str)) {
            str3 = str3 + StringUtils.SPACE + str;
        }
        this.f6542a.put(Marker.USER_AGENT, str3);
    }
}
