.class public final Lcom/vk/api/sdk/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/c/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 *2\u00020\u0001:\u0001*B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\nJ\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\t2\u0006\u0010)\u001a\u00020\tH\u0002R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\'\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u001cR\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0018\u001a\u0004\u0008\u001f\u0010\u001cR\'\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u0018\u001a\u0004\u0008\"\u0010\u0016\u00a8\u0006+"
    }
    d2 = {
        "Lcom/vk/api/sdk/okhttp/LoggingInterceptor;",
        "Lokhttp3/Interceptor;",
        "filterCredentials",
        "",
        "logger",
        "Lcom/vk/api/sdk/utils/log/Logger;",
        "(ZLcom/vk/api/sdk/utils/log/Logger;)V",
        "keysToFilter",
        "",
        "",
        "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V",
        "delegate",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "getDelegate",
        "()Lokhttp3/logging/HttpLoggingInterceptor;",
        "delegate$delegate",
        "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;",
        "sensitiveKeyRequestTransformer",
        "Lkotlin/Function1;",
        "Lkotlin/text/MatchResult;",
        "",
        "getSensitiveKeyRequestTransformer",
        "()Lkotlin/jvm/functions/Function1;",
        "sensitiveKeyRequestTransformer$delegate",
        "Lkotlin/Lazy;",
        "sensitiveKeysRequestRegex",
        "Lkotlin/text/Regex;",
        "getSensitiveKeysRequestRegex",
        "()Lkotlin/text/Regex;",
        "sensitiveKeysRequestRegex$delegate",
        "sensitiveKeysResponseRegex",
        "getSensitiveKeysResponseRegex",
        "sensitiveKeysResponseRegex$delegate",
        "sensitiveKeysResponseTransformer",
        "getSensitiveKeysResponseTransformer",
        "sensitiveKeysResponseTransformer$delegate",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "removeSensitiveKeys",
        "msg",
        "Companion",
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
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/vk/api/sdk/c/b$a;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/vk/api/sdk/e/a/c$a;",
            "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lcom/vk/api/sdk/e/c;

.field private final h:Z

.field private final i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/vk/api/sdk/e/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/aa;

    const-class v3, Lcom/vk/api/sdk/c/b;

    const-string v4, "delegate"

    const-string v5, "getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkotlin/jvm/internal/aa;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    aput-object v2, v1, v6

    sput-object v1, Lcom/vk/api/sdk/c/b;->a:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/vk/api/sdk/c/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/api/sdk/c/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/vk/api/sdk/c/b;->b:Lcom/vk/api/sdk/c/b$a;

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/n;

    .line 112
    sget-object v2, Lcom/vk/api/sdk/e/a/c$a;->NONE:Lcom/vk/api/sdk/e/a/c$a;

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v6

    .line 113
    sget-object v2, Lcom/vk/api/sdk/e/a/c$a;->ERROR:Lcom/vk/api/sdk/e/a/c$a;

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v2, v3}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v2

    aput-object v2, v1, v0

    .line 114
    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->WARNING:Lcom/vk/api/sdk/e/a/c$a;

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 115
    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->DEBUG:Lcom/vk/api/sdk/e/a/c$a;

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 116
    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->VERBOSE:Lcom/vk/api/sdk/e/a/c$a;

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 117
    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->NONE:Lcom/vk/api/sdk/e/a/c$a;

    sget-object v2, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 111
    invoke-static {v1}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/vk/api/sdk/c/b;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ZLcom/vk/api/sdk/e/a/c;)V
    .locals 3

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access_token"

    const-string v1, "key"

    const-string v2, "client_secret"

    .line 43
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 41
    invoke-direct {p0, p1, v0, p2}, Lcom/vk/api/sdk/c/b;-><init>(ZLjava/util/Collection;Lcom/vk/api/sdk/e/a/c;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;Lcom/vk/api/sdk/e/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vk/api/sdk/e/a/c;",
            ")V"
        }
    .end annotation

    const-string v0, "keysToFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vk/api/sdk/c/b;->h:Z

    iput-object p2, p0, Lcom/vk/api/sdk/c/b;->i:Ljava/util/Collection;

    iput-object p3, p0, Lcom/vk/api/sdk/c/b;->j:Lcom/vk/api/sdk/e/a/c;

    .line 48
    new-instance p1, Lcom/vk/api/sdk/c/b$d;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/c/b$d;-><init>(Lcom/vk/api/sdk/c/b;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/c/b;->c:Lkotlin/Lazy;

    .line 57
    sget-object p1, Lcom/vk/api/sdk/c/b$c;->a:Lcom/vk/api/sdk/c/b$c;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/c/b;->d:Lkotlin/Lazy;

    .line 64
    new-instance p1, Lcom/vk/api/sdk/c/b$e;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/c/b$e;-><init>(Lcom/vk/api/sdk/c/b;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/c/b;->e:Lkotlin/Lazy;

    .line 73
    sget-object p1, Lcom/vk/api/sdk/c/b$f;->a:Lcom/vk/api/sdk/c/b$f;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/c/b;->f:Lkotlin/Lazy;

    .line 79
    new-instance p1, Lcom/vk/api/sdk/c/b$b;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/c/b$b;-><init>(Lcom/vk/api/sdk/c/b;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lcom/vk/api/sdk/e/e;->a(Lkotlin/jvm/functions/Function0;)Lcom/vk/api/sdk/e/c;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/c/b;->g:Lcom/vk/api/sdk/e/c;

    return-void
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1105
    check-cast p1, Ljava/lang/CharSequence;

    .line 2000
    iget-object v0, p0, Lcom/vk/api/sdk/c/b;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/h/l;

    .line 3000
    iget-object v1, p0, Lcom/vk/api/sdk/c/b;->d:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1106
    invoke-virtual {v0, p1, v1}, Lkotlin/h/l;->a(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 4000
    iget-object v0, p0, Lcom/vk/api/sdk/c/b;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/h/l;

    .line 5000
    iget-object p0, p0, Lcom/vk/api/sdk/c/b;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 1107
    invoke-virtual {v0, p1, p0}, Lkotlin/h/l;->a(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/vk/api/sdk/c/b;)Ljava/util/Collection;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/vk/api/sdk/c/b;->i:Ljava/util/Collection;

    return-object p0
.end method

.method private final a()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 3

    iget-object v0, p0, Lcom/vk/api/sdk/c/b;->g:Lcom/vk/api/sdk/e/c;

    sget-object v1, Lcom/vk/api/sdk/c/b;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/vk/api/sdk/e/c;->a(Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method

.method public static final synthetic b(Lcom/vk/api/sdk/c/b;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/vk/api/sdk/c/b;->h:Z

    return p0
.end method

.method public static final synthetic c(Lcom/vk/api/sdk/c/b;)Lcom/vk/api/sdk/e/a/c;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/vk/api/sdk/c/b;->j:Lcom/vk/api/sdk/e/a/c;

    return-object p0
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 11

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 96
    :goto_0
    const-class v1, Lcom/vk/api/sdk/c/a;

    invoke-virtual {v0, v1}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/c/a;

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, v0, Lcom/vk/api/sdk/c/a;->a:Lcom/vk/api/sdk/e/a/c$a;

    if-nez v0, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/vk/api/sdk/c/b;->j:Lcom/vk/api/sdk/e/a/c;

    invoke-interface {v0}, Lcom/vk/api/sdk/e/a/c;->a()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/e/a/c$a;

    .line 97
    :cond_2
    invoke-direct {p0}, Lcom/vk/api/sdk/c/b;->a()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    const-wide/16 v6, 0x40

    const/4 v8, 0x0

    const/4 v9, 0x1

    cmp-long v10, v4, v6

    if-gtz v10, :cond_4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-ne v2, v9, :cond_5

    .line 98
    sget-object v2, Lcom/vk/api/sdk/c/b;->k:Ljava/util/Map;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/vk/api/sdk/e/a/c$a;

    aput-object v0, v3, v8

    sget-object v0, Lcom/vk/api/sdk/e/a/c$a;->WARNING:Lcom/vk/api/sdk/e/a/c$a;

    aput-object v0, v3, v9

    invoke-static {v3}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_3

    .line 99
    :cond_5
    sget-object v2, Lcom/vk/api/sdk/c/b;->k:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 97
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 101
    invoke-direct {p0}, Lcom/vk/api/sdk/c/b;->a()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
