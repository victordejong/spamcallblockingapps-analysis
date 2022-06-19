.class public Lio/bidmachine/core/NetworkRequest$SimpleJsonObjectDataBinder;
.super Lio/bidmachine/core/NetworkRequest$JsonDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleJsonObjectDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest$JsonDataBinder<",
        "Lorg/json/JSONObject;",
        "TErrorResultType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 379
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$JsonDataBinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/core/NetworkRequest$SimpleJsonObjectDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    new-instance p1, Lorg/json/JSONObject;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
