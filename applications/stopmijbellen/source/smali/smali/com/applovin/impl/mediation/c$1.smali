.class Lcom/applovin/impl/mediation/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/c;->a(Lcom/applovin/impl/mediation/a/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/a/c;

.field public final synthetic b:Lcom/applovin/impl/mediation/c;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/c;Lcom/applovin/impl/mediation/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/c$1;->b:Lcom/applovin/impl/mediation/c;

    iput-object p2, p0, Lcom/applovin/impl/mediation/c$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/c$1;->b:Lcom/applovin/impl/mediation/c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c;->a(Lcom/applovin/impl/mediation/c;)Lcom/applovin/impl/sdk/t;

    move-result-object v0

    const-string v1, "AdHiddenCallbackTimeoutManager"

    const-string v2, "Timing out..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/c$1;->b:Lcom/applovin/impl/mediation/c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/c;->b(Lcom/applovin/impl/mediation/c;)Lcom/applovin/impl/mediation/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/c$1;->a:Lcom/applovin/impl/mediation/a/c;

    invoke-interface {v0, v1}, Lcom/applovin/impl/mediation/c$a;->c(Lcom/applovin/impl/mediation/a/c;)V

    return-void
.end method
