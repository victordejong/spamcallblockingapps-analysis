.class public Lio/bidmachine/core/NetworkRequest$SimpleJsonArrayDataBinder;
.super Lio/bidmachine/core/NetworkRequest$JsonDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleJsonArrayDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest$JsonDataBinder<",
        "Lorg/json/JSONArray;",
        "TErrorResultType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 389
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

    .line 389
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/core/NetworkRequest$SimpleJsonArrayDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method protected createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONArray;",
            "TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    new-instance p1, Lorg/json/JSONArray;

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
