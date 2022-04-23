package com.callapp.common.model.json;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONIMaddress.class */
public class JSONIMaddress extends CallAppJSONObject {
    public static final transient int IM_AIM_PROTOCOL_ID = 0;
    public static final transient int IM_ALLO_PROTOCOL_ID = 1510;
    public static final transient int IM_BBM_PROTOCOL_ID = 1507;
    public static final transient int IM_DUO_PROTOCOL_ID = 1508;
    public static final transient int IM_GOOGLE_TALK_PROTOCOL_ID = 5;
    public static final transient int IM_HOME_TYPE_ID = 1;
    public static final transient int IM_ICQ_PROTOCOL_ID = 6;
    public static final transient int IM_JABBER_PROTOCOL_ID = 7;
    public static final transient int IM_MESSENGER_PROTOCOL_ID = 1511;
    public static final transient int IM_MSN_PROTOCOL_ID = 1;
    public static final transient int IM_NETMEETING_PROTOCOL_ID = 8;
    public static final transient int IM_OTHER_TYPE_ID = 3;
    public static final transient int IM_QQ_PROTOCOL_ID = 4;
    public static final transient int IM_SIGNAL_PROTOCOL_ID = 1509;
    public static final transient int IM_SKYPE_PROTOCOL_ID = 3;
    public static final transient int IM_TANGO_PROTOCOL_ID = 1503;
    public static final transient int IM_TELEGRAM_PROTOCOL_ID = 1506;
    public static final transient int IM_VIBER_PROTOCOL_ID = 1501;
    public static final transient int IM_VOXER_PROTOCOL_ID = 1504;
    public static final transient int IM_WECHAT_PROTOCOL_ID = 1505;
    public static final transient int IM_WHATSAPP_PROTOCOL_ID = 1502;
    public static final transient int IM_WORK_TYPE_ID = 2;
    public static final transient int IM_YAHOO_PROTOCOL_ID = 2;
    private static final long serialVersionUID = 6795790947852180390L;
    private String iMAddress;
    private int protocol;
    private int type;

    public JSONIMaddress() {
    }

    public JSONIMaddress(JSONIMaddress jSONIMaddress) {
        this.protocol = jSONIMaddress.protocol;
        this.type = jSONIMaddress.type;
        this.iMAddress = jSONIMaddress.iMAddress;
    }

    public JSONIMaddress(String str, int i, int i2) {
        this.protocol = i2;
        this.type = i;
        this.iMAddress = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof JSONIMaddress)) {
            return false;
        }
        JSONIMaddress jSONIMaddress = (JSONIMaddress) obj;
        String str = this.iMAddress;
        if (str == null) {
            if (jSONIMaddress.iMAddress != null) {
                return false;
            }
        } else if (!str.equals(jSONIMaddress.iMAddress)) {
            return false;
        }
        return this.protocol == jSONIMaddress.protocol;
    }

    public String getIMAddress() {
        return this.iMAddress;
    }

    public int getProtocol() {
        return this.protocol;
    }

    public int getType() {
        return this.type;
    }

    public int hashCode() {
        String str = this.iMAddress;
        return (((str == null ? 0 : str.hashCode()) + 31) * 31) + this.protocol;
    }

    public void setIMAddress(String str) {
        this.iMAddress = str;
    }

    public void setProtocol(int i) {
        this.protocol = i;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return "JSONIMaddress{iMAddress='" + this.iMAddress + "', protocol=" + this.protocol + '}';
    }
}
