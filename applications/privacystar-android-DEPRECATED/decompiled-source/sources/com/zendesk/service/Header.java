package com.zendesk.service;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/Header.class */
public class Header {
    private final String name;
    private final String value;

    public Header(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Header header = (Header) obj;
        if (this.name != null) {
            if (!this.name.equals(header.name)) {
                return false;
            }
        } else if (header.name != null) {
            return false;
        }
        if (this.value == null ? header.value != null : !this.value.equals(header.value)) {
            z = false;
        }
        return z;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.name != null ? this.name.hashCode() : 0;
        if (this.value != null) {
            i = this.value.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "Header{name='" + this.name + "', value='" + this.value + "'}";
    }
}
