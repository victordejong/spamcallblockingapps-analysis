.class public Lcom/applovin/impl/sdk/e/f;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/f$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/e/f$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/sdk/e/f$a;)V
    .locals 2

    const-string v0, "TaskCollectAdvertisingId"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;Z)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/f;->a:Lcom/applovin/impl/sdk/e/f$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/a;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->U()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->k()Lcom/applovin/impl/sdk/n$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/f;->a:Lcom/applovin/impl/sdk/e/f$a;

    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/e/f$a;->a(Lcom/applovin/impl/sdk/n$a;)V

    return-void
.end method
