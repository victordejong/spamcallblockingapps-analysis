package com.netqin.p525cm.p528db.model;

import android.graphics.Bitmap;
/* renamed from: com.netqin.cm.db.model.SystemCallLog */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/SystemCallLog.class */
public class SystemCallLog extends BaseModel {
    public static final long serialVersionUID = 1;
    public Bitmap avatar;
    public long date;
    public int defaultAvatar;
    public long duration;

    public Bitmap getAvatar() {
        return this.avatar;
    }

    public long getDate() {
        return this.date;
    }

    public int getDefaultAvatar() {
        return this.defaultAvatar;
    }

    public long getDuration() {
        return this.duration;
    }

    public void setAvatar(Bitmap bitmap) {
        this.avatar = bitmap;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDefaultAvatar(int i) {
        this.defaultAvatar = i;
    }

    public void setDuration(long j) {
        this.duration = j;
    }
}
