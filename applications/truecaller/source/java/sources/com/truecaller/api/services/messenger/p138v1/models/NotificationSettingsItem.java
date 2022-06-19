package com.truecaller.api.services.messenger.p138v1.models;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.p1251d.AbstractC20464c;
/* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettingsItem */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettingsItem.class */
public final class NotificationSettingsItem extends GeneratedMessageLite<NotificationSettingsItem, C3218b> implements AbstractC20464c {
    private static final NotificationSettingsItem DEFAULT_INSTANCE;
    public static final int NOTIFICATION_SCOPE_FIELD_NUMBER = 1;
    public static final int NOTIFICATION_SETTINGS_FIELD_NUMBER = 2;
    private static volatile Parser<NotificationSettingsItem> PARSER;
    private NotificationScope notificationScope_;
    private NotificationSettings notificationSettings_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.NotificationSettingsItem$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/NotificationSettingsItem$b.class */
    public static final class C3218b extends GeneratedMessageLite.Builder<NotificationSettingsItem, C3218b> implements AbstractC20464c {
        public C3218b() {
            super(NotificationSettingsItem.DEFAULT_INSTANCE);
        }

        public C3218b(C3217a c3217a) {
            super(NotificationSettingsItem.DEFAULT_INSTANCE);
        }
    }

    static {
        NotificationSettingsItem notificationSettingsItem = new NotificationSettingsItem();
        DEFAULT_INSTANCE = notificationSettingsItem;
        GeneratedMessageLite.registerDefaultInstance(NotificationSettingsItem.class, notificationSettingsItem);
    }

    private NotificationSettingsItem() {
    }

    public void clearNotificationScope() {
        this.notificationScope_ = null;
    }

    public void clearNotificationSettings() {
        this.notificationSettings_ = null;
    }

    public static NotificationSettingsItem getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public void mergeNotificationScope(NotificationScope notificationScope) {
        notificationScope.getClass();
        NotificationScope notificationScope2 = this.notificationScope_;
        if (notificationScope2 == null || notificationScope2 == NotificationScope.getDefaultInstance()) {
            this.notificationScope_ = notificationScope;
        } else {
            this.notificationScope_ = NotificationScope.newBuilder(this.notificationScope_).mergeFrom(notificationScope).buildPartial();
        }
    }

    public void mergeNotificationSettings(NotificationSettings notificationSettings) {
        notificationSettings.getClass();
        NotificationSettings notificationSettings2 = this.notificationSettings_;
        if (notificationSettings2 == null || notificationSettings2 == NotificationSettings.getDefaultInstance()) {
            this.notificationSettings_ = notificationSettings;
        } else {
            this.notificationSettings_ = NotificationSettings.newBuilder(this.notificationSettings_).mergeFrom(notificationSettings).buildPartial();
        }
    }

    public static C3218b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3218b newBuilder(NotificationSettingsItem notificationSettingsItem) {
        return DEFAULT_INSTANCE.createBuilder(notificationSettingsItem);
    }

    public static NotificationSettingsItem parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NotificationSettingsItem parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NotificationSettingsItem parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static NotificationSettingsItem parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static NotificationSettingsItem parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static NotificationSettingsItem parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static NotificationSettingsItem parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static NotificationSettingsItem parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static NotificationSettingsItem parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static NotificationSettingsItem parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static NotificationSettingsItem parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static NotificationSettingsItem parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<NotificationSettingsItem> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setNotificationScope(NotificationScope notificationScope) {
        notificationScope.getClass();
        this.notificationScope_ = notificationScope;
    }

    public void setNotificationSettings(NotificationSettings notificationSettings) {
        notificationSettings.getClass();
        this.notificationSettings_ = notificationSettings;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"notificationScope_", "notificationSettings_"});
            case 3:
                return new NotificationSettingsItem();
            case 4:
                return new C3218b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (NotificationSettingsItem.class) {
                        try {
                            GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser3 = PARSER;
                            defaultInstanceBasedParser2 = defaultInstanceBasedParser3;
                            if (defaultInstanceBasedParser3 == null) {
                                defaultInstanceBasedParser2 = new GeneratedMessageLite.DefaultInstanceBasedParser(DEFAULT_INSTANCE);
                                PARSER = defaultInstanceBasedParser2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return defaultInstanceBasedParser2;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public NotificationScope getNotificationScope() {
        NotificationScope notificationScope = this.notificationScope_;
        NotificationScope notificationScope2 = notificationScope;
        if (notificationScope == null) {
            notificationScope2 = NotificationScope.getDefaultInstance();
        }
        return notificationScope2;
    }

    public NotificationSettings getNotificationSettings() {
        NotificationSettings notificationSettings = this.notificationSettings_;
        NotificationSettings notificationSettings2 = notificationSettings;
        if (notificationSettings == null) {
            notificationSettings2 = NotificationSettings.getDefaultInstance();
        }
        return notificationSettings2;
    }

    public boolean hasNotificationScope() {
        return this.notificationScope_ != null;
    }

    public boolean hasNotificationSettings() {
        return this.notificationSettings_ != null;
    }
}
