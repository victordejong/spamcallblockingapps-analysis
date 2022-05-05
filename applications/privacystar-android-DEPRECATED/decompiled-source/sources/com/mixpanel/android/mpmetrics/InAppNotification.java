package com.mixpanel.android.mpmetrics;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.Parcelable;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.mixpanel.android.util.JSONUtils;
import com.mixpanel.android.util.MPLog;
import com.privacystar.core.service.googleplay.IABConstants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/InAppNotification.class */
public abstract class InAppNotification implements Parcelable {
    private static final Pattern FILE_EXTENSION_PATTERN = Pattern.compile("(\\.[^./]+$)");
    private static final String LOGTAG = "MixpanelAPI.InAppNotif";
    private final int mBackgroundColor;
    private final String mBody;
    private final int mBodyColor;
    protected final JSONObject mDescription;
    protected final JSONObject mExtras;
    protected final int mId;
    private Bitmap mImage;
    private final String mImageUrl;
    protected final int mMessageId;

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/InAppNotification$Type.class */
    public enum Type {
        UNKNOWN { // from class: com.mixpanel.android.mpmetrics.InAppNotification.Type.1
            @Override // java.lang.Enum
            public String toString() {
                return "*unknown_type*";
            }
        },
        MINI { // from class: com.mixpanel.android.mpmetrics.InAppNotification.Type.2
            @Override // java.lang.Enum
            public String toString() {
                return "mini";
            }
        },
        TAKEOVER { // from class: com.mixpanel.android.mpmetrics.InAppNotification.Type.3
            @Override // java.lang.Enum
            public String toString() {
                return "takeover";
            }
        }
    }

    public InAppNotification() {
        this.mDescription = null;
        this.mExtras = null;
        this.mId = 0;
        this.mMessageId = 0;
        this.mBackgroundColor = 0;
        this.mBody = null;
        this.mBodyColor = 0;
        this.mImageUrl = null;
    }

    public InAppNotification(Parcel parcel) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject = new JSONObject(parcel.readString());
        } catch (JSONException e) {
        }
        try {
            jSONObject2 = new JSONObject(parcel.readString());
        } catch (JSONException e2) {
            MPLog.m311e(LOGTAG, "Error reading JSON when creating InAppNotification from Parcel");
            this.mDescription = jSONObject;
            this.mExtras = jSONObject2;
            this.mId = parcel.readInt();
            this.mMessageId = parcel.readInt();
            this.mBackgroundColor = parcel.readInt();
            this.mBody = parcel.readString();
            this.mBodyColor = parcel.readInt();
            this.mImageUrl = parcel.readString();
            this.mImage = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
        }
        this.mDescription = jSONObject;
        this.mExtras = jSONObject2;
        this.mId = parcel.readInt();
        this.mMessageId = parcel.readInt();
        this.mBackgroundColor = parcel.readInt();
        this.mBody = parcel.readString();
        this.mBodyColor = parcel.readInt();
        this.mImageUrl = parcel.readString();
        this.mImage = (Bitmap) parcel.readParcelable(Bitmap.class.getClassLoader());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InAppNotification(JSONObject jSONObject) throws BadDecideObjectException {
        try {
            this.mDescription = jSONObject;
            this.mExtras = jSONObject.getJSONObject("extras");
            this.mId = jSONObject.getInt("id");
            this.mMessageId = jSONObject.getInt("message_id");
            this.mBackgroundColor = jSONObject.getInt("bg_color");
            this.mBody = JSONUtils.optionalStringKey(jSONObject, "body");
            this.mBodyColor = jSONObject.optInt("body_color");
            this.mImageUrl = jSONObject.getString(MessageCenterInteraction.KEY_GREETING_IMAGE);
            this.mImage = Bitmap.createBitmap(500, 500, Bitmap.Config.ARGB_8888);
        } catch (JSONException e) {
            throw new BadDecideObjectException("Notification JSON was unexpected or bad", e);
        }
    }

    static String sizeSuffixUrl(String str, String str2) {
        Matcher matcher = FILE_EXTENSION_PATTERN.matcher(str);
        if (!matcher.find()) {
            return str;
        }
        return matcher.replaceFirst(str2 + "$1");
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public String getBody() {
        return this.mBody;
    }

    public int getBodyColor() {
        return this.mBodyColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject getCampaignProperties() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("campaign_id", getId());
            jSONObject.put("message_id", getMessageId());
            jSONObject.put("message_type", IABConstants.ITEM_TYPE_INAPP);
            jSONObject.put("message_subtype", getType().toString());
        } catch (JSONException e) {
            MPLog.m310e(LOGTAG, "Impossible JSON Exception", e);
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject getExtras() {
        return this.mExtras;
    }

    public int getId() {
        return this.mId;
    }

    public Bitmap getImage() {
        return this.mImage;
    }

    public String getImage2xUrl() {
        return sizeSuffixUrl(this.mImageUrl, "@2x");
    }

    public String getImage4xUrl() {
        return sizeSuffixUrl(this.mImageUrl, "@4x");
    }

    public String getImageUrl() {
        return this.mImageUrl;
    }

    public int getMessageId() {
        return this.mMessageId;
    }

    public abstract Type getType();

    public boolean hasBody() {
        return this.mBody != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImage(Bitmap bitmap) {
        this.mImage = bitmap;
    }

    String toJSON() {
        return this.mDescription.toString();
    }

    public String toString() {
        return this.mDescription.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mDescription.toString());
        parcel.writeString(this.mExtras.toString());
        parcel.writeInt(this.mId);
        parcel.writeInt(this.mMessageId);
        parcel.writeInt(this.mBackgroundColor);
        parcel.writeString(this.mBody);
        parcel.writeInt(this.mBodyColor);
        parcel.writeString(this.mImageUrl);
        parcel.writeParcelable(this.mImage, i);
    }
}
