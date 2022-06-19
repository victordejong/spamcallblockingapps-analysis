package org.xutils.http.app;

import java.lang.reflect.Type;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/app/ResponseParser.class */
public interface ResponseParser<ResponseDataType> extends RequestInterceptListener {
    Object parse(Type type, Class<?> cls, ResponseDataType responsedatatype);
}
