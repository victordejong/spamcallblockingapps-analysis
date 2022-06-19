package com.freshchat.consumer.sdk.beans;

import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashMap;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig.class */
public class UnsupportedFragmentConfig {
    private boolean displayErrorCodes;
    private String errorCodePlaceholder;
    private List<FragmentErrorMessage> errorMessageByTypes;
    private HashMap<Integer, FragmentErrorMessage> errorMessageByTypesMap = null;
    private ErrorMessage globalErrorMessage;

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$ErrorMessage.class */
    public class ErrorMessage {
        private String contentType;
        private long errorCode;
        private String errorMessage;

        public ErrorMessage() {
            UnsupportedFragmentConfig.this = r4;
        }

        public String getContentType() {
            return this.contentType;
        }

        public long getErrorCode() {
            return this.errorCode;
        }

        public String getErrorMessage() {
            return this.errorMessage;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/UnsupportedFragmentConfig$FragmentErrorMessage.class */
    public class FragmentErrorMessage {
        private ErrorMessage defaultErrorMessage;
        private HashMap<String, ErrorMessage> errorMessageMap = null;
        private List<ErrorMessage> errorMessages;
        private int fragmentType;

        public FragmentErrorMessage() {
            UnsupportedFragmentConfig.this = r4;
        }

        public HashMap<String, ErrorMessage> getErrorMessageMap() {
            if (C1716k.m39894d(this.errorMessageMap)) {
                return this.errorMessageMap;
            }
            this.errorMessageMap = new HashMap<>();
            if (C1716k.m39902a(this.errorMessages)) {
                for (ErrorMessage errorMessage : this.errorMessages) {
                    this.errorMessageMap.put(errorMessage.getContentType(), errorMessage);
                }
            }
            return this.errorMessageMap;
        }
    }

    public String getDisplayableErrorMessage(ErrorMessage errorMessage) {
        if (errorMessage == null) {
            return null;
        }
        String errorMessage2 = errorMessage.getErrorMessage();
        String str = errorMessage2;
        if (this.displayErrorCodes) {
            str = errorMessage2;
            if (C1626as.m40233a(this.errorCodePlaceholder)) {
                StringBuilder m8696K = C22128a.m8696K(errorMessage2, StringConstant.NEW_LINE);
                m8696K.append(this.errorCodePlaceholder.replace("%d", String.valueOf(errorMessage.getErrorCode())));
                str = m8696K.toString();
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r4.getErrorMessage()) != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0.getErrorMessage()) != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig.ErrorMessage getErrorMessage(java.lang.Integer r4, java.lang.String r5) {
        /*
            r3 = this;
            r0 = r3
            java.util.HashMap r0 = r0.getErrorMessageByTypesMap()
            r1 = r4
            java.lang.Object r0 = r0.get(r1)
            com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig$FragmentErrorMessage r0 = (com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig.FragmentErrorMessage) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L34
            r0 = r6
            java.util.HashMap r0 = r0.getErrorMessageMap()
            r1 = r5
            java.lang.Object r0 = r0.get(r1)
            com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig$ErrorMessage r0 = (com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig.ErrorMessage) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2c
            r0 = r5
            r4 = r0
            r0 = r5
            java.lang.String r0 = r0.getErrorMessage()
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L36
        L2c:
            r0 = r6
            com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig$ErrorMessage r0 = com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig.FragmentErrorMessage.access$100(r0)
            r4 = r0
            goto L36
        L34:
            r0 = 0
            r4 = r0
        L36:
            r0 = r4
            if (r0 == 0) goto L46
            r0 = r4
            r5 = r0
            r0 = r4
            java.lang.String r0 = r0.getErrorMessage()
            boolean r0 = com.freshchat.consumer.sdk.p057j.C1626as.isEmpty(r0)
            if (r0 == 0) goto L4b
        L46:
            r0 = r3
            com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig$ErrorMessage r0 = r0.globalErrorMessage
            r5 = r0
        L4b:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig.getErrorMessage(java.lang.Integer, java.lang.String):com.freshchat.consumer.sdk.beans.UnsupportedFragmentConfig$ErrorMessage");
    }

    public HashMap<Integer, FragmentErrorMessage> getErrorMessageByTypesMap() {
        if (C1716k.m39894d(this.errorMessageByTypesMap)) {
            return this.errorMessageByTypesMap;
        }
        this.errorMessageByTypesMap = new HashMap<>();
        if (C1716k.isEmpty(this.errorMessageByTypes)) {
            return this.errorMessageByTypesMap;
        }
        for (FragmentErrorMessage fragmentErrorMessage : this.errorMessageByTypes) {
            this.errorMessageByTypesMap.put(Integer.valueOf(fragmentErrorMessage.fragmentType), fragmentErrorMessage);
        }
        return this.errorMessageByTypesMap;
    }

    public ErrorMessage getGlobalErrorMessage() {
        return this.globalErrorMessage;
    }
}
