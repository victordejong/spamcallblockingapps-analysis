package com.mopub.mobileads;

import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTracker.class */
public class VastTracker implements Serializable {
    public static final long serialVersionUID = 1;
    public boolean mCalled;
    @AbstractC6134c("content")
    @AbstractC6132a
    public final String mContent;
    @AbstractC6134c(Constants.VAST_TRACKER_REPEATABLE)
    @AbstractC6132a
    public boolean mIsRepeatable;
    @AbstractC6134c(Constants.VAST_TRACKER_MESSAGE_TYPE)
    @AbstractC6132a
    public final MessageType mMessageType;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastTracker$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public VastTracker(MessageType messageType, String str) {
        Preconditions.checkNotNull(messageType);
        Preconditions.checkNotNull(str);
        this.mMessageType = messageType;
        this.mContent = str;
    }

    public VastTracker(String str) {
        this(MessageType.TRACKING_URL, str);
    }

    public VastTracker(String str, boolean z) {
        this(str);
        this.mIsRepeatable = z;
    }

    public String getContent() {
        return this.mContent;
    }

    public MessageType getMessageType() {
        return this.mMessageType;
    }

    public boolean isRepeatable() {
        return this.mIsRepeatable;
    }

    public boolean isTracked() {
        return this.mCalled;
    }

    public void setTracked() {
        this.mCalled = true;
    }
}
