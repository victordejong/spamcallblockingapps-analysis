.class public final Lcom/vk/api/sdk/b/f;
.super Lcom/vk/api/sdk/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vk/api/sdk/b/c<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0017\u0010\u001a\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001b\u001a\u00020\u001cH\u0016\u00a2\u0006\u0002\u0010\u001dJ\'\u0010\u001e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010#\u00a2\u0006\u0002\u0010$J\u0017\u0010%\u001a\u0004\u0018\u00018\u00002\u0006\u0010&\u001a\u00020\'H\u0016\u00a2\u0006\u0002\u0010(R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lcom/vk/api/sdk/chain/MethodChainCall;",
        "T",
        "Lcom/vk/api/sdk/chain/ChainCall;",
        "manager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "okHttpExecutor",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "callBuilder",
        "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;",
        "defaultDeviceId",
        "",
        "defaultLang",
        "parser",
        "Lcom/vk/api/sdk/VKApiResponseParser;",
        "(Lcom/vk/api/sdk/VKApiManager;Lcom/vk/api/sdk/okhttp/OkHttpExecutor;Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;Ljava/lang/String;Ljava/lang/String;Lcom/vk/api/sdk/VKApiResponseParser;)V",
        "getCallBuilder",
        "()Lcom/vk/api/sdk/okhttp/OkHttpMethodCall$Builder;",
        "getDefaultDeviceId",
        "()Ljava/lang/String;",
        "setDefaultDeviceId",
        "(Ljava/lang/String;)V",
        "getDefaultLang",
        "getOkHttpExecutor",
        "()Lcom/vk/api/sdk/okhttp/OkHttpExecutor;",
        "getParser",
        "()Lcom/vk/api/sdk/VKApiResponseParser;",
        "call",
        "args",
        "Lcom/vk/api/sdk/chain/ChainArgs;",
        "(Lcom/vk/api/sdk/chain/ChainArgs;)Ljava/lang/Object;",
        "parseResult",
        "methodResponse",
        "Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;",
        "methodName",
        "ignoredExecuteErrors",
        "",
        "(Lcom/vk/api/sdk/okhttp/OkHttpExecutor$MethodResponse;Ljava/lang/String;[I)Ljava/lang/Object;",
        "runRequest",
        "mc",
        "Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;",
        "(Lcom/vk/api/sdk/okhttp/OkHttpMethodCall;)Ljava/lang/Object;",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final a:Lcom/vk/api/sdk/c/c;

.field private final b:Lcom/vk/api/sdk/c/e$a;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/vk/api/sdk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/api/sdk/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/g;Lcom/vk/api/sdk/c/c;Lcom/vk/api/sdk/c/e$a;Ljava/lang/String;Ljava/lang/String;Lcom/vk/api/sdk/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/g;",
            "Lcom/vk/api/sdk/c/c;",
            "Lcom/vk/api/sdk/c/e$a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/h<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBuilder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDeviceId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultLang"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/vk/api/sdk/b/c;-><init>(Lcom/vk/api/sdk/g;)V

    iput-object p2, p0, Lcom/vk/api/sdk/b/f;->a:Lcom/vk/api/sdk/c/c;

    iput-object p3, p0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    iput-object p4, p0, Lcom/vk/api/sdk/b/f;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vk/api/sdk/b/f;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vk/api/sdk/b/f;->e:Lcom/vk/api/sdk/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vk/api/sdk/b/b;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/b/b;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    iget-object v3, v1, Lcom/vk/api/sdk/b/b;->a:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/vk/api/sdk/b/b;->b:Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 50
    iget-object v3, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    .line 2028
    iget-object v6, v1, Lcom/vk/api/sdk/b/b;->a:Ljava/lang/String;

    const-string v7, "captcha_sid"

    .line 51
    invoke-virtual {v3, v7, v6}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/c/e$a;

    move-result-object v3

    .line 2029
    iget-object v6, v1, Lcom/vk/api/sdk/b/b;->b:Ljava/lang/String;

    const-string v7, "captcha_key"

    .line 52
    invoke-virtual {v3, v7, v6}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/c/e$a;

    .line 2030
    :cond_3
    iget-boolean v1, v1, Lcom/vk/api/sdk/b/b;->c:Z

    const-string v3, "1"

    if-eqz v1, :cond_4

    .line 56
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    const-string v6, "confirm"

    invoke-virtual {v1, v6, v3}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/c/e$a;

    .line 59
    :cond_4
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    const-string v6, "device_id"

    invoke-virtual {v1, v6}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, ""

    if-nez v1, :cond_5

    move-object v1, v7

    .line 60
    :cond_5
    move-object v8, v1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 61
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->c:Ljava/lang/String;

    .line 63
    :cond_6
    iget-object v8, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "Locale.getDefault()"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v1}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/c/e$a;

    .line 65
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    const-string v6, "lang"

    invoke-virtual {v1, v6}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    move-object v7, v1

    .line 66
    :goto_3
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/h/p;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 67
    iget-object v7, v0, Lcom/vk/api/sdk/b/f;->d:Ljava/lang/String;

    .line 69
    :cond_8
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Lcom/vk/api/sdk/c/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/c/e$a;

    .line 71
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->b:Lcom/vk/api/sdk/c/e$a;

    invoke-virtual {v1}, Lcom/vk/api/sdk/c/e$a;->a()Lcom/vk/api/sdk/c/e;

    move-result-object v1

    const-string v6, "mc"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2074
    iget-object v6, v0, Lcom/vk/api/sdk/b/f;->a:Lcom/vk/api/sdk/c/c;

    const-string v7, "call"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2080
    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2169
    iget-object v8, v6, Lcom/vk/api/sdk/c/c;->b:Ljava/lang/String;

    .line 3062
    iget-object v9, v1, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    const-string v10, "method"

    .line 2082
    invoke-static {v9, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3176
    iget-object v11, v6, Lcom/vk/api/sdk/c/c;->e:Ljava/lang/String;

    if-eqz v11, :cond_a

    if-eqz v8, :cond_a

    iget-object v11, v6, Lcom/vk/api/sdk/c/c;->e:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_4

    .line 3177
    :cond_9
    new-instance v1, Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;

    invoke-direct {v1, v9}, Lcom/vk/api/sdk/exceptions/IgnoredAccessTokenException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 2084
    :cond_a
    :goto_4
    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4170
    iget-object v9, v6, Lcom/vk/api/sdk/c/c;->c:Ljava/lang/String;

    .line 2086
    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2088
    sget-object v11, Lcom/vk/api/sdk/internal/b;->b:Lcom/vk/api/sdk/internal/b;

    .line 5062
    iget-object v12, v1, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    .line 5064
    iget-object v13, v1, Lcom/vk/api/sdk/c/e;->c:Ljava/util/Map;

    .line 6063
    iget-object v14, v1, Lcom/vk/api/sdk/c/e;->b:Ljava/lang/String;

    .line 2089
    iget-object v15, v6, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 7037
    iget-object v15, v15, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 7040
    iget v15, v15, Lcom/vk/api/sdk/e;->b:I

    const-string v4, "methodName"

    .line 2088
    invoke-static {v12, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "methodArgs"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "methodVersion"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7052
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "/method/"

    invoke-virtual {v12, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "path"

    .line 7051
    invoke-static {v5, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "version"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7097
    invoke-static {v13}, Lkotlin/a/ai;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const-string v12, "v"

    .line 7098
    invoke-interface {v2, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "https"

    .line 7099
    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7100
    move-object v3, v8

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v3, 0x1

    :goto_6
    if-nez v3, :cond_d

    const-string v3, "access_token"

    .line 7101
    invoke-interface {v2, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    if-eqz v15, :cond_e

    .line 7103
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "api_id"

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7106
    :cond_e
    :goto_7
    invoke-virtual {v11, v5, v2, v9}, Lcom/vk/api/sdk/internal/b;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2091
    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "paramsString"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8062
    iget-object v5, v1, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    const-string v7, "execute."

    const/4 v8, 0x0

    .line 8405
    invoke-static {v5, v7, v8}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 7138
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "https://vk.com/?"

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 7139
    invoke-virtual {v5, v10}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "execute"

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "code"

    .line 7140
    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    const/4 v8, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_11

    goto :goto_a

    .line 7141
    :cond_11
    new-instance v2, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;

    const/16 v17, 0xf

    .line 9062
    iget-object v1, v1, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xf0

    const/16 v26, 0x0

    const-string v20, "Hey dude don\'t execute your hacky code ;)"

    move-object/from16 v16, v2

    move-object/from16 v18, v1

    .line 7141
    invoke-direct/range {v16 .. v26}, Lcom/vk/api/sdk/exceptions/VKApiExecutionException;-><init>(ILjava/lang/String;ZLjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 2091
    :cond_12
    :goto_a
    sget-object v5, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v7, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-virtual {v5, v7}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 2093
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 2094
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 2095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 9197
    iget-object v5, v6, Lcom/vk/api/sdk/c/c;->d:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_13

    const/4 v8, 0x1

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    :goto_b
    if-eqz v8, :cond_14

    .line 9198
    iget-object v5, v6, Lcom/vk/api/sdk/c/c;->d:Ljava/lang/String;

    goto :goto_c

    .line 10057
    :cond_14
    iget-object v5, v6, Lcom/vk/api/sdk/c/c;->f:Lcom/vk/api/sdk/c/d;

    .line 11039
    iget-object v5, v5, Lcom/vk/api/sdk/c/d;->a:Lcom/vk/api/sdk/e;

    .line 11053
    iget-object v5, v5, Lcom/vk/api/sdk/e;->k:Lkotlin/jvm/functions/Function0;

    .line 10057
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11230
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "https://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/method"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2095
    :goto_c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12062
    iget-object v5, v1, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    .line 2095
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 2096
    sget-object v3, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 2097
    const-class v3, Ljava/util/Map;

    .line 12065
    iget-object v5, v1, Lcom/vk/api/sdk/c/e;->d:Lcom/vk/api/sdk/c/f;

    const/4 v7, 0x0

    if-eqz v5, :cond_15

    const/4 v8, 0x4

    new-array v9, v8, [Lkotlin/n;

    .line 13035
    iget-object v11, v5, Lcom/vk/api/sdk/c/f;->a:Ljava/lang/Integer;

    const-string v12, "UID"

    invoke-static {v12, v11}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    .line 13036
    iget-object v11, v5, Lcom/vk/api/sdk/c/f;->b:Ljava/lang/Boolean;

    const-string v12, "AWAIT_NETWORK"

    invoke-static {v12, v11}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v9, v12

    const/4 v11, 0x2

    .line 13037
    iget-object v12, v5, Lcom/vk/api/sdk/c/f;->c:Ljava/lang/String;

    const-string v13, "REASON"

    invoke-static {v13, v12}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    .line 13038
    iget-object v5, v5, Lcom/vk/api/sdk/c/f;->d:Ljava/lang/Integer;

    const-string v12, "RETRY_COUNT"

    invoke-static {v12, v5}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v5

    aput-object v5, v9, v11

    const-string v5, "pairs"

    .line 13034
    invoke-static {v9, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {v8}, Lkotlin/a/ai;->a(I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v9}, Lkotlin/a/ai;->a(Ljava/util/Map;[Lkotlin/n;)V

    goto :goto_d

    :cond_15
    move-object v5, v7

    .line 2097
    :goto_d
    invoke-virtual {v2, v3, v5}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 2098
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 2099
    iget-object v3, v6, Lcom/vk/api/sdk/c/c;->b:Ljava/lang/String;

    .line 2100
    new-instance v5, Lcom/vk/api/sdk/c/c$b;

    const-string v8, "request"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15000
    iget-object v6, v6, Lcom/vk/api/sdk/c/c;->a:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vk/api/sdk/m;

    .line 14154
    invoke-virtual {v6}, Lcom/vk/api/sdk/m;->a()Lokhttp3/OkHttpClient;

    move-result-object v6

    invoke-virtual {v6, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 2100
    invoke-static {v2}, Lcom/vk/api/sdk/c/c;->a(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Lcom/vk/api/sdk/c/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15062
    iget-object v1, v1, Lcom/vk/api/sdk/c/e;->a:Ljava/lang/String;

    const-string v2, "methodResponse"

    .line 2074
    invoke-static {v5, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15223
    iget-object v2, v5, Lcom/vk/api/sdk/c/c$b;->a:Ljava/lang/String;

    if-eqz v2, :cond_1a

    const-string v3, "$this$hasSimpleError"

    .line 15080
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16030
    sget-object v3, Lcom/vk/api/sdk/internal/c;->a:Lcom/vk/api/sdk/internal/c;

    invoke-static {v2}, Lcom/vk/api/sdk/internal/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 16224
    iget-object v3, v5, Lcom/vk/api/sdk/c/c$b;->b:Ljava/lang/String;

    const-string v4, "$this$toSimpleError"

    .line 15080
    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17031
    sget-object v4, Lcom/vk/api/sdk/internal/c;->a:Lcom/vk/api/sdk/internal/c;

    const-string v4, "errorStr"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17062
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "error"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_16

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17063
    :cond_16
    invoke-static {v4, v1, v3}, Lcom/vk/api/sdk/internal/c;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object v1

    .line 15080
    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_17
    const-string v3, "$this$hasExecuteError"

    .line 15081
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18029
    sget-object v3, Lcom/vk/api/sdk/internal/c;->a:Lcom/vk/api/sdk/internal/c;

    invoke-static {v2, v7}, Lcom/vk/api/sdk/internal/c;->a(Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_19

    .line 15082
    iget-object v1, v0, Lcom/vk/api/sdk/b/f;->e:Lcom/vk/api/sdk/h;

    if-eqz v1, :cond_18

    invoke-interface {v1, v2}, Lcom/vk/api/sdk/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_18
    return-object v7

    :cond_19
    const-string v3, "$this$toExecuteError"

    .line 15081
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18032
    sget-object v3, Lcom/vk/api/sdk/internal/c;->a:Lcom/vk/api/sdk/internal/c;

    const-string v4, "response"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18114
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "execute_errors"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "JSONObject(response).get\u2026des.PARAM_EXECUTE_ERRORS)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v1, v7}, Lcom/vk/api/sdk/internal/c;->a(Lorg/json/JSONArray;Ljava/lang/String;[I)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object v1

    .line 15081
    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 15079
    :cond_1a
    new-instance v1, Lcom/vk/api/sdk/exceptions/VKApiException;

    const-string v2, "Response returned null instead of valid string response"

    invoke-direct {v1, v2}, Lcom/vk/api/sdk/exceptions/VKApiException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
