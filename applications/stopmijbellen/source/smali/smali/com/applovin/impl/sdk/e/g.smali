.class public Lcom/applovin/impl/sdk/e/g;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/network/i;

.field private final c:Lcom/applovin/sdk/AppLovinPostbackListener;

.field private final d:Lcom/applovin/impl/sdk/e/o$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/i;Lcom/applovin/impl/sdk/e/o$a;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1

    const-string v0, "TaskDispatchPostback"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    iput-object p4, p0, Lcom/applovin/impl/sdk/e/g;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/g;->d:Lcom/applovin/impl/sdk/e/o$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/sdk/AppLovinPostbackListener;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/g;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-object p0
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/e/g$2;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/a;->d()Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/e/g$2;-><init>(Lcom/applovin/impl/sdk/e/g;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/l;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->d:Lcom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/e/u;->a(Lcom/applovin/impl/sdk/e/o$a;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/a;->d()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/e/g;)Lcom/applovin/impl/sdk/network/i;
    .locals 0

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    return-object p0
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/e/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Requested URL is not valid; nothing to do..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/c;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x384

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/i;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/g;->a:Lcom/applovin/impl/sdk/network/i;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/a;->d()Lcom/applovin/impl/sdk/l;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/e/g$1;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/e/g$1;-><init>(Lcom/applovin/impl/sdk/e/g;)V

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/sdk/network/i;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/g;->a()V

    :goto_0
    return-void
.end method
