.class public abstract Lio/bidmachine/ApiRequest$ApiDataBinder;
.super Lio/bidmachine/core/NetworkRequest$RequestDataBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ApiDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
        "TRequestDataType;TResponseDataType;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;-><init>()V

    return-void
.end method
