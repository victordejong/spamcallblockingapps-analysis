package com.tmobile.tmoid.helperlib.sit;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/ManageConnectivityResponse.class */
public class ManageConnectivityResponse {

    /* renamed from: a */
    private int f14767a = -1;

    /* renamed from: b */
    private List<String> f14768b;

    /* renamed from: c */
    private List<ServiceName> f14769c;

    /* renamed from: d */
    private String f14770d;

    public String toString() {
        StringBuilder sb = new StringBuilder("'manageConnectivity' response: \n");
        sb.append("\t->response code: " + this.f14767a + "\n");
        if (this.f14768b != null) {
            sb.append("\t->epdg addresses [" + this.f14768b.size() + "]:\n");
            for (String str : this.f14768b) {
                sb.append("\t\t->" + str + "\n");
            }
        } else {
            sb.append("\t->epdg addresses is null\n");
        }
        if (this.f14769c != null) {
            sb.append("\t->service names [" + this.f14769c.size() + "]:\n");
            for (ServiceName serviceName : this.f14769c) {
                sb.append("\t\t->" + serviceName + "\n");
            }
        } else {
            sb.append("\t->service names is null\n");
        }
        sb.append("\t->device-config: " + this.f14770d + "\n");
        return sb.toString();
    }
}
