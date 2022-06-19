package org.xutils.http.loader;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.List;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.common.util.ParameterizedTypeUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.annotation.HttpResponse;
import org.xutils.http.app.ResponseParser;
import org.xutils.http.request.UriRequest;
/* renamed from: org.xutils.http.loader.g */
/* loaded from: classes2-dex2jar.jar:org/xutils/http/loader/g.class */
public class C9664g extends Loader<Object> {

    /* renamed from: a */
    private final Type f40774a;

    /* renamed from: b */
    private final Class<?> f40775b;

    /* renamed from: c */
    private final ResponseParser f40776c;

    /* renamed from: d */
    private final Loader<?> f40777d;

    public C9664g(Type type) {
        HttpResponse httpResponse;
        Class cls;
        this.f40774a = type;
        if (type instanceof ParameterizedType) {
            this.f40775b = (Class) ((ParameterizedType) type).getRawType();
        } else if (type instanceof TypeVariable) {
            throw new IllegalArgumentException("not support callback type " + type.toString());
        } else {
            this.f40775b = (Class) type;
        }
        if (List.class.equals(this.f40775b)) {
            Type parameterizedType = ParameterizedTypeUtil.getParameterizedType(type, List.class, 0);
            if (parameterizedType instanceof ParameterizedType) {
                cls = (Class) ((ParameterizedType) parameterizedType).getRawType();
            } else if (parameterizedType instanceof TypeVariable) {
                throw new IllegalArgumentException("not support callback type " + parameterizedType.toString());
            } else {
                cls = (Class) parameterizedType;
            }
            httpResponse = (HttpResponse) cls.getAnnotation(HttpResponse.class);
            type = parameterizedType;
        } else {
            httpResponse = (HttpResponse) this.f40775b.getAnnotation(HttpResponse.class);
        }
        if (httpResponse == null) {
            throw new IllegalArgumentException("not found @HttpResponse from " + type);
        }
        try {
            Class<? extends ResponseParser> parser = httpResponse.parser();
            this.f40776c = parser.newInstance();
            Loader<?> loader = LoaderFactory.getLoader(ParameterizedTypeUtil.getParameterizedType(parser, ResponseParser.class, 0));
            this.f40777d = loader;
            if (!(loader instanceof C9664g)) {
                return;
            }
            throw new IllegalArgumentException("not support callback type " + type);
        } catch (Throwable th) {
            throw new RuntimeException("create parser error", th);
        }
    }

    @Override // org.xutils.http.loader.Loader
    public Object load(UriRequest uriRequest) {
        uriRequest.setResponseParser(this.f40776c);
        return this.f40776c.parse(this.f40774a, this.f40775b, this.f40777d.load(uriRequest));
    }

    @Override // org.xutils.http.loader.Loader
    public Object loadFromCache(DiskCacheEntity diskCacheEntity) {
        return this.f40776c.parse(this.f40774a, this.f40775b, this.f40777d.loadFromCache(diskCacheEntity));
    }

    @Override // org.xutils.http.loader.Loader
    public Loader<Object> newInstance() {
        throw new IllegalAccessError("use constructor create ObjectLoader.");
    }

    @Override // org.xutils.http.loader.Loader
    public void save2Cache(UriRequest uriRequest) {
        this.f40777d.save2Cache(uriRequest);
    }

    @Override // org.xutils.http.loader.Loader
    public void setParams(RequestParams requestParams) {
        this.f40777d.setParams(requestParams);
    }
}
