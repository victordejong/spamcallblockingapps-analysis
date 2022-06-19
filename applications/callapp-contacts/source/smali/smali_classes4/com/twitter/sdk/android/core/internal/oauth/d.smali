.class public abstract Lcom/twitter/sdk/android/core/internal/oauth/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/r;

.field private final b:Lcom/twitter/sdk/android/core/internal/g;

.field private final c:Ljava/lang/String;

.field private final d:Lretrofit2/Retrofit;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/internal/g;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/r;

    .line 43
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->b:Lcom/twitter/sdk/android/core/internal/g;

    .line 44
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->b()Ljava/lang/String;

    move-result-object p1

    .line 1069
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "TwitterAndroidSDK"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2f

    .line 1070
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 1072
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1073
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    .line 1074
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 1075
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1076
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1077
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 1078
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 1080
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    sget-object p2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p1, p2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    .line 1086
    invoke-static {p1}, Lcom/twitter/sdk/android/core/internal/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->c:Ljava/lang/String;

    .line 46
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance p2, Lcom/twitter/sdk/android/core/internal/oauth/-$$Lambda$d$gk1xLIV8KoOOOd-2JRTYWkaVDBM;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/core/internal/oauth/-$$Lambda$d$gk1xLIV8KoOOOd-2JRTYWkaVDBM;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/d;)V

    .line 47
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 53
    invoke-static {}, Lcom/twitter/sdk/android/core/internal/a/e;->a()Lokhttp3/CertificatePinner;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 56
    new-instance p2, Lretrofit2/Retrofit$a;

    invoke-direct {p2}, Lretrofit2/Retrofit$a;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/d;->getApi()Lcom/twitter/sdk/android/core/internal/g;

    move-result-object v0

    .line 2041
    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/g;->a:Ljava/lang/String;

    .line 57
    invoke-virtual {p2, v0}, Lretrofit2/Retrofit$a;->a(Ljava/lang/String;)Lretrofit2/Retrofit$a;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit$a;->a(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$a;

    move-result-object p1

    .line 2042
    new-instance p2, Lcom/google/gson/f;

    invoke-direct {p2}, Lcom/google/gson/f;-><init>()V

    invoke-static {p2}, Lretrofit2/a/a/a;->a(Lcom/google/gson/f;)Lretrofit2/a/a/a;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$a;->a(Lretrofit2/e$a;)Lretrofit2/Retrofit$a;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lretrofit2/Retrofit$a;->a()Lretrofit2/Retrofit;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->d:Lretrofit2/Retrofit;

    return-void
.end method

.method private synthetic a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/twitter/sdk/android/core/internal/oauth/d;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 51
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$gk1xLIV8KoOOOd-2JRTYWkaVDBM(Lcom/twitter/sdk/android/core/internal/oauth/d;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/d;->a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getApi()Lcom/twitter/sdk/android/core/internal/g;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->b:Lcom/twitter/sdk/android/core/internal/g;

    return-object v0
.end method

.method protected getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->d:Lretrofit2/Retrofit;

    return-object v0
.end method

.method protected getTwitterCore()Lcom/twitter/sdk/android/core/r;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->a:Lcom/twitter/sdk/android/core/r;

    return-object v0
.end method

.method protected getUserAgent()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/d;->c:Ljava/lang/String;

    return-object v0
.end method
