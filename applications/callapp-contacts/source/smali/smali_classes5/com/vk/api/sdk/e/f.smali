.class public final Lcom/vk/api/sdk/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/VKLoader;",
        "",
        "()V",
        "load",
        "",
        "url",
        "",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final a:Lcom/vk/api/sdk/e/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/vk/api/sdk/e/f;

    invoke-direct {v0}, Lcom/vk/api/sdk/e/f;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/e/f;->a:Lcom/vk/api/sdk/e/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 3

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 41
    new-instance v1, Lcom/vk/api/sdk/m$b;

    invoke-direct {v1}, Lcom/vk/api/sdk/m$b;-><init>()V

    invoke-virtual {v1}, Lcom/vk/api/sdk/m$b;->a()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 43
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    .line 46
    :goto_1
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    :cond_2
    throw v0

    :catch_1
    move-object p0, v0

    :goto_3
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_4
    return-object v0
.end method
