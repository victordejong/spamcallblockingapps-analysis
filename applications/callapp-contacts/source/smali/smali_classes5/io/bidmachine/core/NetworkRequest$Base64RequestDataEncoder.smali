.class public Lio/bidmachine/core/NetworkRequest$Base64RequestDataEncoder;
.super Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64RequestDataEncoder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .locals 0

    const/4 p1, 0x0

    .line 425
    invoke-static {p3, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method protected encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .locals 0

    const/4 p1, 0x0

    .line 420
    invoke-static {p3, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    return-object p1
.end method
