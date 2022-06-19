package com.truecaller.messaging.clevertap;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/truecaller/messaging/clevertap/NUMBERS;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "NONE", "ZERO", "ONE", "TWO", "TWO_FOUR", "TWO_FIVE", "THREE_FIVE", "FIVE_SEVEN", "EIGHT_FOURTEEN", "ELEVEN_TWENTY", "SIX_TEN", "TEN_PLUS", "FIFTEEN_THIRTY", "TWENTY_ONE_THIRTY", "THIRTY_PLUS", "THIRTY_ONE_FIFTY", "FIFTY_PLUS", "messaging-storage_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/messaging/clevertap/NUMBERS.class */
public enum NUMBERS {
    NONE("None"),
    ZERO("Zero"),
    ONE("One"),
    TWO("Two"),
    TWO_FOUR("Two_Four"),
    TWO_FIVE("Two_Five"),
    THREE_FIVE("Three_Five"),
    FIVE_SEVEN("Five_Seven"),
    EIGHT_FOURTEEN("Eight_Fourteen"),
    ELEVEN_TWENTY("Eleven_Twenty"),
    SIX_TEN("Six_Ten"),
    TEN_PLUS("Tenplus"),
    FIFTEEN_THIRTY("Fifteen_Thirty"),
    TWENTY_ONE_THIRTY("TwentyOne_Thirty"),
    THIRTY_PLUS("Thirtyplus"),
    THIRTY_ONE_FIFTY("ThirtyOne_Fifty"),
    FIFTY_PLUS("Fiftyplus");
    
    private final String value;

    NUMBERS(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
