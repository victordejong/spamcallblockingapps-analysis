package io.bidmachine.utils;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/utils/BMError.class */
public class BMError {
    public static final int ERROR_NOT_INITIALIZED = 99;
    public static final int ERROR_NOT_LOADED = 98;
    public static final int NOT_SET = -1;
    private String brief;
    private int code;
    private String message;
    private BMError originError;
    private boolean trackError;
    public static final BMError NotInitialized = new BMError(99, "SDK not initialized", "Sdk not initialized properly, see docs: https://wiki.appodeal.com/display/BID/BidMachine+Android+SDK+Documentation");
    public static final BMError Connection = new BMError(100, "Connection error", "BidMachine can't connect to server");
    public static final BMError TimeoutError = new BMError(102, "Timeout error", "BidMachine timeout reached");
    public static final BMError NoContent = new BMError(103, "No content", "No content");
    public static final BMError IncorrectAdUnit = new BMError(101, "Incorrect ad unit", "Incorrect ad unit");
    public static final BMError Internal = new BMError(108, "Internal error", "internal error acquired");
    public static final BMError Server = new BMError(109, "Server error", "server error, please contact support");
    public static final BMError NotLoaded = new BMError(98, "Ads not loaded", "Ads not loaded");
    public static final BMError AlreadyShown = new BMError(-1, "Ads already shown", "Ads was already shown, load new one please");
    public static final BMError RequestAlreadyShown = new BMError(-1, "AdRequest already shown", "AdRequest that related with ad has already been shown, load new AdRequest please");
    public static final BMError RequestDestroyed = new BMError(106, "AdRequest destroyed", "AdRequest destroyed, create new one please");
    public static final BMError RequestExpired = new BMError(107, "AdRequest expired", "AdRequest expired, load new one please");
    public static final BMError Destroyed = new BMError(106, "Ads destroyed", "Ads destroyed, load new one please");
    public static final BMError Expired = new BMError(107, "Ads expired", "Ads was expired, load new one please");

    private BMError(int i, String str, String str2) {
        this(i, str, str2, null);
    }

    private BMError(int i, String str, String str2, BMError bMError) {
        this.trackError = true;
        this.code = i;
        this.brief = str;
        this.message = str2;
        this.originError = bMError;
    }

    public static BMError adapterNotFoundError(String str) {
        return new BMError(101, "Adapter not found", "Adapter not found (" + str + ")");
    }

    public static BMError catchError(String str) {
        return new BMError(104, "Catch error", str);
    }

    public static BMError noFillError(BMError bMError) {
        if (bMError == null || bMError.getCode() == 103) {
            return new BMError(103, "No fill", "No ads fill", bMError);
        }
        return new BMError(103, "No fill (" + bMError.getBrief() + ")", "No ads fill (" + bMError.getMessage() + ")", bMError);
    }

    public static BMError paramError(String str) {
        return new BMError(110, "Param error", "Param error: ".concat(String.valueOf(str)));
    }

    public static BMError requestError(String str) {
        return new BMError(110, "Request Error", "Request error (" + str + ")");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BMError bMError = (BMError) obj;
        if (this.code != bMError.code) {
            return false;
        }
        String str = this.brief;
        if (str != null) {
            if (!str.equals(bMError.brief)) {
                return false;
            }
        } else if (bMError.brief != null) {
            return false;
        }
        String str2 = this.message;
        String str3 = bMError.message;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public String getBrief() {
        return this.brief;
    }

    public int getCode() {
        return this.code;
    }

    public String getMessage() {
        return this.message;
    }

    public BMError getOriginError() {
        return this.originError;
    }

    public int hashCode() {
        int i = this.code;
        String str = this.brief;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.message;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((i * 31) + hashCode) * 31) + i2;
    }

    public boolean isTrackError() {
        return this.trackError;
    }

    public void setTrackError(boolean z) {
        this.trackError = z;
    }

    public String toString() {
        return "(" + this.code + ") " + this.brief + " - " + this.message;
    }
}
