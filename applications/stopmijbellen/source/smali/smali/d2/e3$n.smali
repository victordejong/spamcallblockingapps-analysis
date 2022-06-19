.class public Ld2/e3$n;
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
    iput-object p1, p0, Ld2/e3$n;->a:Ld2/e3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/e3$n;->a:Ld2/e3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 3
    iget-object v2, p1, Ld2/t0;->b:Ld2/f4;

    const-string v3, "ad_session_id"

    .line 4
    invoke-virtual {v2, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "deep_link"

    .line 5
    invoke-static {v2, v4}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Ld2/e3;->f(Ld2/t0;)Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object v4, Ld2/t;->a:Landroid/content/Context;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "handle"

    .line 9
    invoke-virtual {v2, v6}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 11
    invoke-static {v2}, Ld2/i3;->g(Landroid/content/Intent;)Z

    move-result v2

    const-string v4, "success"

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 12
    invoke-static {v1, v4, v2}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 13
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    .line 14
    invoke-virtual {v0, v3}, Ld2/e3;->d(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v3}, Ld2/e3;->b(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v3}, Ld2/e3;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v0, "Failed to launch external application."

    .line 17
    invoke-static {v0, v5}, Ld2/i3;->l(Ljava/lang/String;I)Z

    .line 18
    invoke-static {v1, v4, v5}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 19
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :goto_0
    return-void
.end method
