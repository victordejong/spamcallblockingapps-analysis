.class public final Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/config/general/ApplicationContextSetter;
.implements Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;
.implements Lcom/sinch/verification/core/config/general/GlobalConfigCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/config/general/SinchGlobalConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0015B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00032\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\t8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;",
        "Lcom/sinch/verification/core/config/general/ApplicationContextSetter;",
        "Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;",
        "Lcom/sinch/verification/core/config/general/GlobalConfigCreator;",
        "()V",
        "additionalInterceptors",
        "",
        "Lokhttp3/Interceptor;",
        "apiHost",
        "",
        "authorizationMethod",
        "Lcom/sinch/verification/core/auth/AuthorizationMethod;",
        "baseUrl",
        "getBaseUrl",
        "()Ljava/lang/String;",
        "context",
        "Landroid/content/Context;",
        "applicationContext",
        "build",
        "Lcom/sinch/verification/core/config/general/GlobalConfig;",
        "interceptors",
        "Companion",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;


# instance fields
.field private additionalInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field private apiHost:Ljava/lang/String;

.field private authorizationMethod:Lcom/sinch/verification/core/auth/AuthorizationMethod;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->Companion:Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://verificationapi-v1.sinch.com/"

    .line 50
    iput-object v0, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->apiHost:Ljava/lang/String;

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    .line 51
    iput-object v0, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->additionalInterceptors:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;-><init>()V

    return-void
.end method

.method private final getBaseUrl()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->apiHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "verification/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/sinch/verification/core/config/general/ApplicationContextSetter;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->Companion:Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;

    invoke-virtual {v0}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder$Companion;->getInstance()Lcom/sinch/verification/core/config/general/ApplicationContextSetter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final apiHost(Ljava/lang/String;)Lcom/sinch/verification/core/config/general/GlobalConfigCreator;
    .locals 1

    const-string v0, "apiHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;

    iput-object p1, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->apiHost:Ljava/lang/String;

    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/general/GlobalConfigCreator;

    return-object p1
.end method

.method public final applicationContext(Landroid/content/Context;)Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;
    .locals 1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;

    iput-object p1, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->context:Landroid/content/Context;

    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/general/AuthorizationMethodSetter;

    return-object p1
.end method

.method public final authorizationMethod(Lcom/sinch/verification/core/auth/AuthorizationMethod;)Lcom/sinch/verification/core/config/general/GlobalConfigCreator;
    .locals 1

    const-string v0, "authorizationMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;

    iput-object p1, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->authorizationMethod:Lcom/sinch/verification/core/auth/AuthorizationMethod;

    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/general/GlobalConfigCreator;

    return-object p1
.end method

.method public final build()Lcom/sinch/verification/core/config/general/GlobalConfig;
    .locals 19

    move-object/from16 v0, p0

    .line 57
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 58
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 59
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/sinch/verification/core/auth/AuthorizationInterceptor;

    .line 62
    iget-object v3, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->authorizationMethod:Lcom/sinch/verification/core/auth/AuthorizationMethod;

    if-nez v3, :cond_0

    const-string v4, "authorizationMethod"

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    .line 61
    :cond_0
    invoke-direct {v2, v3}, Lcom/sinch/verification/core/auth/AuthorizationInterceptor;-><init>(Lcom/sinch/verification/core/auth/AuthorizationMethod;)V

    check-cast v2, Lokhttp3/Interceptor;

    .line 60
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->additionalInterceptors:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 97
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Interceptor;

    .line 65
    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 68
    new-instance v2, Lretrofit2/Retrofit$a;

    invoke-direct {v2}, Lretrofit2/Retrofit$a;-><init>()V

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lretrofit2/Retrofit$a;->a(Ljava/lang/String;)Lretrofit2/Retrofit$a;

    move-result-object v2

    .line 71
    new-instance v3, Lkotlinx/serialization/json/Json;

    sget-object v4, Lkotlinx/serialization/json/JsonConfiguration;->Companion:Lkotlinx/serialization/json/JsonConfiguration$Companion;

    invoke-virtual {v4}, Lkotlinx/serialization/json/JsonConfiguration$Companion;->getStable()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7fd

    const/16 v18, 0x0

    invoke-static/range {v5 .. v18}, Lkotlinx/serialization/json/JsonConfiguration;->copy$default(Lkotlinx/serialization/json/JsonConfiguration;ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILjava/lang/Object;)Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v6}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lkotlinx/serialization/s;

    .line 72
    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v5, "application/json"

    invoke-virtual {v4, v5}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    const-string v5, "$this$asConverterFactory"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "contentType"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v5, Lcom/d/a/a/a/a/b;

    new-instance v7, Lcom/d/a/a/a/a/d$a;

    invoke-direct {v7, v3}, Lcom/d/a/a/a/a/d$a;-><init>(Lkotlinx/serialization/s;)V

    check-cast v7, Lcom/d/a/a/a/a/d;

    invoke-direct {v5, v4, v7}, Lcom/d/a/a/a/a/b;-><init>(Lokhttp3/MediaType;Lcom/d/a/a/a/a/d;)V

    check-cast v5, Lretrofit2/e$a;

    .line 70
    invoke-virtual {v2, v5}, Lretrofit2/Retrofit$a;->a(Lretrofit2/e$a;)Lretrofit2/Retrofit$a;

    move-result-object v2

    .line 74
    invoke-virtual {v2, v1}, Lretrofit2/Retrofit$a;->a(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$a;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lretrofit2/Retrofit$a;->a()Lretrofit2/Retrofit;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;

    .line 77
    iget-object v3, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->context:Landroid/content/Context;

    if-nez v3, :cond_2

    const-string v4, "context"

    invoke-static {v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    const-string v4, "retrofit"

    .line 78
    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-direct {v2, v3, v1, v6}, Lcom/sinch/verification/core/config/general/SinchGlobalConfig;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/sinch/verification/core/config/general/GlobalConfig;

    return-object v2
.end method

.method public final interceptors(Ljava/util/List;)Lcom/sinch/verification/core/config/general/GlobalConfigCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;)",
            "Lcom/sinch/verification/core/config/general/GlobalConfigCreator;"
        }
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    move-object v0, p0

    check-cast v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;

    iput-object p1, v0, Lcom/sinch/verification/core/config/general/SinchGlobalConfig$Builder;->additionalInterceptors:Ljava/util/List;

    move-object p1, p0

    check-cast p1, Lcom/sinch/verification/core/config/general/GlobalConfigCreator;

    return-object p1
.end method
