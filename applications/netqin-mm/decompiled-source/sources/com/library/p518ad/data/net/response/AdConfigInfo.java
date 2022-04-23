package com.library.p518ad.data.net.response;

import com.library.p518ad.data.bean.PlaceConfig;
import java.util.ArrayList;
import java.util.Arrays;
import p131c.p396i.p397a.p399f.p401b.p403g.C6539a;
/* renamed from: com.library.ad.data.net.response.AdConfigInfo */
/* loaded from: classes2-dex2jar.jar:com/library/ad/data/net/response/AdConfigInfo.class */
public class AdConfigInfo extends C6539a {
    public Boolean log;
    public long logSize;
    public long logTime;
    public ArrayList<PlaceConfig> placeList;
    public long update;

    @Override // p131c.p396i.p397a.p399f.p401b.p403g.C6539a
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" update=");
        sb.append(this.update);
        if (this.placeList != null) {
            sb.append("\n" + Arrays.toString(this.placeList.toArray()));
        }
        return sb.toString();
    }
}
