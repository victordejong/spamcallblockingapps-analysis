package com.gogolook.whoscallsdk.core.fcm.data;

import androidx.core.app.Person;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018�� \u001b2\u00020\u0001:\u0001\u001bB#\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J'\u0010\u0015\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000b¨\u0006\u001c"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/fcm/data/TopicObject;", "", "topic", "", Person.KEY_KEY, IapProductRealmObject.STATE, "", "(Ljava/lang/String;Ljava/lang/String;I)V", "getKey", "()Ljava/lang/String;", "setKey", "(Ljava/lang/String;)V", "getState", "()I", "setState", "(I)V", "getTopic", "setTopic", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/fcm/data/TopicObject.class */
public final class TopicObject {
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT = 0;
    public static final int TOSUBSCRIBE = 1;
    public static final int TOUNSUBSCRIBE = -1;
    public String key;
    public int state;
    public String topic;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��¨\u0006\u0007"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/fcm/data/TopicObject$Companion;", "", "()V", "DEFAULT", "", "TOSUBSCRIBE", "TOUNSUBSCRIBE", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/fcm/data/TopicObject$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    public TopicObject() {
        this(null, null, 0, 7, null);
    }

    public TopicObject(String str, String str2, int i) {
        C15149k.m377b(str, "topic");
        C15149k.m377b(str2, Person.KEY_KEY);
        this.topic = str;
        this.key = str2;
        this.state = i;
    }

    public /* synthetic */ TopicObject(String str, String str2, int i, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? 0 : i);
    }

    public static /* synthetic */ TopicObject copy$default(TopicObject topicObject, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = topicObject.topic;
        }
        if ((i2 & 2) != 0) {
            str2 = topicObject.key;
        }
        if ((i2 & 4) != 0) {
            i = topicObject.state;
        }
        return topicObject.copy(str, str2, i);
    }

    public final String component1() {
        return this.topic;
    }

    public final String component2() {
        return this.key;
    }

    public final int component3() {
        return this.state;
    }

    public final TopicObject copy(String str, String str2, int i) {
        C15149k.m377b(str, "topic");
        C15149k.m377b(str2, Person.KEY_KEY);
        return new TopicObject(str, str2, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TopicObject)) {
            return false;
        }
        TopicObject topicObject = (TopicObject) obj;
        if (!C15149k.m384a((Object) this.topic, (Object) topicObject.topic) || !C15149k.m384a((Object) this.key, (Object) topicObject.key)) {
            return false;
        }
        return this.state == topicObject.state;
    }

    public final String getKey() {
        return this.key;
    }

    public final int getState() {
        return this.state;
    }

    public final String getTopic() {
        return this.topic;
    }

    public int hashCode() {
        String str = this.topic;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.key;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.state;
    }

    public final void setKey(String str) {
        C15149k.m377b(str, "<set-?>");
        this.key = str;
    }

    public final void setState(int i) {
        this.state = i;
    }

    public final void setTopic(String str) {
        C15149k.m377b(str, "<set-?>");
        this.topic = str;
    }

    public String toString() {
        return "TopicObject(topic=" + this.topic + ", key=" + this.key + ", state=" + this.state + ")";
    }
}
