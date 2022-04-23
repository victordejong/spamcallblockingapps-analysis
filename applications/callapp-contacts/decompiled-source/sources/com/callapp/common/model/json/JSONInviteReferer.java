package com.callapp.common.model.json;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONInviteReferer.class */
public class JSONInviteReferer implements Serializable {
    private static final long serialVersionUID = -5058015912229232252L;
    private String key;
    private BigInteger points;

    public JSONInviteReferer() {
    }

    public JSONInviteReferer(String str) {
        this.key = str;
    }

    public JSONInviteReferer(String str, BigInteger bigInteger) {
        this.key = str;
        this.points = bigInteger;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONInviteReferer jSONInviteReferer = (JSONInviteReferer) obj;
        return Objects.equals(this.key, jSONInviteReferer.key) && Objects.equals(this.points, jSONInviteReferer.points);
    }

    public String getKey() {
        return this.key;
    }

    public BigInteger getPoints() {
        return this.points;
    }

    public int hashCode() {
        return Objects.hash(this.key, this.points);
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setPoints(BigInteger bigInteger) {
        this.points = bigInteger;
    }
}
