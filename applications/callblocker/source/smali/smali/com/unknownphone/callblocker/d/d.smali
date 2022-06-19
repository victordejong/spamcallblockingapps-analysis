.class public Lcom/unknownphone/callblocker/d/d;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unknownphone/callblocker/d/d$a;,
        Lcom/unknownphone/callblocker/d/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/unknownphone/callblocker/d/d;


# instance fields
.field private c:Lcom/unknownphone/callblocker/d/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/unknownphone/callblocker/d/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unknownphone/callblocker/d/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xb4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lokhttp3/x$a;

    invoke-direct {v0}, Lokhttp3/x$a;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->a(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->c(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/x$a;->b(JLjava/util/concurrent/TimeUnit;)Lokhttp3/x$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Lokhttp3/x$a;->a(Lokhttp3/c;)Lokhttp3/x$a;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lokhttp3/x$a;->a()Lokhttp3/x;

    move-result-object v0

    .line 55
    new-instance v1, Lretrofit2/m$a;

    invoke-direct {v1}, Lretrofit2/m$a;-><init>()V

    const-string/jumbo v2, "https://secure.unknownphone.com/api/"

    .line 56
    invoke-virtual {v1, v2}, Lretrofit2/m$a;->a(Ljava/lang/String;)Lretrofit2/m$a;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Lretrofit2/m$a;->a(Lokhttp3/x;)Lretrofit2/m$a;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lretrofit2/m$a;->a()Lretrofit2/m;

    move-result-object v0

    .line 60
    const-class v1, Lcom/unknownphone/callblocker/d/d$a;

    invoke-virtual {v0, v1}, Lretrofit2/m;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/d/d$a;

    iput-object v0, p0, Lcom/unknownphone/callblocker/d/d;->c:Lcom/unknownphone/callblocker/d/d$a;

    .line 61
    return-void
.end method

.method public static a()Lcom/unknownphone/callblocker/d/d;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/unknownphone/callblocker/d/d;->b:Lcom/unknownphone/callblocker/d/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unknownphone/callblocker/d/d;

    invoke-direct {v0}, Lcom/unknownphone/callblocker/d/d;-><init>()V

    sput-object v0, Lcom/unknownphone/callblocker/d/d;->b:Lcom/unknownphone/callblocker/d/d;

    .line 65
    :cond_0
    sget-object v0, Lcom/unknownphone/callblocker/d/d;->b:Lcom/unknownphone/callblocker/d/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 112
    .line 114
    iget-object v0, p0, Lcom/unknownphone/callblocker/d/d;->c:Lcom/unknownphone/callblocker/d/d$a;

    invoke-interface {v0, p1}, Lcom/unknownphone/callblocker/d/d$a;->a(Ljava/util/Map;)Lretrofit2/b;

    move-result-object v6

    .line 117
    :try_start_0
    invoke-interface {v6}, Lretrofit2/b;->a()Lretrofit2/l;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lretrofit2/l;->c()Lokhttp3/ad;

    move-result-object v7

    .line 119
    invoke-virtual {v0}, Lretrofit2/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/ad;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    if-eqz v7, :cond_3

    :try_start_1
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {v7}, Lokhttp3/ad;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_0
    if-eqz v7, :cond_0

    :try_start_2
    invoke-virtual {v7}, Lokhttp3/ad;->close()V

    .line 127
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ad;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v0, v1

    .line 132
    :cond_2
    :goto_1
    return-object v0

    .line 122
    :cond_3
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    if-nez v0, :cond_4

    move-object v5, v3

    :goto_2
    if-nez v0, :cond_5

    move v2, v4

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    :try_start_4
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    goto :goto_0

    .line 122
    :cond_4
    :try_start_5
    invoke-virtual {v0}, Lokhttp3/ad;->d()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 129
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v0, v3

    .line 130
    :goto_4
    invoke-interface {v6}, Lretrofit2/b;->c()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    :catch_2
    move-exception v2

    move-object v0, v1

    goto :goto_4
.end method

.method public a(Ljava/util/Map;Lcom/unknownphone/callblocker/d/d$b;)Lretrofit2/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/unknownphone/callblocker/d/d$b;",
            ")",
            "Lretrofit2/b",
            "<",
            "Lokhttp3/ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/unknownphone/callblocker/d/d;->c:Lcom/unknownphone/callblocker/d/d$a;

    invoke-interface {v0, p1}, Lcom/unknownphone/callblocker/d/d$a;->a(Ljava/util/Map;)Lretrofit2/b;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/unknownphone/callblocker/d/d$1;

    invoke-direct {v1, p0, p2}, Lcom/unknownphone/callblocker/d/d$1;-><init>(Lcom/unknownphone/callblocker/d/d;Lcom/unknownphone/callblocker/d/d$b;)V

    invoke-interface {v0, v1}, Lretrofit2/b;->a(Lretrofit2/d;)V

    .line 107
    return-object v0
.end method
