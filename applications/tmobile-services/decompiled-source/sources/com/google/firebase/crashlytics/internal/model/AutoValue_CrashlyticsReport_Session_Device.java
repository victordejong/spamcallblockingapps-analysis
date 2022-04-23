package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device.class */
final class AutoValue_CrashlyticsReport_Session_Device extends CrashlyticsReport.Session.Device {
    private final int arch;
    private final int cores;
    private final long diskSpace;
    private final String manufacturer;
    private final String model;
    private final String modelClass;
    private final long ram;
    private final boolean simulator;
    private final int state;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder.class */
    public static final class Builder extends CrashlyticsReport.Session.Device.Builder {
        private Integer arch;
        private Integer cores;
        private Long diskSpace;
        private String manufacturer;
        private String model;
        private String modelClass;
        private Long ram;
        private Boolean simulator;
        private Integer state;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device build() {
            String str = "";
            if (this.arch == null) {
                str = " arch";
            }
            String str2 = str;
            if (this.model == null) {
                str2 = str + " model";
            }
            String str3 = str2;
            if (this.cores == null) {
                str3 = str2 + " cores";
            }
            String str4 = str3;
            if (this.ram == null) {
                str4 = str3 + " ram";
            }
            String str5 = str4;
            if (this.diskSpace == null) {
                str5 = str4 + " diskSpace";
            }
            String str6 = str5;
            if (this.simulator == null) {
                str6 = str5 + " simulator";
            }
            String str7 = str6;
            if (this.state == null) {
                str7 = str6 + " state";
            }
            String str8 = str7;
            if (this.manufacturer == null) {
                str8 = str7 + " manufacturer";
            }
            String str9 = str8;
            if (this.modelClass == null) {
                str9 = str8 + " modelClass";
            }
            if (str9.isEmpty()) {
                return new AutoValue_CrashlyticsReport_Session_Device(this.arch.intValue(), this.model, this.cores.intValue(), this.ram.longValue(), this.diskSpace.longValue(), this.simulator.booleanValue(), this.state.intValue(), this.manufacturer, this.modelClass);
            }
            throw new IllegalStateException("Missing required properties:" + str9);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setArch(int i) {
            this.arch = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setCores(int i) {
            this.cores = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setDiskSpace(long j) {
            this.diskSpace = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setManufacturer(String str) {
            if (str != null) {
                this.manufacturer = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setModel(String str) {
            if (str != null) {
                this.model = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setModelClass(String str) {
            if (str != null) {
                this.modelClass = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setRam(long j) {
            this.ram = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setSimulator(boolean z) {
            this.simulator = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public CrashlyticsReport.Session.Device.Builder setState(int i) {
            this.state = Integer.valueOf(i);
            return this;
        }
    }

    private AutoValue_CrashlyticsReport_Session_Device(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.arch = i;
        this.model = str;
        this.cores = i2;
        this.ram = j;
        this.diskSpace = j2;
        this.simulator = z;
        this.state = i3;
        this.manufacturer = str2;
        this.modelClass = str3;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Device)) {
            return false;
        }
        CrashlyticsReport.Session.Device device = (CrashlyticsReport.Session.Device) obj;
        if (!(this.arch == device.getArch() && this.model.equals(device.getModel()) && this.cores == device.getCores() && this.ram == device.getRam() && this.diskSpace == device.getDiskSpace() && this.simulator == device.isSimulator() && this.state == device.getState() && this.manufacturer.equals(device.getManufacturer()) && this.modelClass.equals(device.getModelClass()))) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    @NonNull
    public int getArch() {
        return this.arch;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public int getCores() {
        return this.cores;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public long getDiskSpace() {
        return this.diskSpace;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    @NonNull
    public String getManufacturer() {
        return this.manufacturer;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    @NonNull
    public String getModel() {
        return this.model;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    @NonNull
    public String getModelClass() {
        return this.modelClass;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public long getRam() {
        return this.ram;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public int getState() {
        return this.state;
    }

    public int hashCode() {
        int i = this.arch;
        int hashCode = this.model.hashCode();
        int i2 = this.cores;
        long j = this.ram;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.diskSpace;
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.simulator ? 1231 : 1237)) * 1000003) ^ this.state) * 1000003) ^ this.manufacturer.hashCode()) * 1000003) ^ this.modelClass.hashCode();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public boolean isSimulator() {
        return this.simulator;
    }

    public String toString() {
        return "Device{arch=" + this.arch + ", model=" + this.model + ", cores=" + this.cores + ", ram=" + this.ram + ", diskSpace=" + this.diskSpace + ", simulator=" + this.simulator + ", state=" + this.state + ", manufacturer=" + this.manufacturer + ", modelClass=" + this.modelClass + "}";
    }
}
