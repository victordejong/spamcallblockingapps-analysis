.class Lcom/applovin/impl/mediation/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/b/a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/a/f;

.field public final synthetic b:Lcom/applovin/impl/mediation/b/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/b/a;Lcom/applovin/impl/mediation/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/a$1;->b:Lcom/applovin/impl/mediation/b/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/b/a$1;->a:Lcom/applovin/impl/mediation/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a$1;->b:Lcom/applovin/impl/mediation/b/a;

    const-string v1, "Auto-initing adapter: "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a$1;->a:Lcom/applovin/impl/mediation/a/f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/b/a;->a(Lcom/applovin/impl/mediation/b/a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a$1;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/b/a;->b(Lcom/applovin/impl/mediation/b/a;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->C()Lcom/applovin/impl/mediation/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a$1;->a:Lcom/applovin/impl/mediation/a/f;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a$1;->b:Lcom/applovin/impl/mediation/b/a;

    invoke-static {v2}, Lcom/applovin/impl/mediation/b/a;->a(Lcom/applovin/impl/mediation/b/a;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/a/f;Landroid/app/Activity;)V

    return-void
.end method
