.class public interface abstract Lorg/xutils/http/app/ParamsBuilder;
.super Ljava/lang/Object;
.source "ParamsBuilder.java"


# virtual methods
.method public abstract buildCacheKey(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract buildParams(Lorg/xutils/http/RequestParams;)V
.end method

.method public abstract buildSign(Lorg/xutils/http/RequestParams;[Ljava/lang/String;)V
.end method

.method public abstract buildUri(Lorg/xutils/http/RequestParams;Lorg/xutils/http/annotation/HttpRequest;)Ljava/lang/String;
.end method

.method public abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method
