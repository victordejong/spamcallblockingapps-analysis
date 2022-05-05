package com.apptentive.android.sdk.migration;

import android.content.Context;
import android.content.SharedPreferences;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.migration.v4_0_0.AppRelease;
import com.apptentive.android.sdk.migration.v4_0_0.CodePointStore;
import com.apptentive.android.sdk.migration.v4_0_0.Device;
import com.apptentive.android.sdk.migration.v4_0_0.Sdk;
import com.apptentive.android.sdk.migration.v4_0_0.VersionHistoryEntry;
import com.apptentive.android.sdk.migration.v4_0_0.VersionHistoryStore;
import com.apptentive.android.sdk.storage.CustomData;
import com.apptentive.android.sdk.storage.EventData;
import com.apptentive.android.sdk.storage.EventRecord;
import com.apptentive.android.sdk.storage.IntegrationConfig;
import com.apptentive.android.sdk.storage.IntegrationConfigItem;
import com.apptentive.android.sdk.storage.Person;
import com.apptentive.android.sdk.storage.VersionHistory;
import com.apptentive.android.sdk.util.StringUtils;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/migration/Migrator.class */
public class Migrator {
    private Conversation conversation;
    private SharedPreferences prefs;

    public Migrator(Context context, SharedPreferences sharedPreferences, Conversation conversation) {
        this.prefs = sharedPreferences;
        this.conversation = conversation;
    }

    private static Serializable jsonObjectToSerializableType(JSONObject jSONObject) {
        String optString = jSONObject.optString("_type", null);
        if (optString == null) {
            return null;
        }
        try {
            if (optString.equals(Apptentive.Version.TYPE)) {
                return new Apptentive.Version(jSONObject);
            }
            if (optString.equals(Apptentive.DateTime.TYPE)) {
                return new Apptentive.DateTime(jSONObject);
            }
            return null;
        } catch (JSONException e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Error migrating JSONObject.", new Object[0]);
            logException(e);
            return null;
        }
    }

    private static void logException(Exception exc) {
        ErrorMetrics.logException(exc);
    }

    private void migrateAppRelease() {
        String string = this.prefs.getString("app_release", null);
        if (string != null) {
            try {
                AppRelease appRelease = new AppRelease(string);
                com.apptentive.android.sdk.storage.AppRelease appRelease2 = new com.apptentive.android.sdk.storage.AppRelease();
                appRelease2.setAppStore(appRelease.getAppStore());
                appRelease2.setDebug(appRelease.getDebug());
                appRelease2.setIdentifier(appRelease.getIdentifier());
                appRelease2.setInheritStyle(appRelease.getInheritStyle());
                appRelease2.setOverrideStyle(appRelease.getOverrideStyle());
                appRelease2.setTargetSdkVersion(appRelease.getTargetSdkVersion());
                appRelease2.setType(appRelease.getType());
                appRelease2.setVersionCode(appRelease.getVersionCode());
                appRelease2.setVersionName(appRelease.getVersionName());
                this.conversation.setAppRelease(appRelease2);
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Error migrating AppRelease.", new Object[0]);
                logException(e);
            }
        }
    }

    private void migrateDevice() {
        try {
            String string = this.prefs.getString("device", null);
            if (string != null) {
                Device device = new Device(string);
                com.apptentive.android.sdk.storage.Device device2 = new com.apptentive.android.sdk.storage.Device();
                device2.setUuid(device.getUuid());
                device2.setOsName(device.getOsName());
                device2.setOsVersion(device.getOsVersion());
                device2.setOsBuild(device.getOsBuild());
                String osApiLevel = device.getOsApiLevel();
                if (!StringUtils.isNullOrEmpty(osApiLevel)) {
                    device2.setOsApiLevel(Integer.parseInt(osApiLevel));
                }
                device2.setManufacturer(device.getManufacturer());
                device2.setModel(device.getModel());
                device2.setBoard(device.getBoard());
                device2.setProduct(device.getProduct());
                device2.setBrand(device.getBrand());
                device2.setCpu(device.getCpu());
                device2.setDevice(device.getDevice());
                device2.setCarrier(device.getCarrier());
                device2.setCurrentCarrier(device.getCurrentCarrier());
                device2.setNetworkType(device.getNetworkType());
                device2.setBuildType(device.getBuildType());
                device2.setBuildId(device.getBuildId());
                device2.setBootloaderVersion(device.getBootloaderVersion());
                device2.setRadioVersion(device.getRadioVersion());
                device2.setLocaleCountryCode(device.getLocaleCountryCode());
                device2.setLocaleLanguageCode(device.getLocaleLanguageCode());
                device2.setLocaleRaw(device.getLocaleRaw());
                device2.setUtcOffset(device.getUtcOffset());
                JSONObject customData = device.getCustomData();
                if (customData != null) {
                    CustomData customData2 = new CustomData();
                    Iterator<String> keys = customData.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj = customData.get(next);
                        if (obj instanceof JSONObject) {
                            customData2.put(next, jsonObjectToSerializableType((JSONObject) obj));
                        } else {
                            customData2.put(next, (Serializable) obj);
                        }
                    }
                    device2.setCustomData(customData2);
                }
                JSONObject integrationConfig = device.getIntegrationConfig();
                if (integrationConfig != null) {
                    IntegrationConfig integrationConfig2 = new IntegrationConfig();
                    Iterator<String> keys2 = integrationConfig.keys();
                    while (keys2.hasNext()) {
                        String next2 = keys2.next();
                        IntegrationConfigItem integrationConfigItem = new IntegrationConfigItem(integrationConfig);
                        char c = 65535;
                        switch (next2.hashCode()) {
                            case -590438090:
                                if (next2.equals("aws_sns")) {
                                    c = 3;
                                    break;
                                }
                                break;
                            case 87744409:
                                if (next2.equals("urban_airship")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 106437299:
                                if (next2.equals("parse")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 1191986105:
                                if (next2.equals("apptentive_push")) {
                                    c = 0;
                                    break;
                                }
                                break;
                        }
                        if (c == 0) {
                            integrationConfig2.setApptentive(integrationConfigItem);
                        } else if (c == 1) {
                            integrationConfig2.setParse(integrationConfigItem);
                        } else if (c == 2) {
                            integrationConfig2.setUrbanAirship(integrationConfigItem);
                        } else if (c == 3) {
                            integrationConfig2.setAmazonAwsSns(integrationConfigItem);
                        }
                    }
                    device2.setIntegrationConfig(integrationConfig2);
                }
                this.conversation.setDevice(device2);
            }
        } catch (Exception e) {
            ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Error migrating Device.", new Object[0]);
            logException(e);
        }
    }

    private void migrateEventData() {
        EventData eventData = this.conversation.getEventData();
        try {
            CodePointStore codePointStore = new CodePointStore(this.prefs.getString("codePointStore", null));
            Map<String, EventRecord> migrateCodePoints = codePointStore.migrateCodePoints();
            Map<String, EventRecord> migrateInteractions = codePointStore.migrateInteractions();
            if (migrateCodePoints != null) {
                eventData.setEvents(migrateCodePoints);
            }
            if (migrateInteractions != null) {
                eventData.setInteractions(migrateInteractions);
            }
        } catch (Exception e) {
            ApptentiveLog.m15634w(ApptentiveLogTag.CONVERSATION, e, "Error migrating Event Data.", new Object[0]);
            logException(e);
        }
    }

    private void migrateMessageCenter() {
        this.conversation.setMessageCenterFeatureUsed(this.prefs.getBoolean("messageCenterFeatureUsed", false));
        this.conversation.setMessageCenterWhoCardPreviouslyDisplayed(this.prefs.getBoolean("messageCenterWhoCardSet", false));
    }

    private void migratePerson() {
        String string = this.prefs.getString("person", null);
        if (string != null) {
            try {
                Person person = new Person();
                com.apptentive.android.sdk.migration.v4_0_0.Person person2 = new com.apptentive.android.sdk.migration.v4_0_0.Person(string);
                person.setEmail(person2.getEmail());
                person.setBirthday(person2.getBirthday());
                person.setCity(person2.getCity());
                person.setCountry(person2.getCountry());
                person.setFacebookId(person2.getFacebookId());
                person.setId(person2.getId());
                person.setName(person2.getName());
                person.setPhoneNumber(person2.getPhoneNumber());
                person.setStreet(person2.getStreet());
                person.setZip(person2.getZip());
                JSONObject customData = person2.getCustomData();
                if (customData != null) {
                    CustomData customData2 = new CustomData();
                    Iterator<String> keys = customData.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        Object obj = customData.get(next);
                        if (obj instanceof JSONObject) {
                            customData2.put(next, jsonObjectToSerializableType((JSONObject) obj));
                        } else {
                            customData2.put(next, (Serializable) obj);
                        }
                    }
                    person.setCustomData(customData2);
                }
                this.conversation.setPerson(person);
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Error migrating Person.", new Object[0]);
                logException(e);
            }
        }
    }

    private void migrateSdk() {
        String string = this.prefs.getString("sdk", null);
        if (string != null) {
            try {
                Sdk sdk = new Sdk(string);
                com.apptentive.android.sdk.storage.Sdk sdk2 = new com.apptentive.android.sdk.storage.Sdk();
                sdk2.setVersion(sdk.getVersion());
                sdk2.setDistribution(sdk.getDistribution());
                sdk2.setDistributionVersion(sdk.getDistributionVersion());
                sdk2.setPlatform(sdk.getPlatform());
                sdk2.setProgrammingLanguage(sdk.getProgrammingLanguage());
                sdk2.setAuthorName(sdk.getAuthorName());
                sdk2.setAuthorEmail(sdk.getAuthorEmail());
                this.conversation.setSdk(sdk2);
            } catch (Exception e) {
                ApptentiveLog.m15643e(ApptentiveLogTag.CONVERSATION, e, "Error migrating Sdk.", new Object[0]);
                logException(e);
            }
        }
    }

    private void migrateVersionHistory() {
        JSONArray baseArray = VersionHistoryStore.getBaseArray();
        if (baseArray != null) {
            try {
                if (baseArray.length() > 0) {
                    VersionHistory versionHistory = this.conversation.getVersionHistory();
                    for (int i = 0; i < baseArray.length(); i++) {
                        VersionHistoryEntry versionHistoryEntry = new VersionHistoryEntry((JSONObject) baseArray.get(i));
                        versionHistory.updateVersionHistory(versionHistoryEntry.getTimestamp().doubleValue(), Integer.valueOf(versionHistoryEntry.getVersionCode()), versionHistoryEntry.getVersionName());
                    }
                }
            } catch (Exception e) {
                ApptentiveLog.m15634w(ApptentiveLogTag.CONVERSATION, e, "Error migrating VersionHistory entries V2 to V3.", new Object[0]);
                logException(e);
            }
        }
    }

    public void migrate() {
        this.conversation.setLastSeenSdkVersion(this.prefs.getString("lastSeenSdkVersion", null));
        migrateDevice();
        migrateSdk();
        migrateAppRelease();
        migratePerson();
        migrateMessageCenter();
        migrateVersionHistory();
        migrateEventData();
    }
}
