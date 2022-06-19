.class public interface abstract Lcom/verizon/ads/utils/HttpUtils$HttpInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/utils/HttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpInterceptor"
.end annotation


# virtual methods
.method public abstract onRequest(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$HttpRequestRunner;)V
.end method

.method public abstract onResponse(Ljava/lang/String;Lcom/verizon/ads/utils/HttpUtils$Response;)V
.end method
