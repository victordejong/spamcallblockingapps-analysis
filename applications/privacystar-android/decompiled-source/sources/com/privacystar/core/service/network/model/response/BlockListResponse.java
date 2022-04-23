package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/BlockListResponse.class */
public class BlockListResponse implements Serializable {
    @SerializedName("bl")
    @Expose
    private List<String> blockList;
    @SerializedName("cnt")
    @Expose
    private Integer count;

    public List<String> getBlockList() {
        return this.blockList;
    }

    public Integer getCount() {
        return this.count;
    }

    public void setBlockList(List<String> list) {
        this.blockList = list;
    }

    public void setCount(Integer num) {
        this.count = num;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public BlockListResponse withBlockList(List<String> list) {
        this.blockList = list;
        return this;
    }

    public BlockListResponse withCount(Integer num) {
        this.count = num;
        return this;
    }
}
