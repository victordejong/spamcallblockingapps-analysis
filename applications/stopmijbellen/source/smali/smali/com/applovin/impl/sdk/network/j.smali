.class public Lcom/applovin/impl/sdk/network/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/j$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Bundle;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/network/j$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->a(Lcom/applovin/impl/sdk/network/j$a;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/j;->a:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/j$a;->b(Lcom/applovin/impl/sdk/network/j$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/network/j$a;Lcom/applovin/impl/sdk/network/j$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/j;-><init>(Lcom/applovin/impl/sdk/network/j$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "RequestParameters{extraParameters="

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/j;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
