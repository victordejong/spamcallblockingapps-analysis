package com.apptentive.android.sdk.storage;

import com.apptentive.android.sdk.debug.ErrorMetrics;
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
        IntegrationConfigItem integrationConfigItem = this.apptentive;
        IntegrationConfigItem integrationConfigItem2 = null;
        integrationConfig.apptentive = integrationConfigItem != null ? integrationConfigItem.clone() : null;
        IntegrationConfigItem integrationConfigItem3 = this.amazonAwsSns;
        integrationConfig.amazonAwsSns = integrationConfigItem3 != null ? integrationConfigItem3.clone() : null;
        IntegrationConfigItem integrationConfigItem4 = this.urbanAirship;
        integrationConfig.urbanAirship = integrationConfigItem4 != null ? integrationConfigItem4.clone() : null;
        IntegrationConfigItem integrationConfigItem5 = this.parse;
        if (integrationConfigItem5 != null) {
            integrationConfigItem2 = integrationConfigItem5.clone();
        }
        integrationConfig.parse = integrationConfigItem2;
        integrationConfig.listener = this.listener;
        return integrationConfig;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || IntegrationConfig.class != obj.getClass()) {
            return false;
        }
        IntegrationConfig integrationConfig = (IntegrationConfig) obj;
        IntegrationConfigItem integrationConfigItem = this.apptentive;
        if (integrationConfigItem != null) {
            if (!integrationConfigItem.equals(integrationConfig.apptentive)) {
                return false;
            }
        } else if (integrationConfig.apptentive != null) {
            return false;
        }
        IntegrationConfigItem integrationConfigItem2 = this.amazonAwsSns;
        if (integrationConfigItem2 != null) {
            if (!integrationConfigItem2.equals(integrationConfig.amazonAwsSns)) {
                return false;
            }
        } else if (integrationConfig.amazonAwsSns != null) {
            return false;
        }
        IntegrationConfigItem integrationConfigItem3 = this.urbanAirship;
        if (integrationConfigItem3 != null) {
            if (!integrationConfigItem3.equals(integrationConfig.urbanAirship)) {
                return false;
            }
        } else if (integrationConfig.urbanAirship != null) {
            return false;
        }
        IntegrationConfigItem integrationConfigItem4 = this.parse;
        IntegrationConfigItem integrationConfigItem5 = integrationConfig.parse;
        if (integrationConfigItem4 != null) {
            z = integrationConfigItem4.equals(integrationConfigItem5);
        } else if (integrationConfigItem5 != null) {
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
        IntegrationConfigItem integrationConfigItem = this.apptentive;
        int i = 0;
        int hashCode = integrationConfigItem != null ? integrationConfigItem.hashCode() : 0;
        IntegrationConfigItem integrationConfigItem2 = this.amazonAwsSns;
        int hashCode2 = integrationConfigItem2 != null ? integrationConfigItem2.hashCode() : 0;
        IntegrationConfigItem integrationConfigItem3 = this.urbanAirship;
        int hashCode3 = integrationConfigItem3 != null ? integrationConfigItem3.hashCode() : 0;
        IntegrationConfigItem integrationConfigItem4 = this.parse;
        if (integrationConfigItem4 != null) {
            i = integrationConfigItem4.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    @Override // com.apptentive.android.sdk.storage.Saveable
    public void notifyDataChanged() {
        DataChangedListener dataChangedListener = this.listener;
        if (dataChangedListener != null) {
            dataChangedListener.onDataChanged();
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
            ErrorMetrics.logException(e);
            return null;
        }
    }
}
