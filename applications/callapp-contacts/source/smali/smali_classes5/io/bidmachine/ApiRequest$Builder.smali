.class public Lio/bidmachine/ApiRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lio/bidmachine/core/NetworkRequest$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TResponseDataType;",
            "Lio/bidmachine/utils/BMError;",
            ">;"
        }
    .end annotation
.end field

.field private cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

.field private dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ApiRequest$ApiDataBinder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation
.end field

.field private method:Lio/bidmachine/core/NetworkRequest$Method;

.field private requestData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestDataType;"
        }
    .end annotation
.end field

.field private timeOut:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget v0, Lio/bidmachine/ApiRequest;->REQUEST_TIMEOUT:I

    iput v0, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    .line 106
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    iput-object v0, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/ApiRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/ApiRequest<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Lio/bidmachine/ApiRequest;

    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    iget-object v2, p0, Lio/bidmachine/ApiRequest$Builder;->requestData:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lio/bidmachine/ApiRequest;-><init>(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/Object;Lio/bidmachine/ApiRequest$1;)V

    .line 147
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest;->setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)V

    .line 148
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)V

    .line 149
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;

    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest;->setDataBinder(Lio/bidmachine/core/NetworkRequest$RequestDataBinder;)V

    .line 150
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    iput-object v1, v0, Lio/bidmachine/ApiRequest;->requiredUrl:Ljava/lang/String;

    .line 151
    iget v1, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    iput v1, v0, Lio/bidmachine/ApiRequest;->timeOut:I

    return-object v0
.end method

.method public request()Lio/bidmachine/ApiRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/ApiRequest<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->build()Lio/bidmachine/ApiRequest;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->build()Lio/bidmachine/ApiRequest;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/ApiRequest;->request()V

    return-object v0
.end method

.method public setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TResponseDataType;",
            "Lio/bidmachine/utils/BMError;",
            ">;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    return-object p0
.end method

.method public setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$CancelCallback;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    return-object p0
.end method

.method public setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$ApiDataBinder<",
            "TRequestDataType;TResponseDataType;>;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;

    return-object p0
.end method

.method public setLoadingTimeOut(I)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    if-lez p1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    sget p1, Lio/bidmachine/ApiRequest;->REQUEST_TIMEOUT:I

    :goto_0
    iput p1, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    return-object p0
.end method

.method public setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    return-object p0
.end method

.method public setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestDataType;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->requestData:Ljava/lang/Object;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
