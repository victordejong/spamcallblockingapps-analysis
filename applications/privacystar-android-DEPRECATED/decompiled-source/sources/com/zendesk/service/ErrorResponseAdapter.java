package com.zendesk.service;

import com.zendesk.util.CollectionUtils;
import java.util.ArrayList;
import java.util.List;
import retrofit2.HttpException;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ErrorResponseAdapter.class */
public class ErrorResponseAdapter implements ErrorResponse {
    private final String errorMessage;

    public ErrorResponseAdapter() {
        this("");
    }

    public ErrorResponseAdapter(String str) {
        this.errorMessage = str;
    }

    public static ErrorResponse fromException(Throwable th) {
        return th instanceof ZendeskException ? ((ZendeskException) th).errorResponse() : th instanceof HttpException ? RetrofitErrorResponse.throwable(th) : new ErrorResponseAdapter(th.getMessage());
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getReason() {
        return this.errorMessage;
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getResponseBody() {
        return this.errorMessage;
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getResponseBodyType() {
        return "text/plain; charset=UTF8";
    }

    @Override // com.zendesk.service.ErrorResponse
    public List<Header> getResponseHeaders() {
        return CollectionUtils.unmodifiableList(new ArrayList());
    }

    @Override // com.zendesk.service.ErrorResponse
    public int getStatus() {
        return -1;
    }

    @Override // com.zendesk.service.ErrorResponse
    public String getUrl() {
        return "";
    }

    @Override // com.zendesk.service.ErrorResponse
    public boolean isConversionError() {
        return false;
    }

    @Override // com.zendesk.service.ErrorResponse
    public boolean isHTTPError() {
        return false;
    }

    @Override // com.zendesk.service.ErrorResponse
    public boolean isNetworkError() {
        return false;
    }
}
