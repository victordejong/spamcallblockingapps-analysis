package com.library.remoteconfig.data;

import java.util.Map;
import p131c.p396i.p397a.p399f.p401b.p403g.C6539a;
/* loaded from: classes2-dex2jar.jar:com/library/remoteconfig/data/RemoteConfigResp.class */
public class RemoteConfigResp extends C6539a {
    public Map<String, String> config;
    public long update;

    public String configToString() {
        if (this.config == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        for (Map.Entry<String, String> entry : this.config.entrySet()) {
            stringBuffer.append((Object) entry.getKey());
            stringBuffer.append(":");
            stringBuffer.append((Object) entry.getValue());
            stringBuffer.append(",");
        }
        stringBuffer.append("]");
        return stringBuffer.toString();
    }

    @Override // p131c.p396i.p397a.p399f.p401b.p403g.C6539a
    public String toString() {
        return RemoteConfigResp.class.getSimpleName() + "@" + hashCode() + ",update:" + this.update + ",config:" + configToString();
    }
}
