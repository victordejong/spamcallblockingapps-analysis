.class Lcom/applovin/impl/sdk/network/e$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/network/e$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/network/e$c$a;)I
    .locals 0

    iget p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->a:I

    return p0
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/network/e$c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/network/e$c$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/applovin/impl/sdk/network/e$c$a;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e$c$a;->d:Ljava/lang/Throwable;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/applovin/impl/sdk/network/e$c$a;
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$c$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/network/e$c$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public a()Lcom/applovin/impl/sdk/network/e$c;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/network/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/network/e$c;-><init>(Lcom/applovin/impl/sdk/network/e$c$a;Lcom/applovin/impl/sdk/network/e$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/e$c$a;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e$c$a;->c:Ljava/lang/String;

    return-object p0
.end method
