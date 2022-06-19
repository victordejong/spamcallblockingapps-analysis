package com.truecaller.contactfeedback.p157db;

import com.truecaller.api.services.comments.model.NumberType;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/truecaller/contactfeedback/db/PhoneNumberType;", "", "Lcom/truecaller/api/services/comments/model/NumberType;", "wrapped", "Lcom/truecaller/api/services/comments/model/NumberType;", "getWrapped", "()Lcom/truecaller/api/services/comments/model/NumberType;", "<init>", "(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V", "UNKNOWN_NUMBER_TYPE", "PHONE_NUMBER", "SENDER_ID", "IM_ID", "contact-feedback_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.contactfeedback.db.PhoneNumberType */
/* loaded from: classes4-dex2jar.jar:com/truecaller/contactfeedback/db/PhoneNumberType.class */
public enum PhoneNumberType {
    UNKNOWN_NUMBER_TYPE(NumberType.UNKNOWN_NUMBER_TYPE),
    PHONE_NUMBER(NumberType.PHONE_NUMBER),
    SENDER_ID(NumberType.SENDER_ID),
    IM_ID(NumberType.IM_ID);
    
    private final NumberType wrapped;

    PhoneNumberType(NumberType numberType) {
        this.wrapped = numberType;
    }

    public final NumberType getWrapped() {
        return this.wrapped;
    }
}
