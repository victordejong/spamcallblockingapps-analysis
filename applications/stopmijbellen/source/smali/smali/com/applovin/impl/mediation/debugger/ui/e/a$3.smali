.class Lcom/applovin/impl/mediation/debugger/ui/e/a$3;
.super Lcom/applovin/impl/mediation/debugger/ui/b/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/e/a;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/debugger/a/b/b;

.field public final synthetic o:Lcom/applovin/impl/mediation/debugger/ui/e/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/e/a;Lcom/applovin/impl/mediation/debugger/a/b/b;Landroid/content/Context;Lcom/applovin/impl/mediation/debugger/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    iput-object p4, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lcom/applovin/impl/mediation/debugger/a/b/b;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lcom/applovin/impl/mediation/debugger/a/b/b;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->c(Lcom/applovin/impl/mediation/debugger/ui/e/a;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->c(Lcom/applovin/impl/mediation/debugger/ui/e/a;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lcom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_borderless:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->c(Lcom/applovin/impl/mediation/debugger/ui/e/a;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lcom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/debugger/ui/e/a;->c(Lcom/applovin/impl/mediation/debugger/ui/e/a;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->I()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lcom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xffff01

    return v0

    :cond_0
    invoke-super {p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;->g()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    const-string v0, "Please restart the app to show ads from the network: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lcom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/a/b/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
