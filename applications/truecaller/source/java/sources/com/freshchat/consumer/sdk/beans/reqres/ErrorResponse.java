package com.freshchat.consumer.sdk.beans.reqres;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/ErrorResponse.class */
public class ErrorResponse {
    private ServerErrorCodes errorCode;
    private String errorMessage;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/reqres/ErrorResponse$ServerErrorCodes.class */
    public enum ServerErrorCodes {
        ERROR_CODE_NO_USER(1, "ERROR_CODE_NO_USER"),
        ERROR_CODE_USER_MISMATCH(2, "ERROR_CODE_USER_MISMATCH"),
        ERROR_CODE_NO_APP(3, "ERROR_CODE_NO_APP"),
        ERROR_CODE_USER_ALREADY_PRESENT(4, "ERROR_CODE_USER_ALREADY_PRESENT"),
        ERROR_CODE_BAD_REQUEST(5, "ERROR_CODE_BAD_REQUEST"),
        ERROR_CODE_USER_DELETED(19, "ERROR_CODE_USER_DELETED"),
        ERROR_CODE_APP_DELETED(20, "ERROR_CODE_APP_DELETED"),
        ERROR_CODE_INVALID_JWT_TOKEN(23, "ERROR_CODE_INVALID_JWT_TOKEN"),
        ERROR_CODE_JWT_CLAIMS_TOO_LARGE(25, "ERROR_CODE_JWT_CLAIMS_SIZE_EXCEEDED"),
        ERROR_CODE_JWT_TOKEN_EXPIRED(26, "ERROR_CODE_EXPIRED_JWT_TOKEN");
        
        private int intVal;
        private String strVal;

        ServerErrorCodes(int i, String str) {
            this.intVal = i;
            this.strVal = str;
        }

        public static ServerErrorCodes fromInt(int i) {
            ServerErrorCodes[] values = values();
            for (int i2 = 0; i2 < 10; i2++) {
                ServerErrorCodes serverErrorCodes = values[i2];
                if (serverErrorCodes.getIntVal() == i) {
                    return serverErrorCodes;
                }
            }
            return null;
        }

        public int getIntVal() {
            return this.intVal;
        }

        public String getStrVal() {
            return this.strVal;
        }
    }

    public ServerErrorCodes getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setErrorCode(ServerErrorCodes serverErrorCodes) {
        this.errorCode = serverErrorCodes;
    }

    public void setErrorMessage(String str) {
        this.errorMessage = str;
    }
}
