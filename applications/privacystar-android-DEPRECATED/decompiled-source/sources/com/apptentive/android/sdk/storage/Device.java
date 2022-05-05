package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.util.StringUtils;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/Device.class */
public class Device implements Saveable, DataChangedListener {
    private static final long serialVersionUID = 1;
    private String advertiserId;
    private String board;
    private String bootloaderVersion;
    private String brand;
    private String buildId;
    private String buildType;
    private String carrier;
    private String cpu;
    private String currentCarrier;
    private String device;
    private transient DeviceDataChangedListener deviceDataChangedListener;
    private transient DataChangedListener listener;
    private String localeCountryCode;
    private String localeLanguageCode;
    private String localeRaw;
    private String manufacturer;
    private String model;
    private String networkType;
    private int osApiLevel;
    private String osBuild;
    private String osName;
    private String osVersion;
    private String product;
    private String radioVersion;
    private String utcOffset;
    private String uuid;
    private CustomData customData = new CustomData();
    private IntegrationConfig integrationConfig = new IntegrationConfig();

    public Device clone() {
        Device device = new Device();
        device.uuid = this.uuid;
        device.osName = this.osName;
        device.osVersion = this.osVersion;
        device.osBuild = this.osBuild;
        device.osApiLevel = this.osApiLevel;
        device.manufacturer = this.manufacturer;
        device.model = this.model;
        device.board = this.board;
        device.product = this.product;
        device.brand = this.brand;
        device.cpu = this.cpu;
        device.device = this.device;
        device.carrier = this.carrier;
        device.currentCarrier = this.currentCarrier;
        device.networkType = this.networkType;
        device.buildType = this.buildType;
        device.buildId = this.buildId;
        device.bootloaderVersion = this.bootloaderVersion;
        device.radioVersion = this.radioVersion;
        if (this.customData != null) {
            device.customData.putAll(this.customData);
        }
        device.localeCountryCode = this.localeCountryCode;
        device.localeLanguageCode = this.localeLanguageCode;
        device.localeRaw = this.localeRaw;
        device.utcOffset = this.utcOffset;
        device.advertiserId = this.advertiserId;
        if (this.integrationConfig != null) {
            device.integrationConfig = this.integrationConfig.clone();
        }
        device.listener = this.listener;
        device.deviceDataChangedListener = this.deviceDataChangedListener;
        return device;
    }

    public String getAdvertiserId() {
        return this.advertiserId;
    }

    public String getBoard() {
        return this.board;
    }

    public String getBootloaderVersion() {
        return this.bootloaderVersion;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getBuildId() {
        return this.buildId;
    }

    public String getBuildType() {
        return this.buildType;
    }

    public String getCarrier() {
        return this.carrier;
    }

    public String getCpu() {
        return this.cpu;
    }

    public String getCurrentCarrier() {
        return this.currentCarrier;
    }

    public CustomData getCustomData() {
        return this.customData;
    }

    public String getDevice() {
        return this.device;
    }

    public IntegrationConfig getIntegrationConfig() {
        return this.integrationConfig;
    }

    public String getLocaleCountryCode() {
        return this.localeCountryCode;
    }

    public String getLocaleLanguageCode() {
        return this.localeLanguageCode;
    }

    public String getLocaleRaw() {
        return this.localeRaw;
    }

    public String getManufacturer() {
        return this.manufacturer;
    }

    public String getModel() {
        return this.model;
    }

    public String getNetworkType() {
        return this.networkType;
    }

    public int getOsApiLevel() {
        return this.osApiLevel;
    }

    public String getOsBuild() {
        return this.osBuild;
    }

    public String getOsName() {
        return this.osName;
    }

    public String getOsVersion() {
        return this.osVersion;
    }

    public String getProduct() {
        return this.product;
    }

    public String getRadioVersion() {
        return this.radioVersion;
    }

    public String getUtcOffset() {
        return this.utcOffset;
    }

    public String getUuid() {
        return this.uuid;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        if (this.deviceDataChangedListener != null) {
            this.deviceDataChangedListener.onDeviceDataChanged();
        }
        if (this.listener != null) {
            this.listener.onDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.DataChangedListener
    public void onDataChanged() {
        notifyDataChanged();
    }

    public void setAdvertiserId(String str) {
        if (!StringUtils.equal(this.advertiserId, str)) {
            this.advertiserId = str;
            notifyDataChanged();
        }
    }

    public void setBoard(String str) {
        if (!StringUtils.equal(this.board, str)) {
            this.board = str;
            notifyDataChanged();
        }
    }

    public void setBootloaderVersion(String str) {
        if (!StringUtils.equal(this.bootloaderVersion, str)) {
            this.bootloaderVersion = str;
            notifyDataChanged();
        }
    }

    public void setBrand(String str) {
        if (!StringUtils.equal(this.brand, str)) {
            this.brand = str;
            notifyDataChanged();
        }
    }

    public void setBuildId(String str) {
        if (!StringUtils.equal(this.buildId, str)) {
            this.buildId = str;
            notifyDataChanged();
        }
    }

    public void setBuildType(String str) {
        if (!StringUtils.equal(this.buildType, str)) {
            this.buildType = str;
            notifyDataChanged();
        }
    }

    public void setCarrier(String str) {
        if (!StringUtils.equal(this.carrier, str)) {
            this.carrier = str;
            notifyDataChanged();
        }
    }

    public void setCpu(String str) {
        if (!StringUtils.equal(this.cpu, str)) {
            this.cpu = str;
            notifyDataChanged();
        }
    }

    public void setCurrentCarrier(String str) {
        if (!StringUtils.equal(this.currentCarrier, str)) {
            this.currentCarrier = str;
            notifyDataChanged();
        }
    }

    public void setCustomData(CustomData customData) {
        this.customData = customData;
        this.customData.setDataChangedListener(this);
        notifyDataChanged();
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
        this.customData.setDataChangedListener(this);
        this.integrationConfig.setDataChangedListener(this);
    }

    public void setDevice(String str) {
        if (!StringUtils.equal(this.device, str)) {
            this.device = str;
            notifyDataChanged();
        }
    }

    public void setDeviceDataChangedListener(DeviceDataChangedListener deviceDataChangedListener) {
        this.deviceDataChangedListener = deviceDataChangedListener;
    }

    public void setIntegrationConfig(IntegrationConfig integrationConfig) {
        if (integrationConfig == null) {
            throw new IllegalArgumentException("Integration config is null");
        }
        this.integrationConfig = integrationConfig;
        this.integrationConfig.setDataChangedListener(this);
        notifyDataChanged();
    }

    public void setLocaleCountryCode(String str) {
        if (!StringUtils.equal(this.localeCountryCode, str)) {
            this.localeCountryCode = str;
            notifyDataChanged();
        }
    }

    public void setLocaleLanguageCode(String str) {
        if (!StringUtils.equal(this.localeLanguageCode, str)) {
            this.localeLanguageCode = str;
            notifyDataChanged();
        }
    }

    public void setLocaleRaw(String str) {
        if (!StringUtils.equal(this.localeRaw, str)) {
            this.localeRaw = str;
            notifyDataChanged();
        }
    }

    public void setManufacturer(String str) {
        if (!StringUtils.equal(this.manufacturer, str)) {
            this.manufacturer = str;
            notifyDataChanged();
        }
    }

    public void setModel(String str) {
        if (!StringUtils.equal(this.model, str)) {
            this.model = str;
            notifyDataChanged();
        }
    }

    public void setNetworkType(String str) {
        if (!StringUtils.equal(this.networkType, str)) {
            this.networkType = str;
            notifyDataChanged();
        }
    }

    public void setOsApiLevel(int i) {
        if (this.osApiLevel != i) {
            this.osApiLevel = i;
            notifyDataChanged();
        }
    }

    public void setOsBuild(String str) {
        if (!StringUtils.equal(this.osBuild, str)) {
            this.osBuild = str;
            notifyDataChanged();
        }
    }

    public void setOsName(String str) {
        if (!StringUtils.equal(this.osName, str)) {
            this.osName = str;
            notifyDataChanged();
        }
    }

    public void setOsVersion(String str) {
        if (!StringUtils.equal(this.osVersion, str)) {
            this.osVersion = str;
            notifyDataChanged();
        }
    }

    public void setProduct(String str) {
        if (!StringUtils.equal(this.product, str)) {
            this.product = str;
            notifyDataChanged();
        }
    }

    public void setRadioVersion(String str) {
        if (!StringUtils.equal(this.radioVersion, str)) {
            this.radioVersion = str;
            notifyDataChanged();
        }
    }

    public void setUtcOffset(String str) {
        if (!StringUtils.equal(this.utcOffset, str)) {
            this.utcOffset = str;
            notifyDataChanged();
        }
    }

    public void setUuid(String str) {
        if (!StringUtils.equal(this.uuid, str)) {
            this.uuid = str;
            notifyDataChanged();
        }
    }
}
