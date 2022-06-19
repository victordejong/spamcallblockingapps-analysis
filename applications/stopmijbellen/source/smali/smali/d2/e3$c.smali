.class public Ld2/e3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/e3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/e3;


# direct methods
.method public constructor <init>(Ld2/e3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/e3$c;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/e3$c;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    .line 3
    sget-object v2, Ld2/t;->a:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 4
    invoke-static {}, Ld2/t;->f()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "ad_session_id"

    .line 5
    invoke-virtual {v1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ld2/f1;->l()Ld2/k0;

    move-result-object v5

    .line 8
    iget-object v5, v5, Ld2/k0;->f:Ljava/util/Map;

    .line 9
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ld2/j;

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v5}, Ld2/j;->getTrustedDemandSource()Z

    move-result v6

    if-nez v6, :cond_1

    .line 11
    iget-boolean v6, v5, Ld2/j;->n:Z

    if-eqz v6, :cond_3

    .line 12
    :cond_1
    iget-object v6, v4, Ld2/f1;->n:Ld2/j;

    if-ne v6, v5, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v5, p1}, Ld2/j;->setExpandMessage(Ld2/t0;)V

    const-string p1, "width"

    .line 14
    invoke-static {v1, p1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Ld2/j;->setExpandedWidth(I)V

    const-string p1, "height"

    .line 15
    invoke-static {v1, p1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Ld2/j;->setExpandedHeight(I)V

    const/4 p1, -0x1

    const-string v6, "orientation"

    .line 16
    invoke-static {v1, v6, p1}, Ld2/e4;->a(Ld2/f4;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v5, p1}, Ld2/j;->setOrientation(I)V

    const-string p1, "use_custom_close"

    .line 17
    invoke-static {v1, p1}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, p1}, Ld2/j;->setNoCloseButton(Z)V

    .line 18
    iput-object v5, v4, Ld2/f1;->n:Ld2/j;

    .line 19
    invoke-virtual {v5}, Ld2/j;->getContainer()Ld2/j0;

    move-result-object p1

    .line 20
    iput-object p1, v4, Ld2/f1;->l:Ld2/j0;

    .line 21
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {v0, v3}, Ld2/e3;->c(Ljava/lang/String;)Z

    .line 23
    invoke-virtual {v0, v3}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Ld2/i3;->g(Landroid/content/Intent;)Z

    :cond_3
    :goto_0
    return-void
.end method
