.class Lcom/applovin/impl/sdk/network/e$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/e$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:[B

.field private e:I

.field private f:Ll0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll0/a<",
            "Lcom/applovin/impl/sdk/network/e$c;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->c:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic d(Lcom/applovin/impl/sdk/network/e$b$a;)[B
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->d:[B

    return-object p0
.end method

.method public static synthetic e(Lcom/applovin/impl/sdk/network/e$b$a;)I
    .locals 0

    iget p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->e:I

    return p0
.end method

.method public static synthetic f(Lcom/applovin/impl/sdk/network/e$b$a;)Ll0/a;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->f:Ll0/a;

    return-object p0
.end method

.method public static synthetic g(Lcom/applovin/impl/sdk/network/e$b$a;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->e:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e$b$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/e$b$a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->c:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/util/concurrent/Executor;)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->g:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public a(Ll0/a;)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll0/a<",
            "Lcom/applovin/impl/sdk/network/e$c;",
            ">;)",
            "Lcom/applovin/impl/sdk/network/e$b$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->f:Ll0/a;

    return-object p0
.end method

.method public a([B)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->d:[B

    return-object p0
.end method

.method public a()Lcom/applovin/impl/sdk/network/e$b;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/network/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/network/e$b;-><init>(Lcom/applovin/impl/sdk/network/e$b$a;Lcom/applovin/impl/sdk/network/e$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$b$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$b$a;->b:Ljava/lang/String;

    return-object p0
.end method
