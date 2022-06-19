.class public Lcom/callapp/contacts/util/http/HttpUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl;,
        Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;,
        Lcom/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor;,
        Lcom/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor;
    }
.end annotation


# static fields
.field public static final a:Lokhttp3/MediaType;

.field private static b:Lcom/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor;

.field private static c:Lcom/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor;

.field private static d:Ljava/lang/String;

.field private static e:Lokhttp3/OkHttpClient;

.field private static final f:Lokhttp3/OkHttpClient;

.field private static g:Lokhttp3/CertificatePinner;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "application/json; charset=utf-8"

    .line 76
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->a:Lokhttp3/MediaType;

    .line 79
    new-instance v0, Lcom/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->b:Lcom/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor;

    .line 80
    new-instance v0, Lcom/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor;-><init>(Lcom/callapp/contacts/util/http/HttpUtils$1;)V

    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->c:Lcom/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor;

    const-string v0, "http://z."

    .line 82
    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->d:Ljava/lang/String;

    .line 86
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->f:Lokhttp3/OkHttpClient;

    .line 88
    sput-object v1, Lcom/callapp/contacts/util/http/HttpUtils;->g:Lokhttp3/CertificatePinner;

    .line 91
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "DisableSSLPinning"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "domain_certs_pinning"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v1}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    .line 96
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 101
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->g:Lokhttp3/CertificatePinner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    .line 113
    :cond_2
    :goto_1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    .line 114
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 115
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 116
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/http/HttpUtils;->c:Lcom/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor;

    .line 117
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/util/http/HttpUtils;->b:Lcom/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor;

    .line 118
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v2, Lcom/callapp/contacts/util/http/HttpUtils$1;

    invoke-direct {v2}, Lcom/callapp/contacts/util/http/HttpUtils$1;-><init>()V

    invoke-direct {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    .line 124
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_2

    :cond_3
    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    :goto_2
    invoke-virtual {v1, v2}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/callapp/contacts/util/http/HttpUtils;->g:Lokhttp3/CertificatePinner;

    if-eqz v1, :cond_4

    .line 126
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    .line 129
    :cond_4
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->e:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/callapp/common/model/message/Response;
    .locals 3

    .line 704
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    sget-object p0, Lcom/callapp/common/model/message/ResultCode;->NO_NETWORK:Lcom/callapp/common/model/message/ResultCode;

    invoke-static {p0}, Lcom/callapp/common/model/message/Response;->of(Lcom/callapp/common/model/message/ResultCode;)Lcom/callapp/common/model/message/Response;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 709
    :try_start_0
    invoke-static {p1}, Lcom/callapp/contacts/util/serializer/string/Serializer;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 711
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {p0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    sget-object v1, Lcom/callapp/contacts/util/http/HttpUtils;->a:Lokhttp3/MediaType;

    .line 712
    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 714
    sget-object p1, Lcom/callapp/contacts/util/http/HttpUtils;->e:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 716
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0

    if-nez p0, :cond_1

    .line 717
    sget-object p0, Lcom/callapp/common/model/message/ResultCode;->BAD_STATUS_CODE:Lcom/callapp/common/model/message/ResultCode;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/callapp/common/model/message/Response;->of(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)Lcom/callapp/common/model/message/Response;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object p0

    .line 720
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p0

    const-class p1, Lcom/callapp/common/model/message/Response;

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/serializer/string/Parser;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callapp/common/model/message/Response;

    if-nez p0, :cond_2

    const-string p0, "Null response"

    .line 723
    invoke-static {p0}, Lcom/callapp/common/model/message/Response;->error(Ljava/lang/String;)Lcom/callapp/common/model/message/Response;

    move-result-object p0
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object p0

    :cond_2
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 729
    :try_start_2
    const-class p1, Lcom/callapp/contacts/util/http/HttpUtils;

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 730
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/common/model/message/Response;->error(Ljava/lang/String;)Lcom/callapp/common/model/message/Response;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 732
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object p0

    :catch_1
    move-exception p0

    .line 727
    :try_start_3
    sget-object p1, Lcom/callapp/common/model/message/ResultCode;->TIMEOUT_REACHED:Lcom/callapp/common/model/message/ResultCode;

    invoke-virtual {p0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/callapp/common/model/message/Response;->of(Lcom/callapp/common/model/message/ResultCode;Ljava/lang/String;)Lcom/callapp/common/model/message/Response;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 732
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object p0

    :goto_0
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 733
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Lcom/callapp/contacts/util/http/DownloadedFile;
    .locals 12

    const-string v0, "IOException in downloadURL(%s)"

    .line 806
    const-class v1, Lcom/callapp/contacts/util/http/HttpUtils;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 811
    :try_start_0
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v5, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 813
    new-instance v6, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v6, p0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_2

    .line 814
    :try_start_1
    invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v6, :cond_2

    .line 817
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 818
    :try_start_3
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/google/api/client/a/f;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v7

    .line 819
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v11, v7, v9

    if-nez v11, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 821
    :goto_0
    :try_start_4
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 824
    new-instance v6, Lcom/callapp/contacts/util/http/DownloadedFile;

    invoke-direct {v6, p1, v7}, Lcom/callapp/contacts/util/http/DownloadedFile;-><init>(Ljava/io/File;Z)V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 846
    invoke-static {v5}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object v6

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v6, v3

    .line 821
    :goto_1
    :try_start_5
    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->a(Ljava/io/Closeable;)V

    .line 822
    throw p1
    :try_end_5
    .catch Ljava/io/InterruptedIOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v5, v3

    :goto_2
    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    .line 844
    invoke-static {v1, p1, v0, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catch_5
    move-exception p1

    move-object v5, v3

    .line 841
    :goto_3
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    .line 842
    invoke-virtual {v6, v1, p1, v0, v2}, Lcom/callapp/contacts/manager/ExceptionManager;->a(Ljava/lang/Class;Ljava/io/IOException;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catch_6
    move-exception p1

    move-object v5, v3

    .line 836
    :goto_4
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->getCacheFolder()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/callapp/contacts/util/IoUtils;->d(Ljava/io/File;)F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    .line 837
    invoke-static {v1, p1, v0, v2}, Lcom/callapp/contacts/util/CLog;->c(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 839
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/IoUtils;->a()V

    goto :goto_7

    :catchall_3
    move-exception p0

    move-object v3, v5

    goto :goto_6

    :catch_7
    move-exception p1

    move-object v5, v3

    :goto_5
    const-string v0, "RuntimeException in downloadURL(%s)"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    .line 829
    invoke-static {v1, p1, v0, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    .line 846
    :goto_6
    invoke-static {v3}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 847
    throw p0

    :catch_8
    move-object v5, v3

    .line 846
    :catch_9
    :cond_2
    :goto_7
    invoke-static {v5}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 850
    :cond_3
    new-instance p0, Lcom/callapp/contacts/util/http/DownloadedFile;

    invoke-direct {p0, v3, v4}, Lcom/callapp/contacts/util/http/DownloadedFile;-><init>(Ljava/io/File;Z)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v0, "%s in getDeviceUserAgentString(): %s"

    .line 212
    const-class v1, Lcom/callapp/contacts/util/http/HttpUtils;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 214
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->isUnitTestMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 215
    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 217
    :cond_0
    const-class v6, Landroid/webkit/WebSettings;

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    const-class v8, Landroid/webkit/WebView;

    aput-object v8, v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 218
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p0, v7, v3

    aput-object v2, v7, v5

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebSettings;

    .line 220
    invoke-virtual {p0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-array v4, v4, [Ljava/lang/Object;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    goto :goto_0

    :catch_7
    move-exception p0

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    .line 232
    :goto_1
    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static a(Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 464
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 465
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 467
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 469
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "short_url"

    const-string v1, "short_suffix_only"

    .line 341
    const-class v2, Lcom/callapp/contacts/util/http/HttpUtils;

    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v3

    const-string v4, "ShortenUrl"

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    .line 348
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    .line 353
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v4

    if-nez v4, :cond_1

    return-object p0

    .line 358
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v4

    const-string v5, "ShortenUrlApiKey"

    invoke-virtual {v4, v5}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 362
    :try_start_1
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    sget-object v8, Lcom/callapp/contacts/util/http/HttpUtils;->a:Lokhttp3/MediaType;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{\"original_url\": \""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\"}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 363
    invoke-static {v8, v9}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v3, v8}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v8, "X-API-KEY"

    .line 364
    invoke-virtual {v3, v8, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 366
    sget-object v4, Lcom/callapp/contacts/util/http/HttpUtils;->e:Lokhttp3/OkHttpClient;

    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 368
    invoke-virtual {v5}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 369
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 372
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/callapp/contacts/util/http/HttpUtils;->d:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 378
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 379
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    move-object p0, v0

    goto :goto_1

    :cond_3
    move-object p0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    .line 391
    :cond_4
    :goto_1
    invoke-static {v5}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, p0

    :goto_2
    :try_start_3
    const-string v3, "JSONException in shortenUrl(%s)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    .line 389
    invoke-static {v2, v0, v3, v4}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, p0

    :goto_3
    const-string v3, "IOException in shortenUrl(%s)"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    .line 387
    invoke-static {v2, v0, v3, v4}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    :goto_4
    invoke-static {v5}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    move-object p0, v1

    :goto_5
    return-object p0

    :goto_6
    invoke-static {v5}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 392
    throw p0

    :catch_4
    return-object p0
.end method

.method public static a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 867
    sget-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->f:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 868
    sget-object v1, Lcom/callapp/contacts/util/http/HttpUtils;->g:Lokhttp3/CertificatePinner;

    if-eqz v1, :cond_0

    .line 869
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-eqz p1, :cond_1

    .line 873
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 875
    :cond_1
    new-instance p1, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/util/http/ObsoleteUrlFactory;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/callapp/contacts/util/http/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;
    .locals 3

    .line 399
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getModifiedHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getModifiedHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 408
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    goto :goto_1

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUserAgentOverride()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUserAgentOverride()Ljava/lang/String;

    move-result-object p0

    const-string v0, "User-Agent"

    invoke-virtual {p1, v0, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method private static a(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 430
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getTimeoutOverride()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    sget-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->e:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getTimeoutOverride()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getTimeoutOverride()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 436
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getTimeoutOverride()I

    move-result p1

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 439
    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    goto :goto_1

    .line 431
    :cond_1
    :goto_0
    sget-object p1, Lcom/callapp/contacts/util/http/HttpUtils;->e:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static a(Lokhttp3/Response;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 880
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 882
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    const-string v0, "connectivity"

    .line 261
    invoke-static {v0}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Lcom/callapp/contacts/util/http/HttpRequestParams;Ljava/lang/String;)Z
    .locals 1

    .line 777
    :try_start_0
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/http/HttpUtils;->b(Lcom/callapp/contacts/util/http/HttpRequestParams;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 779
    const-class p1, Lcom/callapp/contacts/util/http/HttpUtils;

    const-string v0, "IOException in readString"

    invoke-static {p1, p0, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 1688
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%s%s?v=1&%s=%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    const-string v1, "myp"

    aput-object v1, v4, p1

    const/4 p1, 0x3

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 1689
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/common/util/UrlUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p1

    .line 1688
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "&tk="

    .line 1691
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&ispro=1"

    .line 1693
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&cvc="

    .line 1695
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1697
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lcom/callapp/contacts/util/http/HttpUtils;->a:Lokhttp3/MediaType;

    invoke-virtual {v1, p0, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    const-string p1, "Content-Encoding"

    const-string v1, "gzip"

    .line 1698
    invoke-virtual {p0, p1, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 1659
    sget-object p1, Lcom/callapp/contacts/util/http/HttpUtils;->e:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    .line 1660
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1661
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1662
    invoke-virtual {p1, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 1663
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 1665
    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 654
    throw p0
.end method

.method public static a(Lokhttp3/Response;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1573
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    .line 579
    :goto_1
    const-class v2, Lcom/callapp/contacts/util/http/HttpUtils;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string p1, "Got status code %s from %s"

    invoke-static {v2, p1, v3}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xc8

    if-eq v1, p1, :cond_2

    return v0

    :cond_2
    const-string p1, "X_C_CODE"

    .line 583
    invoke-virtual {p0, p1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 584
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_2

    .line 589
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 592
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    sget-object v1, Lcom/callapp/common/api/ReturnCode;->OK:Lcom/callapp/common/api/ReturnCode;

    iget v1, v1, Lcom/callapp/common/api/ReturnCode;->code:I

    if-eq p1, v1, :cond_4

    .line 597
    const-class p1, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Result header is "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v0

    :cond_4
    return v4

    :catch_0
    return v0

    .line 585
    :cond_5
    :goto_2
    const-class p0, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    const-string p1, "No result header"

    invoke-static {p0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return v4
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 445
    new-instance v0, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->e(Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    const-class v0, Lcom/callapp/contacts/util/http/HttpUtils;

    const-string v1, "Handler will not be called !"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 481
    :try_start_0
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 483
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 484
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    .line 489
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return-object v0

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 490
    throw p1
.end method

.method public static b()Z
    .locals 1

    .line 311
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z
    .locals 5

    const-string v0, "IOException in readInputStream"

    .line 495
    const-class v1, Lcom/callapp/contacts/util/http/HttpUtils;

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 499
    invoke-static {v1, p0, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 497
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getExceptionManager()Lcom/callapp/contacts/manager/ExceptionManager;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, p0, v0, v4}, Lcom/callapp/contacts/manager/ExceptionManager;->a(Ljava/lang/Class;Ljava/io/IOException;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v2
.end method

.method private static b(Lcom/callapp/contacts/util/http/HttpRequestParams;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 788
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 790
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 794
    :try_start_0
    invoke-static {p1, p0}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 795
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 797
    :goto_0
    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 798
    throw p0
.end method

.method private static c(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 534
    :cond_0
    invoke-static {p0, p1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;

    move-result-object p0

    .line 536
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getIncludeAllResponseCodes()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;->b(Ljava/lang/String;Lokhttp3/Response;)V

    goto :goto_1

    .line 537
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 538
    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getHandler()Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;->a(Ljava/lang/String;Lokhttp3/Response;)V

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Z
    .locals 1

    .line 337
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->b()Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/callapp/contacts/util/http/HttpRequestParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 508
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 510
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 514
    :try_start_0
    invoke-static {v0, p0}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 515
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 517
    :goto_0
    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return v0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 518
    throw v0
.end method

.method public static d()I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 669
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v3, "rma"

    aput-object v3, v0, v1

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 672
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "myp"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "tk"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    new-instance v3, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;

    invoke-direct {v3}, Lcom/callapp/contacts/util/http/ValidatorHttpResponseHandler;-><init>()V

    .line 676
    new-instance v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;-><init>(Ljava/lang/String;)V

    .line 2100
    iput-object v1, v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->e:Ljava/util/Map;

    .line 2105
    iput v2, v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->f:I

    .line 3090
    iput-object v3, v4, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->c:Lcom/callapp/contacts/util/http/HttpUtils$HttpResponseHandler;

    .line 680
    invoke-virtual {v4}, Lcom/callapp/contacts/util/http/HttpRequestParams$HttpRequestParamsBuilder;->a()Lcom/callapp/contacts/util/http/HttpRequestParams;

    move-result-object v0

    .line 683
    invoke-static {v0}, Lcom/callapp/contacts/util/http/HttpUtils;->d(Lcom/callapp/contacts/util/http/HttpRequestParams;)I

    move-result v0

    return v0
.end method

.method public static d(Lcom/callapp/contacts/util/http/HttpRequestParams;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 740
    :try_start_0
    new-instance v2, Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;

    invoke-direct {v2}, Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;-><init>()V

    .line 742
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getFormParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getFormParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 744
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 745
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 747
    invoke-virtual {v2, v5, v4}, Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;

    goto :goto_0

    .line 749
    :cond_0
    new-instance v4, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "postEncodedFormAndReadInputStream null value. Name: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", url: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4030
    :cond_1
    iget-object v3, v2, Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 4036
    iget-object v2, v2, Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/h/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 4037
    sget-object v3, Lcom/callapp/contacts/util/http/UTF8FormEncodingBuilder;->a:Lokhttp3/MediaType;

    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v2

    .line 756
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 757
    invoke-static {p0, v3}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;Lokhttp3/Request$Builder;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 759
    invoke-virtual {p0}, Lcom/callapp/contacts/util/http/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 761
    invoke-static {v2, p0}, Lcom/callapp/contacts/util/http/HttpUtils;->c(Lokhttp3/Request;Lcom/callapp/contacts/util/http/HttpRequestParams;)Lokhttp3/Response;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 763
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0

    goto :goto_1

    .line 4031
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Form encoded body must have at least one part."

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 767
    :try_start_1
    const-class v2, Lcom/callapp/contacts/util/http/HttpUtils;

    invoke-static {v2, p0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    return v0

    :goto_2
    invoke-static {v1}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lokhttp3/Response;)V

    .line 770
    throw p0
.end method

.method private static e(Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;
    .locals 2

    .line 450
    :try_start_0
    invoke-static {p0}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Lcom/callapp/contacts/util/http/HttpRequestParams;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 452
    const-class v0, Lcom/callapp/contacts/util/http/HttpUtils;

    const-string v1, "IOException in readString"

    invoke-static {v0, p0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAWSCredentialsUrl()Ljava/lang/String;
    .locals 3

    .line 606
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallappServerPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "sf"

    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?myp="

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aR:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 609
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&tk="

    .line 610
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->aV:Lcom/callapp/contacts/manager/preferences/prefs/StringPref;

    .line 611
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/StringPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&ispro=1"

    .line 612
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&cvc="

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 619
    const-class v1, Lcom/callapp/contacts/util/http/HttpUtils;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getCallAppDomain()Ljava/lang/String;
    .locals 2

    .line 902
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "callappDomain"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallAppServerHost()Ljava/lang/String;
    .locals 2

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallappServerPrefix()Ljava/lang/String;
    .locals 2

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getCallAppServerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/callapp-server/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 854
    sget-object v0, Lcom/callapp/contacts/util/http/HttpUtils;->f:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static isWiFiConnected()Z
    .locals 4

    .line 239
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 241
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method
