package com.lidroid.xutils.http.client.multipart;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/http/client/multipart/MinimalField.class */
class MinimalField {
    private final String name;
    private final String value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MinimalField(String str, String str2) {
        this.name = str;
        this.value = str2;
    }

    public String getBody() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public String toString() {
        return this.name + ": " + this.value;
    }
}
