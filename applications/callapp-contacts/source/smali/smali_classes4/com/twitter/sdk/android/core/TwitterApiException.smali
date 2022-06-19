.class public Lcom/twitter/sdk/android/core/TwitterApiException;
.super Lcom/twitter/sdk/android/core/TwitterException;
.source "SourceFile"


# instance fields
.field public final a:Lcom/twitter/sdk/android/core/models/ApiError;

.field private final b:Lcom/twitter/sdk/android/core/s;

.field private final c:I

.field private final d:Lretrofit2/Response;


# direct methods
.method public constructor <init>(Lretrofit2/Response;)V
    .locals 3

    .line 43
    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterApiException;->a(Lretrofit2/Response;)Lcom/twitter/sdk/android/core/models/ApiError;

    move-result-object v0

    .line 1086
    new-instance v1, Lcom/twitter/sdk/android/core/s;

    .line 1134
    iget-object v2, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    .line 1086
    invoke-direct {v1, v2}, Lcom/twitter/sdk/android/core/s;-><init>(Lokhttp3/Headers;)V

    .line 2124
    iget-object v2, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    .line 43
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/twitter/sdk/android/core/TwitterApiException;-><init>(Lretrofit2/Response;Lcom/twitter/sdk/android/core/models/ApiError;Lcom/twitter/sdk/android/core/s;I)V

    return-void
.end method

.method constructor <init>(Lretrofit2/Response;Lcom/twitter/sdk/android/core/models/ApiError;Lcom/twitter/sdk/android/core/s;I)V
    .locals 2

    .line 3121
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP request failed, Status: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->a:Lcom/twitter/sdk/android/core/models/ApiError;

    .line 50
    iput-object p3, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->b:Lcom/twitter/sdk/android/core/s;

    .line 51
    iput p4, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->c:I

    .line 52
    iput-object p1, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->d:Lretrofit2/Response;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/ApiError;
    .locals 3

    .line 105
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    new-instance v1, Lcom/twitter/sdk/android/core/models/SafeListAdapter;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/models/SafeListAdapter;-><init>()V

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->a(Lcom/google/gson/k;)Lcom/google/gson/g;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;-><init>()V

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->a(Lcom/google/gson/k;)Lcom/google/gson/g;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/gson/g;->a()Lcom/google/gson/f;

    move-result-object v0

    .line 110
    :try_start_0
    const-class v1, Lcom/twitter/sdk/android/core/models/ApiErrors;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/ApiErrors;

    .line 111
    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/ApiErrors;->errors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/ApiError;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Invalid json: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Twitter"

    invoke-interface {v1, v2, p0, v0}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lretrofit2/Response;)Lcom/twitter/sdk/android/core/models/ApiError;
    .locals 3

    .line 3149
    :try_start_0
    iget-object p0, p0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    .line 93
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lc/h;

    move-result-object p0

    invoke-interface {p0}, Lc/h;->a()Lc/f;

    move-result-object p0

    .line 3562
    invoke-virtual {p0}, Lc/f;->v()Lc/f;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lc/f;->r()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-static {p0}, Lcom/twitter/sdk/android/core/TwitterApiException;->a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/models/ApiError;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Unexpected response"

    invoke-interface {v0, v1, v2, p0}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/twitter/sdk/android/core/TwitterApiException;->a:Lcom/twitter/sdk/android/core/models/ApiError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lcom/twitter/sdk/android/core/models/ApiError;->code:I

    return v0
.end method
