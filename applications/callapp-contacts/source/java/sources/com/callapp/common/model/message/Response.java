package com.callapp.common.model.message;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/message/Response.class */
public class Response implements Serializable {
    private static final long serialVersionUID = -3622289865200595072L;
    private String code;
    private String value;

    public Response() {
    }

    Response(ResultCode resultCode, String str) {
        this.code = resultCode.name();
        this.value = str;
    }

    public static Response error(String str) {
        return new Response(ResultCode.GENERAL_ERROR, str);
    }

    public static Response error(String str, Object... objArr) {
        return new Response(ResultCode.GENERAL_ERROR, String.format(str, objArr));
    }

    /* renamed from: of */
    public static Response m31933of(ResultCode resultCode) {
        return new Response(resultCode, null);
    }

    /* renamed from: of */
    public static Response m31932of(ResultCode resultCode, String str) {
        return new Response(resultCode, str);
    }

    /* renamed from: of */
    public static Response m31931of(ResultCode resultCode, String str, Object... objArr) {
        return new Response(resultCode, String.format(str, objArr));
    }

    /* renamed from: ok */
    public static Response m31930ok() {
        return new Response(ResultCode.OK, null);
    }

    /* renamed from: ok */
    public static Response m31929ok(String str) {
        return new Response(ResultCode.OK, str);
    }

    public ResultCode getResultCode() {
        String str = this.code;
        return str == null ? ResultCode.GENERAL_ERROR : ResultCode.valueOf(str);
    }

    public String getValue() {
        return this.value;
    }

    public boolean isOk() {
        return ResultCode.OK == getResultCode();
    }

    public Response setResultCode(ResultCode resultCode) {
        this.code = resultCode.name();
        return this;
    }

    public Response setValue(String str) {
        this.value = str;
        return this;
    }

    public String toString() {
        return "Response{code=" + this.code + ", value='" + this.value + "'}";
    }
}
