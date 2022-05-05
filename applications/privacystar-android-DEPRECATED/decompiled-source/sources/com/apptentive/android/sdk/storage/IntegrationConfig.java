package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.model.CustomData;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/IntegrationConfig.class */
public class IntegrationConfig implements Saveable {
    private static final String INTEGRATION_APPTENTIVE_PUSH = "apptentive_push";
    private static final String INTEGRATION_AWS_SNS = "aws_sns";
    private static final String INTEGRATION_PARSE = "parse";
    private static final String INTEGRATION_URBAN_AIRSHIP = "urban_airship";
    private static final long serialVersionUID = 1;
    private IntegrationConfigItem amazonAwsSns;
    private IntegrationConfigItem apptentive;
    private transient DataChangedListener listener;
    private IntegrationConfigItem parse;
    private IntegrationConfigItem urbanAirship;

    public IntegrationConfig clone() {
        IntegrationConfig integrationConfig = new IntegrationConfig();
        IntegrationConfigItem integrationConfigItem = null;
        integrationConfig.apptentive = this.apptentive != null ? this.apptentive.clone() : null;
        integrationConfig.amazonAwsSns = this.amazonAwsSns != null ? this.amazonAwsSns.clone() : null;
        integrationConfig.urbanAirship = this.urbanAirship != null ? this.urbanAirship.clone() : null;
        if (this.parse != null) {
            integrationConfigItem = this.parse.clone();
        }
        integrationConfig.parse = integrationConfigItem;
        integrationConfig.listener = this.listener;
        return integrationConfig;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        IntegrationConfig integrationConfig = (IntegrationConfig) obj;
        if (this.apptentive != null) {
            if (!this.apptentive.equals(integrationConfig.apptentive)) {
                return false;
            }
        } else if (integrationConfig.apptentive != null) {
            return false;
        }
        if (this.amazonAwsSns != null) {
            if (!this.amazonAwsSns.equals(integrationConfig.amazonAwsSns)) {
                return false;
            }
        } else if (integrationConfig.amazonAwsSns != null) {
            return false;
        }
        if (this.urbanAirship != null) {
            if (!this.urbanAirship.equals(integrationConfig.urbanAirship)) {
                return false;
            }
        } else if (integrationConfig.urbanAirship != null) {
            return false;
        }
        if (this.parse != null) {
            z = this.parse.equals(integrationConfig.parse);
        } else if (integrationConfig.parse != null) {
            z = false;
        }
        return z;
    }

    public IntegrationConfigItem getAmazonAwsSns() {
        return this.amazonAwsSns;
    }

    public IntegrationConfigItem getApptentive() {
        return this.apptentive;
    }

    public IntegrationConfigItem getParse() {
        return this.parse;
    }

    public IntegrationConfigItem getUrbanAirship() {
        return this.urbanAirship;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.apptentive != null ? this.apptentive.hashCode() : 0;
        int hashCode2 = this.amazonAwsSns != null ? this.amazonAwsSns.hashCode() : 0;
        int hashCode3 = this.urbanAirship != null ? this.urbanAirship.hashCode() : 0;
        if (this.parse != null) {
            i = this.parse.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        if (this.listener != null) {
            this.listener.onDataChanged();
        }
    }

    public void setAmazonAwsSns(IntegrationConfigItem integrationConfigItem) {
        this.amazonAwsSns = integrationConfigItem;
        notifyDataChanged();
    }

    public void setApptentive(IntegrationConfigItem integrationConfigItem) {
        this.apptentive = integrationConfigItem;
        notifyDataChanged();
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void setDataChangedListener(DataChangedListener dataChangedListener) {
        this.listener = dataChangedListener;
    }

    public void setParse(IntegrationConfigItem integrationConfigItem) {
        this.parse = integrationConfigItem;
        notifyDataChanged();
    }

    public void setUrbanAirship(IntegrationConfigItem integrationConfigItem) {
        this.urbanAirship = integrationConfigItem;
        notifyDataChanged();
    }

    public CustomData toJson() {
        try {
            CustomData customData = new CustomData();
            if (this.apptentive != null) {
                customData.put(INTEGRATION_APPTENTIVE_PUSH, this.apptentive.toJson());
            }
            if (this.amazonAwsSns != null) {
                customData.put(INTEGRATION_AWS_SNS, this.amazonAwsSns.toJson());
            }
            if (this.urbanAirship != null) {
                customData.put(INTEGRATION_URBAN_AIRSHIP, this.urbanAirship.toJson());
            }
            if (this.parse != null) {
                customData.put(INTEGRATION_PARSE, this.parse.toJson());
            }
            return customData;
        } catch (JSONException e) {
            return null;
        }
    }
}
