.class public Ld2/k0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/k0;


# direct methods
.method public constructor <init>(Ld2/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/k0$e;->a:Ld2/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/k0$e;->a:Ld2/k0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "id"

    .line 3
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/q;

    if-eqz v3, :cond_4

    .line 5
    iget v4, v3, Ld2/q;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v4, v3, Ld2/q;->a:Landroid/support/v4/media/a;

    if-nez v4, :cond_2

    .line 7
    iget-object p1, p1, Ld2/t0;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1, v2}, Ld2/k0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v6, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v2}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 10
    invoke-static {}, Ld2/t;->e()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {v0, v3}, Ld2/k0;->c(Ld2/q;)V

    goto :goto_1

    .line 12
    :cond_3
    iput v5, v3, Ld2/q;->l:I

    const-string v2, "ad_id"

    .line 13
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iput-object v2, v3, Ld2/q;->h:Ljava/lang/String;

    const-string v2, "creative_id"

    .line 15
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "ad_request_id"

    .line 16
    invoke-virtual {v1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iput-object v1, v3, Ld2/q;->k:Ljava/lang/String;

    .line 18
    new-instance v1, Ld2/n0;

    invoke-direct {v1, v0, p1, v3, v4}, Ld2/n0;-><init>(Ld2/k0;Ld2/t0;Ld2/q;Landroid/support/v4/media/a;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method
