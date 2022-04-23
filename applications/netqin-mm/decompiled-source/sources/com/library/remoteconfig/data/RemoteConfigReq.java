package com.library.remoteconfig.data;

import p131c.p396i.p397a.C6489a;
import p131c.p396i.p397a.p399f.p401b.p402f.C6538a;
import p131c.p396i.p397a.p417j.C6617d;
import p131c.p396i.p397a.p417j.C6618e;
/* loaded from: classes2-dex2jar.jar:com/library/remoteconfig/data/RemoteConfigReq.class */
public class RemoteConfigReq extends C6538a {
    public long appId = C6489a.f20204a;
    public String appChannel = C6489a.f20205b;
    public String deviceId = C6617d.m20357a();
    public String appVersion = C6617d.m20349c();
    public int appVerCode = C6617d.m20351b();
    public String sdkVersion = C6617d.m20336l();
    public int sdkVerCode = C6617d.m20337k();
    public String country = C6617d.m20347d();
    public int userType = !C6618e.m20334a().m20329a("remote_config_new_user", true).booleanValue();

    public RemoteConfigReq() {
        super("comProp/", "");
    }
}
