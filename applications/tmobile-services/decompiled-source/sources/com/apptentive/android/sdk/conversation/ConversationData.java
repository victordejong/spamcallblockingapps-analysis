package com.apptentive.android.sdk.conversation;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.DataChangedListener;
import com.apptentive.android.sdk.storage.Device;
import com.apptentive.android.sdk.storage.DeviceDataChangedListener;
import com.apptentive.android.sdk.storage.EventData;
import com.apptentive.android.sdk.storage.Person;
import com.apptentive.android.sdk.storage.PersonDataChangedListener;
import com.apptentive.android.sdk.storage.Saveable;
import com.apptentive.android.sdk.storage.Sdk;
import com.apptentive.android.sdk.storage.VersionHistory;
import com.apptentive.android.sdk.util.StringUtils;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/conversation/ConversationData.class */
public class ConversationData implements Saveable, DataChangedListener, DeviceDataChangedListener, PersonDataChangedListener {
    private static final long serialVersionUID = 1;
    private String conversationId;
    private String conversationToken;
    private transient DeviceDataChangedListener deviceDataListener;
    private double interactionExpiration;
    private String interactions;
    private String lastSeenSdkVersion;
    private Device lastSentDevice;
    private Person lastSentPerson;
    private transient DataChangedListener listener;
    private boolean messageCenterFeatureUsed;
    private String messageCenterPendingAttachments;
    private String messageCenterPendingMessage;
    private boolean messageCenterWhoCardPreviouslyDisplayed;
    private transient PersonDataChangedListener personDataListener;
    private String targets;
    private String localIdentifier = UUID.randomUUID().toString();
    private Device device = new Device();
    private Person person = new Person();
    private Sdk sdk = new Sdk();
    private AppRelease appRelease = new AppRelease();
    private EventData eventData = new EventData();
    private VersionHistory versionHistory = new VersionHistory();

    public AppRelease getAppRelease() {
        return this.appRelease;
    }

    public String getConversationId() {
        return this.conversationId;
    }

    public String getConversationToken() {
        return this.conversationToken;
    }

    @NonNull
    public Device getDevice() {
        return this.device;
    }

    public EventData getEventData() {
        return this.eventData;
    }

    public double getInteractionExpiration() {
        return this.interactionExpiration;
    }

    public String getInteractions() {
        return this.interactions;
    }

    public String getLastSeenSdkVersion() {
        return this.lastSeenSdkVersion;
    }

    public Device getLastSentDevice() {
        return this.lastSentDevice;
    }

    public Person getLastSentPerson() {
        return this.lastSentPerson;
    }

    public String getLocalIdentifier() {
        return this.localIdentifier;
    }

    @Nullable
    public String getMParticleId() {
        return getPerson().getMParticleId();
    }

    public String getMessageCenterPendingAttachments() {
        return this.messageCenterPendingAttachments;
    }

    public String getMessageCenterPendingMessage() {
        return this.messageCenterPendingMessage;
    }

    @NonNull
    public Person getPerson() {
        return this.person;
    }

    public Sdk getSdk() {
        return this.sdk;
    }

    public String getTargets() {
        return this.targets;
    }

    public VersionHistory getVersionHistory() {
        return this.versionHistory;
    }

    public boolean isMessageCenterFeatureUsed() {
        return this.messageCenterFeatureUsed;
    }

    public boolean isMessageCenterWhoCardPreviouslyDisplayed() {
        return this.messageCenterWhoCardPreviouslyDisplayed;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        DataChangedListener dataChangedListener = this.listener;
        if (dataChangedListener != null) {
            dataChangedListener.onDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.DataChangedListener
    public void onDataChanged() {
        notifyDataChanged();
    }

    @Override // com.apptentive.android.sdk.storage.DeviceDataChangedListener
    public void onDeviceDataChanged() {
        DeviceDataChangedListener deviceDataChangedListener = this.deviceDataListener;
        if (deviceDataChangedListener != null) {
            deviceDataChangedListener.onDeviceDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.PersonDataChangedListener
    public void onPersonDataChanged() {
        PersonDataChangedListener personDataChangedListener = this.personDataListener;
        if (personDataChangedListener != null) {
            personDataChangedListener.onPersonDataChanged();
        }
    }

    public void setAppRelease(AppRelease appRelease) {
        this.appRelease = appRelease;
        notifyDataChanged();
    }

    public void setConversationId(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Conversation id is null");
        } else if (!StringUtils.equal(this.conversationId, str)) {
            this.conversationId = str;
            notifyDataChanged();
        }
    }

    public void setConversationToken(String str) {
        if (!StringUtils.equal(this.conversationToken, str)) {
            this.conversationToken = str;
            notifyDataChanged();
        }
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
        this.device.setDataChangedListener(this);
        this.device.setDeviceDataChangedListener(this);
        this.person.setDataChangedListener(this);
        this.person.setPersonDataChangedListener(this);
        this.eventData.setDataChangedListener(this);
        this.versionHistory.setDataChangedListener(this);
    }

    public void setDevice(@NonNull Device device) {
        Assert.assertNotNull(device, "Device may not be null.");
        this.device = device;
        device.setDataChangedListener(this);
        device.setDeviceDataChangedListener(this);
        notifyDataChanged();
    }

    public void setDeviceDataListener(DeviceDataChangedListener deviceDataChangedListener) {
        this.deviceDataListener = deviceDataChangedListener;
    }

    public void setEventData(EventData eventData) {
        this.eventData = eventData;
        eventData.setDataChangedListener(this);
        notifyDataChanged();
    }

    public void setInteractionExpiration(double d) {
        if (this.interactionExpiration != d) {
            this.interactionExpiration = d;
            notifyDataChanged();
        }
    }

    public void setInteractions(String str) {
        if (!StringUtils.equal(this.interactions, str)) {
            this.interactions = str;
            notifyDataChanged();
        }
    }

    public void setLastSeenSdkVersion(String str) {
        this.lastSeenSdkVersion = str;
        notifyDataChanged();
    }

    public void setLastSentDevice(Device device) {
        this.lastSentDevice = device;
        device.setDataChangedListener(this);
        notifyDataChanged();
    }

    public void setLastSentPerson(Person person) {
        this.lastSentPerson = person;
        person.setDataChangedListener(this);
        notifyDataChanged();
    }

    public void setMParticleId(@Nullable String str) {
        getPerson().setMParticleId(str);
    }

    public void setMessageCenterFeatureUsed(boolean z) {
        if (this.messageCenterFeatureUsed != z) {
            this.messageCenterFeatureUsed = z;
            notifyDataChanged();
        }
    }

    public void setMessageCenterPendingAttachments(String str) {
        if (!StringUtils.equal(this.messageCenterPendingAttachments, str)) {
            this.messageCenterPendingAttachments = str;
            notifyDataChanged();
        }
    }

    public void setMessageCenterPendingMessage(String str) {
        if (!StringUtils.equal(this.messageCenterPendingMessage, str)) {
            this.messageCenterPendingMessage = str;
            notifyDataChanged();
        }
    }

    public void setMessageCenterWhoCardPreviouslyDisplayed(boolean z) {
        if (this.messageCenterWhoCardPreviouslyDisplayed != z) {
            this.messageCenterWhoCardPreviouslyDisplayed = z;
            notifyDataChanged();
        }
    }

    public void setPerson(@NonNull Person person) {
        Assert.assertNotNull(person, "Person may not be null.");
        this.person = person;
        person.setDataChangedListener(this);
        this.person.setPersonDataChangedListener(this);
        notifyDataChanged();
    }

    public void setPersonDataListener(PersonDataChangedListener personDataChangedListener) {
        this.personDataListener = personDataChangedListener;
    }

    public void setSdk(Sdk sdk) {
        this.sdk = sdk;
        notifyDataChanged();
    }

    public void setTargets(String str) {
        if (!StringUtils.equal(this.targets, str)) {
            this.targets = str;
            notifyDataChanged();
        }
    }

    public void setVersionHistory(VersionHistory versionHistory) {
        this.versionHistory = versionHistory;
        versionHistory.setDataChangedListener(this);
        notifyDataChanged();
    }
}
