package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.ae;
import com.facebook.internal.h;
import com.facebook.internal.p;
import com.facebook.internal.q;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookRequestError.class */
public final class FacebookRequestError implements Parcelable {
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final String ERROR_CODE_FIELD_KEY = "code";
    private static final String ERROR_CODE_KEY = "error_code";
    private static final String ERROR_IS_TRANSIENT_KEY = "is_transient";
    private static final String ERROR_KEY = "error";
    private static final String ERROR_MESSAGE_FIELD_KEY = "message";
    private static final String ERROR_MSG_KEY = "error_msg";
    private static final String ERROR_REASON_KEY = "error_reason";
    private static final String ERROR_SUB_CODE_KEY = "error_subcode";
    private static final String ERROR_TYPE_FIELD_KEY = "type";
    private static final String ERROR_USER_MSG_KEY = "error_user_msg";
    private static final String ERROR_USER_TITLE_KEY = "error_user_title";
    public static final int INVALID_ERROR_CODE = -1;
    public static final int INVALID_HTTP_STATUS_CODE = -1;
    private final Object batchRequestResult;
    private final a category;
    private final HttpURLConnection connection;
    private final int errorCode;
    private final String errorMessage;
    private final String errorRecoveryMessage;
    private final String errorType;
    private final String errorUserMessage;
    private final String errorUserTitle;
    private final FacebookException exception;
    private final JSONObject requestResult;
    private final JSONObject requestResultBody;
    private final int requestStatusCode;
    private final int subErrorCode;
    static final b HTTP_RANGE_SUCCESS = new b(200, 299);
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new Parcelable.Creator<FacebookRequestError>() { // from class: com.facebook.FacebookRequestError.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ FacebookRequestError createFromParcel(Parcel parcel) {
            return new FacebookRequestError(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/facebook/FacebookRequestError$a.class */
    public enum a {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/FacebookRequestError$b.class */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final int f19367a;

        /* renamed from: b  reason: collision with root package name */
        final int f19368b;

        private b(int i, int i2) {
            this.f19367a = i;
            this.f19368b = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private FacebookRequestError(int r7, int r8, int r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, boolean r14, org.json.JSONObject r15, org.json.JSONObject r16, java.lang.Object r17, java.net.HttpURLConnection r18, com.facebook.FacebookException r19) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.FacebookRequestError.<init>(int, int, int, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean, org.json.JSONObject, org.json.JSONObject, java.lang.Object, java.net.HttpURLConnection, com.facebook.FacebookException):void");
    }

    public FacebookRequestError(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, false, null, null, null, null, null);
    }

    private FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), false, null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FacebookRequestError(HttpURLConnection httpURLConnection, Exception exc) {
        this(-1, -1, -1, null, null, null, null, false, null, null, null, httpURLConnection, exc instanceof FacebookException ? (FacebookException) exc : new FacebookException(exc));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FacebookRequestError checkResponseAndCreateError(JSONObject jSONObject, Object obj, HttpURLConnection httpURLConnection) {
        boolean z;
        String str;
        String str2;
        int i;
        int i2;
        String str3;
        boolean z2;
        String str4;
        try {
            if (!jSONObject.has("code")) {
                return null;
            }
            int i3 = jSONObject.getInt("code");
            Object a2 = ae.a(jSONObject, BODY_KEY, "FACEBOOK_NON_JSON_RESULT");
            boolean z3 = true;
            if (a2 != null && (a2 instanceof JSONObject)) {
                JSONObject jSONObject2 = (JSONObject) a2;
                if (jSONObject2.has("error")) {
                    JSONObject jSONObject3 = (JSONObject) ae.a(jSONObject2, "error", (String) null);
                    str4 = jSONObject3.optString("type", null);
                    str3 = jSONObject3.optString(ERROR_MESSAGE_FIELD_KEY, null);
                    i2 = jSONObject3.optInt("code", -1);
                    i = jSONObject3.optInt(ERROR_SUB_CODE_KEY, -1);
                    str2 = jSONObject3.optString(ERROR_USER_MSG_KEY, null);
                    str = jSONObject3.optString(ERROR_USER_TITLE_KEY, null);
                    z2 = jSONObject3.optBoolean(ERROR_IS_TRANSIENT_KEY, false);
                    z = true;
                } else {
                    if (!jSONObject2.has(ERROR_CODE_KEY) && !jSONObject2.has(ERROR_MSG_KEY) && !jSONObject2.has(ERROR_REASON_KEY)) {
                        str4 = null;
                        str3 = null;
                        str = null;
                        str2 = null;
                        z = false;
                        i2 = 0;
                        i = 0;
                        z2 = false;
                    }
                    str4 = jSONObject2.optString(ERROR_REASON_KEY, null);
                    str3 = jSONObject2.optString(ERROR_MSG_KEY, null);
                    i2 = jSONObject2.optInt(ERROR_CODE_KEY, -1);
                    i = jSONObject2.optInt(ERROR_SUB_CODE_KEY, -1);
                    str = null;
                    str2 = null;
                    z2 = false;
                    z = true;
                }
                if (z) {
                    return new FacebookRequestError(i3, i2, i, str4, str3, str, str2, z2, jSONObject2, jSONObject, obj, httpURLConnection, null);
                }
            }
            b bVar = HTTP_RANGE_SUCCESS;
            if (bVar.f19367a > i3 || i3 > bVar.f19368b) {
                z3 = false;
            }
            if (z3) {
                return null;
            }
            return new FacebookRequestError(i3, -1, -1, null, null, null, null, false, jSONObject.has(BODY_KEY) ? (JSONObject) ae.a(jSONObject, BODY_KEY, "FACEBOOK_NON_JSON_RESULT") : null, jSONObject, obj, httpURLConnection, null);
        } catch (JSONException e) {
            return null;
        }
    }

    static h getErrorClassification() {
        synchronized (FacebookRequestError.class) {
            try {
                p a2 = q.a(g.m());
                if (a2 == null) {
                    return h.b();
                }
                return a2.e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final Object getBatchRequestResult() {
        return this.batchRequestResult;
    }

    public final a getCategory() {
        return this.category;
    }

    public final HttpURLConnection getConnection() {
        return this.connection;
    }

    public final int getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        String str = this.errorMessage;
        return str != null ? str : this.exception.getLocalizedMessage();
    }

    public final String getErrorRecoveryMessage() {
        return this.errorRecoveryMessage;
    }

    public final String getErrorType() {
        return this.errorType;
    }

    public final String getErrorUserMessage() {
        return this.errorUserMessage;
    }

    public final String getErrorUserTitle() {
        return this.errorUserTitle;
    }

    public final FacebookException getException() {
        return this.exception;
    }

    public final JSONObject getRequestResult() {
        return this.requestResult;
    }

    public final JSONObject getRequestResultBody() {
        return this.requestResultBody;
    }

    public final int getRequestStatusCode() {
        return this.requestStatusCode;
    }

    public final int getSubErrorCode() {
        return this.subErrorCode;
    }

    public final String toString() {
        return "{HttpStatus: " + this.requestStatusCode + ", errorCode: " + this.errorCode + ", subErrorCode: " + this.subErrorCode + ", errorType: " + this.errorType + ", errorMessage: " + getErrorMessage() + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.requestStatusCode);
        parcel.writeInt(this.errorCode);
        parcel.writeInt(this.subErrorCode);
        parcel.writeString(this.errorType);
        parcel.writeString(this.errorMessage);
        parcel.writeString(this.errorUserTitle);
        parcel.writeString(this.errorUserMessage);
    }
}
