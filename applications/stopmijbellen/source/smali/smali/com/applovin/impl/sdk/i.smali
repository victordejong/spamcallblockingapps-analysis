.class public Lcom/applovin/impl/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/i$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/applovin/impl/sdk/i$a;

.field private static final b:Lcom/applovin/impl/sdk/i$a;

.field private static final c:Lcom/applovin/impl/sdk/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/i$a;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->l:Lcom/applovin/impl/sdk/c/d;

    const-string v2, "Age Restricted User"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/sdk/i$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lcom/applovin/impl/sdk/i;->a:Lcom/applovin/impl/sdk/i$a;

    new-instance v0, Lcom/applovin/impl/sdk/i$a;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->k:Lcom/applovin/impl/sdk/c/d;

    const-string v2, "Has User Consent"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/sdk/i$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/i$a;

    new-instance v0, Lcom/applovin/impl/sdk/i$a;

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->m:Lcom/applovin/impl/sdk/c/d;

    const-string v2, "\"Do Not Sell\""

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/sdk/i$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/i$a;

    return-void
.end method

.method public static a()Lcom/applovin/impl/sdk/i$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->a:Lcom/applovin/impl/sdk/i$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/applovin/impl/sdk/i;->a:Lcom/applovin/impl/sdk/i$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/i$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/i$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/i$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/sdk/i$a;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/applovin/impl/sdk/i$a;->a(Lcom/applovin/impl/sdk/i$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/i$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/d<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update compliance value for key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLovinSdk"

    invoke-static {p1, p0}, Lcom/applovin/impl/sdk/t;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lcom/applovin/impl/sdk/c/e;->b(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/c/e;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;Landroid/content/Context;)V

    const/4 p0, 0x1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public static a(ZLandroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->l:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/applovin/impl/sdk/i$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->b:Lcom/applovin/impl/sdk/i$a;

    return-object v0
.end method

.method public static b(ZLandroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->k:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/applovin/impl/sdk/i$a;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/i$a;

    return-object v0
.end method

.method public static c(ZLandroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/c/d;->m:Lcom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
