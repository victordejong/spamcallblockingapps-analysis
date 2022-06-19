.class final Lio/bidmachine/ApiRequest;
.super Lio/bidmachine/core/NetworkRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;,
        Lio/bidmachine/ApiRequest$ApiInitDataBinder;,
        Lio/bidmachine/ApiRequest$ApiDataBinder;,
        Lio/bidmachine/ApiRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest<",
        "TRequestDataType;TResponseType;",
        "Lio/bidmachine/utils/BMError;",
        ">;"
    }
.end annotation


# static fields
.field static REQUEST_TIMEOUT:I = 0x2710


# instance fields
.field requiredUrl:Ljava/lang/String;

.field timeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            "TRequestDataType;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/core/NetworkRequest;-><init>(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/Object;)V

    .line 39
    new-instance p1, Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;

    invoke-direct {p1}, Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;-><init>()V

    invoke-virtual {p0, p1}, Lio/bidmachine/ApiRequest;->addContentEncoder(Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/Object;Lio/bidmachine/ApiRequest$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest;-><init>(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/Object;)V

    return-void
.end method

.method private getErrorFromCode(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;
    .locals 1

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_0

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_0

    .line 88
    sget-object p1, Lio/bidmachine/utils/BMError;->NoContent:Lio/bidmachine/utils/BMError;

    return-object p1

    :cond_0
    const/16 p1, 0x190

    const/16 v0, 0x1f4

    if-lt p2, p1, :cond_1

    if-ge p2, v0, :cond_1

    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    :cond_1
    if-lt p2, v0, :cond_2

    const/16 p1, 0x258

    if-ge p2, p1, :cond_2

    .line 92
    sget-object p1, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    return-object p1

    .line 94
    :cond_2
    sget-object p1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    return-object p1
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/bidmachine/ApiRequest;->requiredUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected final obtainError(Ljava/net/URLConnection;Ljava/io/InputStream;I)Lio/bidmachine/utils/BMError;
    .locals 2

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Request error ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), headers:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, v0}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "ad-exchange-error-reason"

    .line 53
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ad-exchange-error-message"

    .line 54
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    aput-object v0, p1, p2

    const-string p2, "%s - %s"

    .line 56
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    .line 57
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lio/bidmachine/utils/BMError;->requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    invoke-direct {p0, p1, p3}, Lio/bidmachine/ApiRequest;->getErrorFromCode(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method protected final obtainError(Ljava/net/URLConnection;Ljava/lang/Object;I)Lio/bidmachine/utils/BMError;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "TResponseType;I)",
            "Lio/bidmachine/utils/BMError;"
        }
    .end annotation

    const/16 p2, 0xc8

    if-ne p3, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 47
    :cond_0
    invoke-direct {p0, p1, p3}, Lio/bidmachine/ApiRequest;->getErrorFromCode(Ljava/net/URLConnection;I)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method protected final obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "obtainError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/bidmachine/core/Logger;->log(Ljava/lang/String;)V

    .line 66
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_0

    .line 67
    sget-object p1, Lio/bidmachine/utils/BMError;->Connection:Lio/bidmachine/utils/BMError;

    return-object p1

    .line 68
    :cond_0
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_2

    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    sget-object p1, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    return-object p1

    .line 69
    :cond_2
    :goto_0
    sget-object p1, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    return-object p1
.end method

.method public final bridge synthetic obtainError(Ljava/net/URLConnection;Ljava/io/InputStream;I)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;Ljava/io/InputStream;I)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic obtainError(Ljava/net/URLConnection;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Object;I)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lio/bidmachine/utils/BMError;

    move-result-object p1

    return-object p1
.end method

.method public final prepareRequestParams(Ljava/net/URLConnection;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 82
    iget v0, p0, Lio/bidmachine/ApiRequest;->timeOut:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 83
    iget v0, p0, Lio/bidmachine/ApiRequest;->timeOut:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method
