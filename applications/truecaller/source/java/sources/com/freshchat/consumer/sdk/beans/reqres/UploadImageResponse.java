package com.freshchat.consumer.sdk.beans.reqres;

import com.freshchat.consumer.sdk.beans.fragment.ImageFragment;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/UploadImageResponse.class */
public class UploadImageResponse {
    private ImageFragment image;
    private String name;

    public ImageFragment getImage() {
        return this.image;
    }

    public String getName() {
        return this.name;
    }

    public void setImage(ImageFragment imageFragment) {
        this.image = imageFragment;
    }

    public void setName(String str) {
        this.name = str;
    }
}
