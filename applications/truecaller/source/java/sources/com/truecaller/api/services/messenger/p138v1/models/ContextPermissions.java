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
/* renamed from: com.truecaller.api.services.messenger.v1.models.ContextPermissions */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/ContextPermissions.class */
public final class ContextPermissions extends GeneratedMessageLite<ContextPermissions, C3161b> implements Object {
    public static final int ACTIONS_FIELD_NUMBER = 1;
    private static final ContextPermissions DEFAULT_INSTANCE;
    private static volatile Parser<ContextPermissions> PARSER;
    public static final int ROLE_UPDATE_MASK_FIELD_NUMBER = 3;
    public static final int ROLE_UPDATE_RESTRICTION_MASK_FIELD_NUMBER = 2;
    public static final int SELF_ROLE_UPDATE_MASK_FIELD_NUMBER = 4;
    private int actions_;
    private int roleUpdateMask_;
    private int roleUpdateRestrictionMask_;
    private int selfRoleUpdateMask_;

    /* renamed from: com.truecaller.api.services.messenger.v1.models.ContextPermissions$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/models/ContextPermissions$b.class */
    public static final class C3161b extends GeneratedMessageLite.Builder<ContextPermissions, C3161b> implements Object {
        public C3161b() {
            super(ContextPermissions.DEFAULT_INSTANCE);
        }

        public C3161b(C3160a c3160a) {
            super(ContextPermissions.DEFAULT_INSTANCE);
        }
    }

    static {
        ContextPermissions contextPermissions = new ContextPermissions();
        DEFAULT_INSTANCE = contextPermissions;
        GeneratedMessageLite.registerDefaultInstance(ContextPermissions.class, contextPermissions);
    }

    private ContextPermissions() {
    }

    public void clearActions() {
        this.actions_ = 0;
    }

    public void clearRoleUpdateMask() {
        this.roleUpdateMask_ = 0;
    }

    public void clearRoleUpdateRestrictionMask() {
        this.roleUpdateRestrictionMask_ = 0;
    }

    public void clearSelfRoleUpdateMask() {
        this.selfRoleUpdateMask_ = 0;
    }

    public static ContextPermissions getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3161b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3161b newBuilder(ContextPermissions contextPermissions) {
        return DEFAULT_INSTANCE.createBuilder(contextPermissions);
    }

    public static ContextPermissions parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ContextPermissions parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ContextPermissions parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static ContextPermissions parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static ContextPermissions parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static ContextPermissions parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static ContextPermissions parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static ContextPermissions parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static ContextPermissions parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static ContextPermissions parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static ContextPermissions parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static ContextPermissions parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<ContextPermissions> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public void setActions(int i) {
        this.actions_ = i;
    }

    public void setRoleUpdateMask(int i) {
        this.roleUpdateMask_ = i;
    }

    public void setRoleUpdateRestrictionMask(int i) {
        this.roleUpdateRestrictionMask_ = i;
    }

    public void setSelfRoleUpdateMask(int i) {
        this.selfRoleUpdateMask_ = i;
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0004����\u0001\u0004\u0004������\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0004", new Object[]{"actions_", "roleUpdateRestrictionMask_", "roleUpdateMask_", "selfRoleUpdateMask_"});
            case 3:
                return new ContextPermissions();
            case 4:
                return new C3161b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (ContextPermissions.class) {
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

    public int getActions() {
        return this.actions_;
    }

    public int getRoleUpdateMask() {
        return this.roleUpdateMask_;
    }

    public int getRoleUpdateRestrictionMask() {
        return this.roleUpdateRestrictionMask_;
    }

    public int getSelfRoleUpdateMask() {
        return this.selfRoleUpdateMask_;
    }
}
