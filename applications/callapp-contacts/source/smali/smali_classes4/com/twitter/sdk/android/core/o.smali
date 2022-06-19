.class public Lcom/twitter/sdk/android/core/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lretrofit2/Retrofit;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/r;->c()Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    .line 1030
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/e;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/internal/g;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/o;-><init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/t;)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 1099
    iget-object v0, v0, Lcom/twitter/sdk/android/core/r;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-eqz p1, :cond_0

    .line 2039
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v1, p1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/l;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/g;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/o;-><init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/g;)V

    return-void

    .line 2036
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/t;Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    .line 2099
    iget-object v0, v0, Lcom/twitter/sdk/android/core/r;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3064
    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/l;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 3065
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {p2}, Lcom/twitter/sdk/android/core/internal/g;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/o;-><init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/g;)V

    return-void

    .line 3061
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HttpClient must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3057
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Session must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/r;->c()Lcom/twitter/sdk/android/core/e;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/twitter/sdk/android/core/internal/a/e;->a(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/e;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 1049
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/twitter/sdk/android/core/internal/g;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/g;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/o;-><init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/g;)V

    return-void

    .line 1045
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HttpClient must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lcom/twitter/sdk/android/core/internal/g;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4103
    new-instance v0, Lretrofit2/Retrofit$a;

    invoke-direct {v0}, Lretrofit2/Retrofit$a;-><init>()V

    .line 4104
    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$a;->a(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$a;

    move-result-object p1

    .line 5041
    iget-object p2, p2, Lcom/twitter/sdk/android/core/internal/g;->a:Ljava/lang/String;

    .line 4105
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$a;->a(Ljava/lang/String;)Lretrofit2/Retrofit$a;

    move-result-object p1

    .line 5111
    new-instance p2, Lcom/google/gson/g;

    invoke-direct {p2}, Lcom/google/gson/g;-><init>()V

    new-instance v0, Lcom/twitter/sdk/android/core/models/SafeListAdapter;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/models/SafeListAdapter;-><init>()V

    .line 5112
    invoke-virtual {p2, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/k;)Lcom/google/gson/g;

    move-result-object p2

    new-instance v0, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/models/SafeMapAdapter;-><init>()V

    .line 5113
    invoke-virtual {p2, v0}, Lcom/google/gson/g;->a(Lcom/google/gson/k;)Lcom/google/gson/g;

    move-result-object p2

    const-class v0, Lcom/twitter/sdk/android/core/models/BindingValues;

    new-instance v1, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;

    invoke-direct {v1}, Lcom/twitter/sdk/android/core/models/BindingValuesAdapter;-><init>()V

    .line 5114
    invoke-virtual {p2, v0, v1}, Lcom/google/gson/g;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    move-result-object p2

    .line 5115
    invoke-virtual {p2}, Lcom/google/gson/g;->a()Lcom/google/gson/f;

    move-result-object p2

    .line 4106
    invoke-static {p2}, Lretrofit2/a/a/a;->a(Lcom/google/gson/f;)Lretrofit2/a/a/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$a;->a(Lretrofit2/e$a;)Lretrofit2/Retrofit$a;

    move-result-object p1

    .line 4107
    invoke-virtual {p1}, Lretrofit2/Retrofit$a;->a()Lretrofit2/Retrofit;

    move-result-object p1

    .line 99
    iput-object p1, p0, Lcom/twitter/sdk/android/core/o;->c:Lretrofit2/Retrofit;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/o;->c:Lretrofit2/Retrofit;

    invoke-virtual {v1, p1}, Lretrofit2/Retrofit;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/core/o;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAccountService()Lcom/twitter/sdk/android/core/services/AccountService;
    .locals 1

    .line 126
    const-class v0, Lcom/twitter/sdk/android/core/services/AccountService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/AccountService;

    return-object v0
.end method

.method public getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;
    .locals 1

    .line 177
    const-class v0, Lcom/twitter/sdk/android/core/services/MediaService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/MediaService;

    return-object v0
.end method

.method public getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;
    .locals 1

    .line 140
    const-class v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/o;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/services/StatusesService;

    return-object v0
.end method
