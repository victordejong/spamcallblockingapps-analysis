package com.truecaller.api.services.messenger.p138v1;

import com.google.protobuf.ByteString;
import com.google.protobuf.CodedInputStream;
import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Parser;
import com.truecaller.api.services.messenger.p138v1.models.input.InputNotificationSettings;
import com.truecaller.api.services.messenger.p138v1.models.input.InputPeer;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings */
/* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings.class */
public final class UpdateContextSettings extends GeneratedMessageLite<UpdateContextSettings, C3122b> implements Object {
    private static final UpdateContextSettings DEFAULT_INSTANCE;
    private static volatile Parser<UpdateContextSettings> PARSER;

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request.class */
    public static final class Request extends GeneratedMessageLite<Request, C3119a> implements Object {
        private static final Request DEFAULT_INSTANCE;
        private static volatile Parser<Request> PARSER;
        public static final int UPDATE_GLOBAL_CONTEXT_FIELD_NUMBER = 1;
        public static final int UPDATE_GROUP_CONTEXT_FIELD_NUMBER = 3;
        public static final int UPDATE_ONE_TO_ONE_CONTEXT_FIELD_NUMBER = 2;
        private int valueCase_ = 0;
        private Object value_;

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$InputGlobalContextSettingsUpdate */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate.class */
        public static final class InputGlobalContextSettingsUpdate extends GeneratedMessageLite<InputGlobalContextSettingsUpdate, C3116a> implements Object {
            private static final InputGlobalContextSettingsUpdate DEFAULT_INSTANCE;
            private static volatile Parser<InputGlobalContextSettingsUpdate> PARSER;
            public static final int READ_REPORTS_ENABLED_FIELD_NUMBER = 1;
            private boolean readReportsEnabled_;

            /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$InputGlobalContextSettingsUpdate$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate$a.class */
            public static final class C3116a extends GeneratedMessageLite.Builder<InputGlobalContextSettingsUpdate, C3116a> implements Object {
                public C3116a() {
                    super(InputGlobalContextSettingsUpdate.DEFAULT_INSTANCE);
                }

                public C3116a(C3121a c3121a) {
                    super(InputGlobalContextSettingsUpdate.DEFAULT_INSTANCE);
                }
            }

            static {
                InputGlobalContextSettingsUpdate inputGlobalContextSettingsUpdate = new InputGlobalContextSettingsUpdate();
                DEFAULT_INSTANCE = inputGlobalContextSettingsUpdate;
                GeneratedMessageLite.registerDefaultInstance(InputGlobalContextSettingsUpdate.class, inputGlobalContextSettingsUpdate);
            }

            private InputGlobalContextSettingsUpdate() {
            }

            public void clearReadReportsEnabled() {
                this.readReportsEnabled_ = false;
            }

            public static InputGlobalContextSettingsUpdate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public static C3116a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3116a newBuilder(InputGlobalContextSettingsUpdate inputGlobalContextSettingsUpdate) {
                return DEFAULT_INSTANCE.createBuilder(inputGlobalContextSettingsUpdate);
            }

            public static InputGlobalContextSettingsUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static InputGlobalContextSettingsUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static InputGlobalContextSettingsUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<InputGlobalContextSettingsUpdate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setReadReportsEnabled(boolean z) {
                this.readReportsEnabled_ = z;
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0001����\u0001\u0001\u0001������\u0001\u0007", new Object[]{"readReportsEnabled_"});
                    case 3:
                        return new InputGlobalContextSettingsUpdate();
                    case 4:
                        return new C3116a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (InputGlobalContextSettingsUpdate.class) {
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

            public boolean getReadReportsEnabled() {
                return this.readReportsEnabled_;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$InputGroupContextSettingsUpdate */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate.class */
        public static final class InputGroupContextSettingsUpdate extends GeneratedMessageLite<InputGroupContextSettingsUpdate, C3117a> implements Object {
            private static final InputGroupContextSettingsUpdate DEFAULT_INSTANCE;
            public static final int GROUP_FIELD_NUMBER = 1;
            public static final int NOTIFICATION_SETTINGS_FIELD_NUMBER = 2;
            private static volatile Parser<InputGroupContextSettingsUpdate> PARSER;
            private InputPeer.Group group_;
            private InputNotificationSettings notificationSettings_;

            /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a.class */
            public static final class C3117a extends GeneratedMessageLite.Builder<InputGroupContextSettingsUpdate, C3117a> implements Object {
                public C3117a() {
                    super(InputGroupContextSettingsUpdate.DEFAULT_INSTANCE);
                }

                public C3117a(C3121a c3121a) {
                    super(InputGroupContextSettingsUpdate.DEFAULT_INSTANCE);
                }
            }

            static {
                InputGroupContextSettingsUpdate inputGroupContextSettingsUpdate = new InputGroupContextSettingsUpdate();
                DEFAULT_INSTANCE = inputGroupContextSettingsUpdate;
                GeneratedMessageLite.registerDefaultInstance(InputGroupContextSettingsUpdate.class, inputGroupContextSettingsUpdate);
            }

            private InputGroupContextSettingsUpdate() {
            }

            public void clearGroup() {
                this.group_ = null;
            }

            public void clearNotificationSettings() {
                this.notificationSettings_ = null;
            }

            public static InputGroupContextSettingsUpdate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public void mergeGroup(InputPeer.Group group) {
                group.getClass();
                InputPeer.Group group2 = this.group_;
                if (group2 == null || group2 == InputPeer.Group.getDefaultInstance()) {
                    this.group_ = group;
                } else {
                    this.group_ = InputPeer.Group.newBuilder(this.group_).mergeFrom(group).buildPartial();
                }
            }

            public void mergeNotificationSettings(InputNotificationSettings inputNotificationSettings) {
                inputNotificationSettings.getClass();
                InputNotificationSettings inputNotificationSettings2 = this.notificationSettings_;
                if (inputNotificationSettings2 == null || inputNotificationSettings2 == InputNotificationSettings.getDefaultInstance()) {
                    this.notificationSettings_ = inputNotificationSettings;
                } else {
                    this.notificationSettings_ = InputNotificationSettings.newBuilder(this.notificationSettings_).mergeFrom(inputNotificationSettings).buildPartial();
                }
            }

            public static C3117a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3117a newBuilder(InputGroupContextSettingsUpdate inputGroupContextSettingsUpdate) {
                return DEFAULT_INSTANCE.createBuilder(inputGroupContextSettingsUpdate);
            }

            public static InputGroupContextSettingsUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static InputGroupContextSettingsUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static InputGroupContextSettingsUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static InputGroupContextSettingsUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static InputGroupContextSettingsUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static InputGroupContextSettingsUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static InputGroupContextSettingsUpdate parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static InputGroupContextSettingsUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static InputGroupContextSettingsUpdate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static InputGroupContextSettingsUpdate parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static InputGroupContextSettingsUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static InputGroupContextSettingsUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<InputGroupContextSettingsUpdate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setGroup(InputPeer.Group group) {
                group.getClass();
                this.group_ = group;
            }

            public void setNotificationSettings(InputNotificationSettings inputNotificationSettings) {
                inputNotificationSettings.getClass();
                this.notificationSettings_ = inputNotificationSettings;
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0002\u0002������\u0001\t\u0002\t", new Object[]{"group_", "notificationSettings_"});
                    case 3:
                        return new InputGroupContextSettingsUpdate();
                    case 4:
                        return new C3117a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (InputGroupContextSettingsUpdate.class) {
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

            public InputPeer.Group getGroup() {
                InputPeer.Group group = this.group_;
                InputPeer.Group group2 = group;
                if (group == null) {
                    group2 = InputPeer.Group.getDefaultInstance();
                }
                return group2;
            }

            public InputNotificationSettings getNotificationSettings() {
                InputNotificationSettings inputNotificationSettings = this.notificationSettings_;
                InputNotificationSettings inputNotificationSettings2 = inputNotificationSettings;
                if (inputNotificationSettings == null) {
                    inputNotificationSettings2 = InputNotificationSettings.getDefaultInstance();
                }
                return inputNotificationSettings2;
            }

            public boolean hasGroup() {
                return this.group_ != null;
            }

            public boolean hasNotificationSettings() {
                return this.notificationSettings_ != null;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate.class */
        public static final class InputOneToOneContextSettingsUpdate extends GeneratedMessageLite<InputOneToOneContextSettingsUpdate, C3118a> implements Object {
            private static final InputOneToOneContextSettingsUpdate DEFAULT_INSTANCE;
            public static final int NOTIFICATION_SETTINGS_FIELD_NUMBER = 3;
            private static volatile Parser<InputOneToOneContextSettingsUpdate> PARSER;
            public static final int USER_FIELD_NUMBER = 1;
            private InputNotificationSettings notificationSettings_;
            private InputPeer.User user_;

            /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate$a */
            /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate$a.class */
            public static final class C3118a extends GeneratedMessageLite.Builder<InputOneToOneContextSettingsUpdate, C3118a> implements Object {
                public C3118a() {
                    super(InputOneToOneContextSettingsUpdate.DEFAULT_INSTANCE);
                }

                public C3118a(C3121a c3121a) {
                    super(InputOneToOneContextSettingsUpdate.DEFAULT_INSTANCE);
                }
            }

            static {
                InputOneToOneContextSettingsUpdate inputOneToOneContextSettingsUpdate = new InputOneToOneContextSettingsUpdate();
                DEFAULT_INSTANCE = inputOneToOneContextSettingsUpdate;
                GeneratedMessageLite.registerDefaultInstance(InputOneToOneContextSettingsUpdate.class, inputOneToOneContextSettingsUpdate);
            }

            private InputOneToOneContextSettingsUpdate() {
            }

            public void clearNotificationSettings() {
                this.notificationSettings_ = null;
            }

            public void clearUser() {
                this.user_ = null;
            }

            public static InputOneToOneContextSettingsUpdate getDefaultInstance() {
                return DEFAULT_INSTANCE;
            }

            public void mergeNotificationSettings(InputNotificationSettings inputNotificationSettings) {
                inputNotificationSettings.getClass();
                InputNotificationSettings inputNotificationSettings2 = this.notificationSettings_;
                if (inputNotificationSettings2 == null || inputNotificationSettings2 == InputNotificationSettings.getDefaultInstance()) {
                    this.notificationSettings_ = inputNotificationSettings;
                } else {
                    this.notificationSettings_ = InputNotificationSettings.newBuilder(this.notificationSettings_).mergeFrom(inputNotificationSettings).buildPartial();
                }
            }

            public void mergeUser(InputPeer.User user) {
                user.getClass();
                InputPeer.User user2 = this.user_;
                if (user2 == null || user2 == InputPeer.User.getDefaultInstance()) {
                    this.user_ = user;
                } else {
                    this.user_ = InputPeer.User.newBuilder(this.user_).mergeFrom(user).buildPartial();
                }
            }

            public static C3118a newBuilder() {
                return DEFAULT_INSTANCE.createBuilder();
            }

            public static C3118a newBuilder(InputOneToOneContextSettingsUpdate inputOneToOneContextSettingsUpdate) {
                return DEFAULT_INSTANCE.createBuilder(inputOneToOneContextSettingsUpdate);
            }

            public static InputOneToOneContextSettingsUpdate parseDelimitedFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static InputOneToOneContextSettingsUpdate parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(CodedInputStream codedInputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(InputStream inputStream) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
            }

            public static InputOneToOneContextSettingsUpdate parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
                return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
            }

            public static Parser<InputOneToOneContextSettingsUpdate> parser() {
                return DEFAULT_INSTANCE.getParserForType();
            }

            public void setNotificationSettings(InputNotificationSettings inputNotificationSettings) {
                inputNotificationSettings.getClass();
                this.notificationSettings_ = inputNotificationSettings;
            }

            public void setUser(InputPeer.User user) {
                user.getClass();
                this.user_ = user;
            }

            public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
                switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                    case 0:
                        return (byte) 1;
                    case 1:
                        return null;
                    case 2:
                        return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0002����\u0001\u0003\u0002������\u0001\t\u0003\t", new Object[]{"user_", "notificationSettings_"});
                    case 3:
                        return new InputOneToOneContextSettingsUpdate();
                    case 4:
                        return new C3118a(null);
                    case 5:
                        return DEFAULT_INSTANCE;
                    case 6:
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                        GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                        if (defaultInstanceBasedParser == null) {
                            synchronized (InputOneToOneContextSettingsUpdate.class) {
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

            public InputNotificationSettings getNotificationSettings() {
                InputNotificationSettings inputNotificationSettings = this.notificationSettings_;
                InputNotificationSettings inputNotificationSettings2 = inputNotificationSettings;
                if (inputNotificationSettings == null) {
                    inputNotificationSettings2 = InputNotificationSettings.getDefaultInstance();
                }
                return inputNotificationSettings2;
            }

            public InputPeer.User getUser() {
                InputPeer.User user = this.user_;
                InputPeer.User user2 = user;
                if (user == null) {
                    user2 = InputPeer.User.getDefaultInstance();
                }
                return user2;
            }

            public boolean hasNotificationSettings() {
                return this.notificationSettings_ != null;
            }

            public boolean hasUser() {
                return this.user_ != null;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$ValueCase */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$ValueCase.class */
        public enum ValueCase {
            UPDATE_GLOBAL_CONTEXT(1),
            UPDATE_ONE_TO_ONE_CONTEXT(2),
            UPDATE_GROUP_CONTEXT(3),
            VALUE_NOT_SET(0);
            
            private final int value;

            ValueCase(int i) {
                this.value = i;
            }

            public static ValueCase forNumber(int i) {
                if (i != 0) {
                    if (i == 1) {
                        return UPDATE_GLOBAL_CONTEXT;
                    }
                    if (i == 2) {
                        return UPDATE_ONE_TO_ONE_CONTEXT;
                    }
                    if (i == 3) {
                        return UPDATE_GROUP_CONTEXT;
                    }
                    return null;
                }
                return VALUE_NOT_SET;
            }

            @Deprecated
            public static ValueCase valueOf(int i) {
                return forNumber(i);
            }

            public int getNumber() {
                return this.value;
            }
        }

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Request$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a.class */
        public static final class C3119a extends GeneratedMessageLite.Builder<Request, C3119a> implements Object {
            public C3119a() {
                super(Request.DEFAULT_INSTANCE);
            }

            public C3119a(C3121a c3121a) {
                super(Request.DEFAULT_INSTANCE);
            }
        }

        static {
            Request request = new Request();
            DEFAULT_INSTANCE = request;
            GeneratedMessageLite.registerDefaultInstance(Request.class, request);
        }

        private Request() {
        }

        public void clearUpdateGlobalContext() {
            if (this.valueCase_ == 1) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearUpdateGroupContext() {
            if (this.valueCase_ == 3) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearUpdateOneToOneContext() {
            if (this.valueCase_ == 2) {
                this.valueCase_ = 0;
                this.value_ = null;
            }
        }

        public void clearValue() {
            this.valueCase_ = 0;
            this.value_ = null;
        }

        public static Request getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public void mergeUpdateGlobalContext(InputGlobalContextSettingsUpdate inputGlobalContextSettingsUpdate) {
            inputGlobalContextSettingsUpdate.getClass();
            if (this.valueCase_ != 1 || this.value_ == InputGlobalContextSettingsUpdate.getDefaultInstance()) {
                this.value_ = inputGlobalContextSettingsUpdate;
            } else {
                this.value_ = InputGlobalContextSettingsUpdate.newBuilder((InputGlobalContextSettingsUpdate) this.value_).mergeFrom(inputGlobalContextSettingsUpdate).buildPartial();
            }
            this.valueCase_ = 1;
        }

        public void mergeUpdateGroupContext(InputGroupContextSettingsUpdate inputGroupContextSettingsUpdate) {
            inputGroupContextSettingsUpdate.getClass();
            if (this.valueCase_ != 3 || this.value_ == InputGroupContextSettingsUpdate.getDefaultInstance()) {
                this.value_ = inputGroupContextSettingsUpdate;
            } else {
                this.value_ = InputGroupContextSettingsUpdate.newBuilder((InputGroupContextSettingsUpdate) this.value_).mergeFrom(inputGroupContextSettingsUpdate).buildPartial();
            }
            this.valueCase_ = 3;
        }

        public void mergeUpdateOneToOneContext(InputOneToOneContextSettingsUpdate inputOneToOneContextSettingsUpdate) {
            inputOneToOneContextSettingsUpdate.getClass();
            if (this.valueCase_ != 2 || this.value_ == InputOneToOneContextSettingsUpdate.getDefaultInstance()) {
                this.value_ = inputOneToOneContextSettingsUpdate;
            } else {
                this.value_ = InputOneToOneContextSettingsUpdate.newBuilder((InputOneToOneContextSettingsUpdate) this.value_).mergeFrom(inputOneToOneContextSettingsUpdate).buildPartial();
            }
            this.valueCase_ = 2;
        }

        public static C3119a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3119a newBuilder(Request request) {
            return DEFAULT_INSTANCE.createBuilder(request);
        }

        public static Request parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Request parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Request parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Request parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Request parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Request parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Request parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Request parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Request parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Request parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Request> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public void setUpdateGlobalContext(InputGlobalContextSettingsUpdate inputGlobalContextSettingsUpdate) {
            inputGlobalContextSettingsUpdate.getClass();
            this.value_ = inputGlobalContextSettingsUpdate;
            this.valueCase_ = 1;
        }

        public void setUpdateGroupContext(InputGroupContextSettingsUpdate inputGroupContextSettingsUpdate) {
            inputGroupContextSettingsUpdate.getClass();
            this.value_ = inputGroupContextSettingsUpdate;
            this.valueCase_ = 3;
        }

        public void setUpdateOneToOneContext(InputOneToOneContextSettingsUpdate inputOneToOneContextSettingsUpdate) {
            inputOneToOneContextSettingsUpdate.getClass();
            this.value_ = inputOneToOneContextSettingsUpdate;
            this.valueCase_ = 2;
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "��\u0003\u0001��\u0001\u0003\u0003������\u0001<��\u0002<��\u0003<��", new Object[]{"value_", "valueCase_", InputGlobalContextSettingsUpdate.class, InputOneToOneContextSettingsUpdate.class, InputGroupContextSettingsUpdate.class});
                case 3:
                    return new Request();
                case 4:
                    return new C3119a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Request.class) {
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

        public InputGlobalContextSettingsUpdate getUpdateGlobalContext() {
            return this.valueCase_ == 1 ? (InputGlobalContextSettingsUpdate) this.value_ : InputGlobalContextSettingsUpdate.getDefaultInstance();
        }

        public InputGroupContextSettingsUpdate getUpdateGroupContext() {
            return this.valueCase_ == 3 ? (InputGroupContextSettingsUpdate) this.value_ : InputGroupContextSettingsUpdate.getDefaultInstance();
        }

        public InputOneToOneContextSettingsUpdate getUpdateOneToOneContext() {
            return this.valueCase_ == 2 ? (InputOneToOneContextSettingsUpdate) this.value_ : InputOneToOneContextSettingsUpdate.getDefaultInstance();
        }

        public ValueCase getValueCase() {
            return ValueCase.forNumber(this.valueCase_);
        }

        public boolean hasUpdateGlobalContext() {
            boolean z = true;
            if (this.valueCase_ != 1) {
                z = false;
            }
            return z;
        }

        public boolean hasUpdateGroupContext() {
            return this.valueCase_ == 3;
        }

        public boolean hasUpdateOneToOneContext() {
            return this.valueCase_ == 2;
        }
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Response */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Response.class */
    public static final class Response extends GeneratedMessageLite<Response, C3120a> implements Object {
        private static final Response DEFAULT_INSTANCE;
        private static volatile Parser<Response> PARSER;

        /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$Response$a */
        /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$Response$a.class */
        public static final class C3120a extends GeneratedMessageLite.Builder<Response, C3120a> implements Object {
            public C3120a() {
                super(Response.DEFAULT_INSTANCE);
            }

            public C3120a(C3121a c3121a) {
                super(Response.DEFAULT_INSTANCE);
            }
        }

        static {
            Response response = new Response();
            DEFAULT_INSTANCE = response;
            GeneratedMessageLite.registerDefaultInstance(Response.class, response);
        }

        private Response() {
        }

        public static Response getDefaultInstance() {
            return DEFAULT_INSTANCE;
        }

        public static C3120a newBuilder() {
            return DEFAULT_INSTANCE.createBuilder();
        }

        public static C3120a newBuilder(Response response) {
            return DEFAULT_INSTANCE.createBuilder(response);
        }

        public static Response parseDelimitedFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
        }

        public static Response parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
        }

        public static Response parseFrom(CodedInputStream codedInputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
        }

        public static Response parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
        }

        public static Response parseFrom(InputStream inputStream) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
        }

        public static Response parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
        }

        public static Response parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
        }

        public static Response parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
        }

        public static Response parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
        }

        public static Response parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
        }

        public static Parser<Response> parser() {
            return DEFAULT_INSTANCE.getParserForType();
        }

        public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
            switch (generatedMessageLite$MethodToInvoke.ordinal()) {
                case 0:
                    return (byte) 1;
                case 1:
                    return null;
                case 2:
                    return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
                case 3:
                    return new Response();
                case 4:
                    return new C3120a(null);
                case 5:
                    return DEFAULT_INSTANCE;
                case 6:
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                    GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                    if (defaultInstanceBasedParser == null) {
                        synchronized (Response.class) {
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
    }

    /* renamed from: com.truecaller.api.services.messenger.v1.UpdateContextSettings$b */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/api/services/messenger/v1/UpdateContextSettings$b.class */
    public static final class C3122b extends GeneratedMessageLite.Builder<UpdateContextSettings, C3122b> implements Object {
        public C3122b() {
            super(UpdateContextSettings.DEFAULT_INSTANCE);
        }

        public C3122b(C3121a c3121a) {
            super(UpdateContextSettings.DEFAULT_INSTANCE);
        }
    }

    static {
        UpdateContextSettings updateContextSettings = new UpdateContextSettings();
        DEFAULT_INSTANCE = updateContextSettings;
        GeneratedMessageLite.registerDefaultInstance(UpdateContextSettings.class, updateContextSettings);
    }

    private UpdateContextSettings() {
    }

    public static UpdateContextSettings getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static C3122b newBuilder() {
        return DEFAULT_INSTANCE.createBuilder();
    }

    public static C3122b newBuilder(UpdateContextSettings updateContextSettings) {
        return DEFAULT_INSTANCE.createBuilder(updateContextSettings);
    }

    public static UpdateContextSettings parseDelimitedFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateContextSettings parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseDelimitedFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateContextSettings parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString);
    }

    public static UpdateContextSettings parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteString, extensionRegistryLite);
    }

    public static UpdateContextSettings parseFrom(CodedInputStream codedInputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream);
    }

    public static UpdateContextSettings parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, codedInputStream, extensionRegistryLite);
    }

    public static UpdateContextSettings parseFrom(InputStream inputStream) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream);
    }

    public static UpdateContextSettings parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, inputStream, extensionRegistryLite);
    }

    public static UpdateContextSettings parseFrom(ByteBuffer byteBuffer) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer);
    }

    public static UpdateContextSettings parseFrom(ByteBuffer byteBuffer, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, byteBuffer, extensionRegistryLite);
    }

    public static UpdateContextSettings parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public static UpdateContextSettings parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return GeneratedMessageLite.parseFrom(DEFAULT_INSTANCE, bArr, extensionRegistryLite);
    }

    public static Parser<UpdateContextSettings> parser() {
        return DEFAULT_INSTANCE.getParserForType();
    }

    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke, Object obj, Object obj2) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return GeneratedMessageLite.newMessageInfo(DEFAULT_INSTANCE, "����", (Object[]) null);
            case 3:
                return new UpdateContextSettings();
            case 4:
                return new C3122b(null);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser = PARSER;
                GeneratedMessageLite.DefaultInstanceBasedParser defaultInstanceBasedParser2 = defaultInstanceBasedParser;
                if (defaultInstanceBasedParser == null) {
                    synchronized (UpdateContextSettings.class) {
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
}
