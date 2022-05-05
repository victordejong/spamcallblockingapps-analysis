package com.aotter.net.trek.model;

import com.aotter.net.gson.annotations.SerializedName;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/VideoSession.class */
public class VideoSession {
    @SerializedName("end")
    public int end;
    @SerializedName("isFullScreen")
    public boolean isFullScreen;
    @SerializedName("isMute")
    public boolean isMute;
    @SerializedName("playerHeight")
    public int playerHeight;
    @SerializedName("playerWidth")
    public int playerWidth;
    @SerializedName("start")
    public int start;

    public int getEnd() {
        return this.end;
    }

    public int getPlayerHeight() {
        return this.playerHeight;
    }

    public int getPlayerWidth() {
        return this.playerWidth;
    }

    public int getStart() {
        return this.start;
    }

    public boolean isIsFullScreen() {
        return this.isFullScreen;
    }

    public boolean isIsMute() {
        return this.isMute;
    }

    public void setEnd(int i) {
        this.end = i;
    }

    public void setIsFullScreen(boolean z) {
        this.isFullScreen = z;
    }

    public void setIsMute(boolean z) {
        this.isMute = z;
    }

    public void setPlayerHeight(int i) {
        this.playerHeight = i;
    }

    public void setPlayerWidth(int i) {
        this.playerWidth = i;
    }

    public void setStart(int i) {
        this.start = i;
    }
}
