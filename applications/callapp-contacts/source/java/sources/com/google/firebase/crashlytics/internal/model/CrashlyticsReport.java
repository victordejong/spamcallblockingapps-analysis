package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_CustomAttribute;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_FilesPayload_File;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Application;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Application_Organization;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Device;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Application_Execution;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Device;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_Event_Log;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_OperatingSystem;
import com.google.firebase.crashlytics.internal.model.AutoValue_CrashlyticsReport_Session_User;
import com.google.firebase.crashlytics.internal.model.C15710xfe724d07;
import com.google.firebase.crashlytics.internal.model.C15712xc2f5febc;
import com.google.firebase.crashlytics.internal.model.C15714x7c929f5b;
import com.google.firebase.crashlytics.internal.model.C15716x7e3e3ebd;
import com.google.firebase.crashlytics.internal.model.C15718xce3d994b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.Charset;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport.class */
public abstract class CrashlyticsReport {
    public static final String DEVELOPMENT_PLATFORM_UNITY = "Unity";
    private static final Charset UTF_8 = Charset.forName("UTF-8");

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture.class */
    public @interface Architecture {
        public static final int ARM64 = 9;
        public static final int ARMV6 = 5;
        public static final int ARMV7 = 6;
        public static final int UNKNOWN = 7;
        public static final int X86_32 = 0;
        public static final int X86_64 = 1;
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Builder.class */
    public static abstract class Builder {
        public abstract CrashlyticsReport build();

        public abstract Builder setBuildVersion(String str);

        public abstract Builder setDisplayVersion(String str);

        public abstract Builder setGmpAppId(String str);

        public abstract Builder setInstallationUuid(String str);

        public abstract Builder setNdkPayload(FilesPayload filesPayload);

        public abstract Builder setPlatform(int i);

        public abstract Builder setSdkVersion(String str);

        public abstract Builder setSession(Session session);
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute.class */
    public static abstract class CustomAttribute {

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder.class */
        public static abstract class Builder {
            public abstract CustomAttribute build();

            public abstract Builder setKey(String str);

            public abstract Builder setValue(String str);
        }

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_CustomAttribute.Builder();
        }

        public abstract String getKey();

        public abstract String getValue();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload.class */
    public static abstract class FilesPayload {

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$Builder.class */
        public static abstract class Builder {
            public abstract FilesPayload build();

            public abstract Builder setFiles(ImmutableList<File> immutableList);

            public abstract Builder setOrgId(String str);
        }

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File.class */
        public static abstract class File {

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder.class */
            public static abstract class Builder {
                public abstract File build();

                public abstract Builder setContents(byte[] bArr);

                public abstract Builder setFilename(String str);
            }

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_FilesPayload_File.Builder();
            }

            public abstract byte[] getContents();

            public abstract String getFilename();
        }

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_FilesPayload.Builder();
        }

        public abstract ImmutableList<File> getFiles();

        public abstract String getOrgId();

        abstract Builder toBuilder();
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session.class */
    public static abstract class Session {

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application.class */
        public static abstract class Application {

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Builder.class */
            public static abstract class Builder {
                public abstract Application build();

                public abstract Builder setDevelopmentPlatform(String str);

                public abstract Builder setDevelopmentPlatformVersion(String str);

                public abstract Builder setDisplayVersion(String str);

                public abstract Builder setIdentifier(String str);

                public abstract Builder setInstallationUuid(String str);

                public abstract Builder setOrganization(Organization organization);

                public abstract Builder setVersion(String str);
            }

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization.class */
            public static abstract class Organization {

                /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application$Organization$Builder.class */
                public static abstract class Builder {
                    public abstract Organization build();

                    public abstract Builder setClsId(String str);
                }

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Application_Organization.Builder();
                }

                public abstract String getClsId();

                protected abstract Builder toBuilder();
            }

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Application.Builder();
            }

            public abstract String getDevelopmentPlatform();

            public abstract String getDevelopmentPlatformVersion();

            public abstract String getDisplayVersion();

            public abstract String getIdentifier();

            public abstract String getInstallationUuid();

            public abstract Organization getOrganization();

            public abstract String getVersion();

            protected abstract Builder toBuilder();

            Application withOrganizationId(String str) {
                Organization organization = getOrganization();
                return toBuilder().setOrganization((organization != null ? organization.toBuilder() : Organization.builder()).setClsId(str).build()).build();
            }
        }

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder.class */
        public static abstract class Builder {
            public abstract Session build();

            public abstract Builder setApp(Application application);

            public abstract Builder setCrashed(boolean z);

            public abstract Builder setDevice(Device device);

            public abstract Builder setEndedAt(Long l);

            public abstract Builder setEvents(ImmutableList<Event> immutableList);

            public abstract Builder setGenerator(String str);

            public abstract Builder setGeneratorType(int i);

            public abstract Builder setIdentifier(String str);

            public Builder setIdentifierFromUtf8Bytes(byte[] bArr) {
                return setIdentifier(new String(bArr, CrashlyticsReport.UTF_8));
            }

            public abstract Builder setOs(OperatingSystem operatingSystem);

            public abstract Builder setStartedAt(long j);

            public abstract Builder setUser(User user);
        }

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device.class */
        public static abstract class Device {

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder.class */
            public static abstract class Builder {
                public abstract Device build();

                public abstract Builder setArch(int i);

                public abstract Builder setCores(int i);

                public abstract Builder setDiskSpace(long j);

                public abstract Builder setManufacturer(String str);

                public abstract Builder setModel(String str);

                public abstract Builder setModelClass(String str);

                public abstract Builder setRam(long j);

                public abstract Builder setSimulator(boolean z);

                public abstract Builder setState(int i);
            }

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Device.Builder();
            }

            public abstract int getArch();

            public abstract int getCores();

            public abstract long getDiskSpace();

            public abstract String getManufacturer();

            public abstract String getModel();

            public abstract String getModelClass();

            public abstract long getRam();

            public abstract int getState();

            public abstract boolean isSimulator();
        }

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event.class */
        public static abstract class Event {

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application.class */
            public static abstract class Application {

                /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder.class */
                public static abstract class Builder {
                    public abstract Application build();

                    public abstract Builder setBackground(Boolean bool);

                    public abstract Builder setCustomAttributes(ImmutableList<CustomAttribute> immutableList);

                    public abstract Builder setExecution(Execution execution);

                    public abstract Builder setUiOrientation(int i);
                }

                /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution.class */
                public static abstract class Execution {

                    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage.class */
                    public static abstract class BinaryImage {

                        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$BinaryImage$Builder.class */
                        public static abstract class Builder {
                            public abstract BinaryImage build();

                            public abstract Builder setBaseAddress(long j);

                            public abstract Builder setName(String str);

                            public abstract Builder setSize(long j);

                            public abstract Builder setUuid(String str);

                            public Builder setUuidFromUtf8Bytes(byte[] bArr) {
                                return setUuid(new String(bArr, CrashlyticsReport.UTF_8));
                            }
                        }

                        public static Builder builder() {
                            return new C15710xfe724d07.Builder();
                        }

                        public abstract long getBaseAddress();

                        public abstract String getName();

                        public abstract long getSize();

                        public abstract String getUuid();

                        public byte[] getUuidUtf8Bytes() {
                            String uuid = getUuid();
                            if (uuid != null) {
                                return uuid.getBytes(CrashlyticsReport.UTF_8);
                            }
                            return null;
                        }
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Builder.class */
                    public static abstract class Builder {
                        public abstract Execution build();

                        public abstract Builder setBinaries(ImmutableList<BinaryImage> immutableList);

                        public abstract Builder setException(Exception exception);

                        public abstract Builder setSignal(Signal signal);

                        public abstract Builder setThreads(ImmutableList<Thread> immutableList);
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Exception.class */
                    public static abstract class Exception {

                        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Exception$Builder.class */
                        public static abstract class Builder {
                            public abstract Exception build();

                            public abstract Builder setCausedBy(Exception exception);

                            public abstract Builder setFrames(ImmutableList<Thread.Frame> immutableList);

                            public abstract Builder setOverflowCount(int i);

                            public abstract Builder setReason(String str);

                            public abstract Builder setType(String str);
                        }

                        public static Builder builder() {
                            return new C15712xc2f5febc.Builder();
                        }

                        public abstract Exception getCausedBy();

                        public abstract ImmutableList<Thread.Frame> getFrames();

                        public abstract int getOverflowCount();

                        public abstract String getReason();

                        public abstract String getType();
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Signal.class */
                    public static abstract class Signal {

                        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Signal$Builder.class */
                        public static abstract class Builder {
                            public abstract Signal build();

                            public abstract Builder setAddress(long j);

                            public abstract Builder setCode(String str);

                            public abstract Builder setName(String str);
                        }

                        public static Builder builder() {
                            return new C15714x7c929f5b.Builder();
                        }

                        public abstract long getAddress();

                        public abstract String getCode();

                        public abstract String getName();
                    }

                    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread.class */
                    public static abstract class Thread {

                        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Builder.class */
                        public static abstract class Builder {
                            public abstract Thread build();

                            public abstract Builder setFrames(ImmutableList<Frame> immutableList);

                            public abstract Builder setImportance(int i);

                            public abstract Builder setName(String str);
                        }

                        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame.class */
                        public static abstract class Frame {

                            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Execution$Thread$Frame$Builder.class */
                            public static abstract class Builder {
                                public abstract Frame build();

                                public abstract Builder setFile(String str);

                                public abstract Builder setImportance(int i);

                                public abstract Builder setOffset(long j);

                                public abstract Builder setPc(long j);

                                public abstract Builder setSymbol(String str);
                            }

                            public static Builder builder() {
                                return new C15718xce3d994b.Builder();
                            }

                            public abstract String getFile();

                            public abstract int getImportance();

                            public abstract long getOffset();

                            public abstract long getPc();

                            public abstract String getSymbol();
                        }

                        public static Builder builder() {
                            return new C15716x7e3e3ebd.Builder();
                        }

                        public abstract ImmutableList<Frame> getFrames();

                        public abstract int getImportance();

                        public abstract String getName();
                    }

                    public static Builder builder() {
                        return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution.Builder();
                    }

                    public abstract ImmutableList<BinaryImage> getBinaries();

                    public abstract Exception getException();

                    public abstract Signal getSignal();

                    public abstract ImmutableList<Thread> getThreads();
                }

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Application.Builder();
                }

                public abstract Boolean getBackground();

                public abstract ImmutableList<CustomAttribute> getCustomAttributes();

                public abstract Execution getExecution();

                public abstract int getUiOrientation();

                public abstract Builder toBuilder();
            }

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder.class */
            public static abstract class Builder {
                public abstract Event build();

                public abstract Builder setApp(Application application);

                public abstract Builder setDevice(Device device);

                public abstract Builder setLog(Log log);

                public abstract Builder setTimestamp(long j);

                public abstract Builder setType(String str);
            }

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Device.class */
            public static abstract class Device {

                /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Device$Builder.class */
                public static abstract class Builder {
                    public abstract Device build();

                    public abstract Builder setBatteryLevel(Double d);

                    public abstract Builder setBatteryVelocity(int i);

                    public abstract Builder setDiskUsed(long j);

                    public abstract Builder setOrientation(int i);

                    public abstract Builder setProximityOn(boolean z);

                    public abstract Builder setRamUsed(long j);
                }

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Device.Builder();
                }

                public abstract Double getBatteryLevel();

                public abstract int getBatteryVelocity();

                public abstract long getDiskUsed();

                public abstract int getOrientation();

                public abstract long getRamUsed();

                public abstract boolean isProximityOn();
            }

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log.class */
            public static abstract class Log {

                /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log$Builder.class */
                public static abstract class Builder {
                    public abstract Log build();

                    public abstract Builder setContent(String str);
                }

                public static Builder builder() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Log.Builder();
                }

                public abstract String getContent();
            }

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_Event.Builder();
            }

            public abstract Application getApp();

            public abstract Device getDevice();

            public abstract Log getLog();

            public abstract long getTimestamp();

            public abstract String getType();

            public abstract Builder toBuilder();
        }

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem.class */
        public static abstract class OperatingSystem {

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem$Builder.class */
            public static abstract class Builder {
                public abstract OperatingSystem build();

                public abstract Builder setBuildVersion(String str);

                public abstract Builder setJailbroken(boolean z);

                public abstract Builder setPlatform(int i);

                public abstract Builder setVersion(String str);
            }

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_OperatingSystem.Builder();
            }

            public abstract String getBuildVersion();

            public abstract int getPlatform();

            public abstract String getVersion();

            public abstract boolean isJailbroken();
        }

        /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User.class */
        public static abstract class User {

            /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User$Builder.class */
            public static abstract class Builder {
                public abstract User build();

                public abstract Builder setIdentifier(String str);
            }

            public static Builder builder() {
                return new AutoValue_CrashlyticsReport_Session_User.Builder();
            }

            public abstract String getIdentifier();
        }

        public static Builder builder() {
            return new AutoValue_CrashlyticsReport_Session.Builder().setCrashed(false);
        }

        public abstract Application getApp();

        public abstract Device getDevice();

        public abstract Long getEndedAt();

        public abstract ImmutableList<Event> getEvents();

        public abstract String getGenerator();

        public abstract int getGeneratorType();

        public abstract String getIdentifier();

        public byte[] getIdentifierUtf8Bytes() {
            return getIdentifier().getBytes(CrashlyticsReport.UTF_8);
        }

        public abstract OperatingSystem getOs();

        public abstract long getStartedAt();

        public abstract User getUser();

        public abstract boolean isCrashed();

        public abstract Builder toBuilder();

        Session withEvents(ImmutableList<Event> immutableList) {
            return toBuilder().setEvents(immutableList).build();
        }

        Session withOrganizationId(String str) {
            return toBuilder().setApp(getApp().withOrganizationId(str)).build();
        }

        Session withSessionEndFields(long j, boolean z, String str) {
            Builder builder = toBuilder();
            builder.setEndedAt(Long.valueOf(j));
            builder.setCrashed(z);
            if (str != null) {
                builder.setUser(User.builder().setIdentifier(str).build()).build();
            }
            return builder.build();
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/model/CrashlyticsReport$Type.class */
    public enum Type {
        INCOMPLETE,
        JAVA,
        NATIVE
    }

    public static Builder builder() {
        return new AutoValue_CrashlyticsReport.Builder();
    }

    public abstract String getBuildVersion();

    public abstract String getDisplayVersion();

    public abstract String getGmpAppId();

    public abstract String getInstallationUuid();

    public abstract FilesPayload getNdkPayload();

    public abstract int getPlatform();

    public abstract String getSdkVersion();

    public abstract Session getSession();

    public Type getType() {
        return getSession() != null ? Type.JAVA : getNdkPayload() != null ? Type.NATIVE : Type.INCOMPLETE;
    }

    protected abstract Builder toBuilder();

    public CrashlyticsReport withEvents(ImmutableList<Session.Event> immutableList) {
        if (getSession() != null) {
            return toBuilder().setSession(getSession().withEvents(immutableList)).build();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    public CrashlyticsReport withNdkPayload(FilesPayload filesPayload) {
        return toBuilder().setSession(null).setNdkPayload(filesPayload).build();
    }

    public CrashlyticsReport withOrganizationId(String str) {
        Builder builder = toBuilder();
        FilesPayload ndkPayload = getNdkPayload();
        if (ndkPayload != null) {
            builder.setNdkPayload(ndkPayload.toBuilder().setOrgId(str).build());
        }
        Session session = getSession();
        if (session != null) {
            builder.setSession(session.withOrganizationId(str));
        }
        return builder.build();
    }

    public CrashlyticsReport withSessionEndFields(long j, boolean z, String str) {
        Builder builder = toBuilder();
        if (getSession() != null) {
            builder.setSession(getSession().withSessionEndFields(j, z, str));
        }
        return builder.build();
    }
}
