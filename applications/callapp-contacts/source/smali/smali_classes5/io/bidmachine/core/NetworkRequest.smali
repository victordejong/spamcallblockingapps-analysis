.class public abstract Lio/bidmachine/core/NetworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/core/NetworkRequest$a;,
        Lio/bidmachine/core/NetworkRequest$GZIPRequestDataEncoder;,
        Lio/bidmachine/core/NetworkRequest$Base64RequestDataEncoder;,
        Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;,
        Lio/bidmachine/core/NetworkRequest$SimpleJsonArrayDataBinder;,
        Lio/bidmachine/core/NetworkRequest$SimpleJsonObjectDataBinder;,
        Lio/bidmachine/core/NetworkRequest$JsonDataBinder;,
        Lio/bidmachine/core/NetworkRequest$RequestDataBinder;,
        Lio/bidmachine/core/NetworkRequest$CancelCallback;,
        Lio/bidmachine/core/NetworkRequest$Callback;,
        Lio/bidmachine/core/NetworkRequest$State;,
        Lio/bidmachine/core/NetworkRequest$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private callback:Lio/bidmachine/core/NetworkRequest$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TRequestResultType;TErrorResultType;>;"
        }
    .end annotation
.end field

.field private cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

.field private contentEncoders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;>;"
        }
    .end annotation
.end field

.field private currentConnection:Ljava/net/URLConnection;

.field private currentState:Lio/bidmachine/core/NetworkRequest$State;

.field private dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;"
        }
    .end annotation
.end field

.field private dataEncoders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;>;"
        }
    .end annotation
.end field

.field private errorResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TErrorResultType;"
        }
    .end annotation
.end field

.field private method:Lio/bidmachine/core/NetworkRequest$Method;

.field private path:Ljava/lang/String;

.field private requestData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestDataType;"
        }
    .end annotation
.end field

.field private requestResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestResultType;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 32
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/bidmachine/core/NetworkRequest;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            "TRequestDataType;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Idle:Lio/bidmachine/core/NetworkRequest$State;

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 89
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 91
    iput-object p3, p0, Lio/bidmachine/core/NetworkRequest;->requestData:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Lio/bidmachine/core/NetworkRequest;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest;->process()V

    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$State;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    return-object p0
.end method

.method static synthetic access$400(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->requestResult:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    return-object p0
.end method

.method private obtainErrorStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1

    .line 282
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 283
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private obtainResponseCode(Ljava/net/URLConnection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    instance-of v0, p1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private process()V
    .locals 10

    .line 135
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Running:Lio/bidmachine/core/NetworkRequest$State;

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    const/4 v0, 0x0

    .line 139
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/URL;

    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/URL;

    .line 141
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->getBaseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iput-object v1, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 143
    iget-object v4, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    invoke-virtual {v4, v1}, Lio/bidmachine/core/NetworkRequest$Method;->apply(Ljava/net/URLConnection;)V

    .line 144
    invoke-virtual {p0, v1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 146
    invoke-virtual {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainRequestData(Ljava/net/URLConnection;)[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 149
    invoke-virtual {p0, v1, v4}, Lio/bidmachine/core/NetworkRequest;->encodeRequestData(Ljava/net/URLConnection;[B)[B

    move-result-object v4

    .line 151
    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 154
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 159
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 159
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 161
    :cond_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 168
    :cond_2
    :goto_2
    :try_start_5
    invoke-direct {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainResponseCode(Ljava/net/URLConnection;)I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_3

    .line 170
    invoke-direct {p0, v1}, Lio/bidmachine/core/NetworkRequest;->obtainErrorStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p0, v1, v3, v2}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/io/InputStream;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    move-object v4, v0

    move-object v5, v4

    goto :goto_5

    .line 173
    :cond_3
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 174
    :try_start_6
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v6, 0x400

    :try_start_7
    new-array v6, v6, [B

    .line 177
    :goto_3
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 178
    invoke-virtual {v5, v6, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 180
    :cond_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_5

    .line 182
    invoke-virtual {p0, v1, v3}, Lio/bidmachine/core/NetworkRequest;->decodeResponseData(Ljava/net/URLConnection;[B)[B

    move-result-object v3

    :cond_5
    if-eqz v3, :cond_7

    .line 184
    array-length v6, v3

    if-nez v6, :cond_6

    goto :goto_4

    .line 186
    :cond_6
    iget-object v2, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    if-eqz v2, :cond_8

    .line 187
    invoke-virtual {v2, p0, v1, v3}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->createSuccessResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/core/NetworkRequest;->requestResult:Ljava/lang/Object;

    if-nez v2, :cond_8

    .line 190
    iget-object v2, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    invoke-virtual {v2, p0, v1, v3}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->createFailResult(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    goto :goto_5

    .line 185
    :cond_7
    :goto_4
    invoke-virtual {p0, v1, v0, v2}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    .line 197
    :try_start_8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 198
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_9
    if-eqz v4, :cond_a

    .line 201
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 208
    :cond_a
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_b

    .line 209
    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    :cond_b
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 213
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_c

    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    goto :goto_6

    :cond_c
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    :goto_6
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    return-void

    :catchall_2
    move-exception v2

    goto :goto_7

    :catchall_3
    move-exception v2

    move-object v5, v0

    goto :goto_7

    :catchall_4
    move-exception v2

    move-object v4, v0

    move-object v5, v4

    :goto_7
    if-eqz v5, :cond_d

    .line 197
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 198
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_d
    if-eqz v4, :cond_e

    .line 201
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 203
    :cond_e
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_8

    :catchall_6
    move-exception v1

    move-object v2, v0

    .line 205
    :goto_8
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    invoke-virtual {p0, v2, v1}, Lio/bidmachine/core/NetworkRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 208
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_f

    .line 209
    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    :cond_f
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_11

    .line 213
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_10

    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    goto :goto_9

    :cond_10
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    :goto_9
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    :cond_11
    return-void

    :catchall_7
    move-exception v1

    .line 208
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_12

    .line 209
    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 211
    :cond_12
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    .line 212
    invoke-virtual {p0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 213
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->errorResult:Ljava/lang/Object;

    if-nez v0, :cond_13

    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    goto :goto_a

    :cond_13
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Fail:Lio/bidmachine/core/NetworkRequest$State;

    :goto_a
    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 215
    :cond_14
    throw v1
.end method


# virtual methods
.method public addContentEncoder(Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    .line 109
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDataEncoder(Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$RequestDataEncoder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    .line 102
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 291
    sget-object v0, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    iput-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    .line 292
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentConnection:Ljava/net/URLConnection;

    instance-of v1, v0, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    if-eqz v0, :cond_1

    .line 296
    invoke-interface {v0}, Lio/bidmachine/core/NetworkRequest$CancelCallback;->onCanceled()V

    :cond_1
    return-void
.end method

.method protected decodeResponseData(Ljava/net/URLConnection;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 256
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 262
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->decode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method protected encodeRequestData(Ljava/net/URLConnection;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 237
    invoke-virtual {v1, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 238
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->contentEncoders:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;

    .line 244
    invoke-virtual {v1, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 245
    invoke-virtual {v1, p0, p1, p2}, Lio/bidmachine/core/NetworkRequest$RequestDataEncoder;->encode(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B

    move-result-object p2

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method protected getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TODO: implement url"

    return-object v0
.end method

.method public getMethod()Lio/bidmachine/core/NetworkRequest$Method;
    .locals 1

    .line 127
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->method:Lio/bidmachine/core/NetworkRequest$Method;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    .line 301
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->currentState:Lio/bidmachine/core/NetworkRequest$State;

    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Canceled:Lio/bidmachine/core/NetworkRequest$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract obtainError(Ljava/net/URLConnection;Ljava/io/InputStream;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/io/InputStream;",
            "I)TErrorResultType;"
        }
    .end annotation
.end method

.method protected abstract obtainError(Ljava/net/URLConnection;Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "TRequestResultType;I)TErrorResultType;"
        }
    .end annotation
.end method

.method protected abstract obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/lang/Throwable;",
            ")TErrorResultType;"
        }
    .end annotation
.end method

.method protected obtainRequestData(Ljava/net/URLConnection;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->prepareRequest(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 226
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->prepareHeaders(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V

    .line 227
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest;->requestData:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1}, Lio/bidmachine/core/NetworkRequest$RequestDataBinder;->obtainData(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareRequestParams(Ljava/net/URLConnection;)V
    .locals 1

    const v0, 0x9c40

    .line 219
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 220
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public request()V
    .locals 3

    .line 131
    sget-object v0, Lio/bidmachine/core/NetworkRequest;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/bidmachine/core/NetworkRequest$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/bidmachine/core/NetworkRequest$a;-><init>(Lio/bidmachine/core/NetworkRequest;Lio/bidmachine/core/NetworkRequest$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallback(Lio/bidmachine/core/NetworkRequest$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Callback<",
            "TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->callback:Lio/bidmachine/core/NetworkRequest$Callback;

    return-void
.end method

.method public setCancelCallback(Lio/bidmachine/core/NetworkRequest$CancelCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->cancelCallback:Lio/bidmachine/core/NetworkRequest$CancelCallback;

    return-void
.end method

.method public setDataBinder(Lio/bidmachine/core/NetworkRequest$RequestDataBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$RequestDataBinder<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest;->dataBinder:Lio/bidmachine/core/NetworkRequest$RequestDataBinder;

    return-void
.end method
