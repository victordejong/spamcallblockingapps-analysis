.class public Ld2/e3$l;
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
    iput-object p1, p0, Ld2/e3$l;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ld2/e3$l;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 3
    iget-object v2, p1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "url"

    .line 4
    invoke-virtual {v2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_session_id"

    .line 5
    invoke-virtual {v2, v4}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ld2/f1;->l()Ld2/k0;

    move-result-object v4

    .line 8
    iget-object v4, v4, Ld2/k0;->f:Ljava/util/Map;

    .line 9
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld2/j;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v4}, Ld2/j;->getTrustedDemandSource()Z

    move-result v6

    if-nez v6, :cond_0

    .line 11
    iget-boolean v4, v4, Ld2/j;->n:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "browser"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "http"

    if-eqz v6, :cond_1

    .line 13
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v4, "safari"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    :cond_2
    invoke-virtual {v0, v3}, Ld2/e3;->e(Ljava/lang/String;)V

    .line 17
    new-instance v4, Landroid/content/Intent;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 18
    invoke-static {v4}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "success"

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 19
    invoke-static {v1, v4, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 20
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 21
    invoke-virtual {v0, v2}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v2}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, v2}, Ld2/e3;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string v0, "Failed to launch browser."

    .line 24
    invoke-static {v0, v5}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 25
    invoke-static {v1, v4, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 26
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_0
    return-void
.end method
