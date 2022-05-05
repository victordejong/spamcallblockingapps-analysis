package com.zendesk.service;

import com.zendesk.util.ObjectUtils;
import com.zendesk.util.StringUtils;
import retrofit2.Response;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskException.class */
public class ZendeskException extends Exception {
    private final ErrorResponse errorResponse;

    public ZendeskException(ErrorResponse errorResponse) {
        super(errorResponse.getReason());
        this.errorResponse = errorResponse;
    }

    public ZendeskException(String str) {
        super(str);
        this.errorResponse = new ErrorResponseAdapter(getMessage());
    }

    public ZendeskException(Throwable th) {
        super(th);
        this.errorResponse = ErrorResponseAdapter.fromException(th);
    }

    public ZendeskException(Response response) {
        super(message(response));
        this.errorResponse = RetrofitErrorResponse.response(response);
    }

    private static String message(Response response) {
        StringBuilder sb = new StringBuilder();
        if (response != null) {
            if (StringUtils.hasLength(response.message())) {
                sb.append(response.message());
            } else {
                sb.append(response.code());
            }
        }
        return sb.toString();
    }

    public ErrorResponse errorResponse() {
        return this.errorResponse;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return String.format("ZendeskException{details=%s,errorResponse=%s,cause=%s}", super.toString(), this.errorResponse == null ? "null" : this.errorResponse.getReason(), ObjectUtils.toString(getCause()));
    }
}
