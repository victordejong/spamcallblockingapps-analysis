.class public Ld2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b;->l(Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/i3$b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/support/v4/media/a;

.field public final synthetic d:Ld2/g;

.field public final synthetic e:Ld2/i3$c;


# direct methods
.method public constructor <init>(Ld2/i3$b;Ljava/lang/String;Landroid/support/v4/media/a;Ld2/g;Ld2/i3$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b$a;->a:Ld2/i3$b;

    iput-object p2, p0, Ld2/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Ld2/b$a;->c:Landroid/support/v4/media/a;

    iput-object p4, p0, Ld2/b$a;->d:Ld2/g;

    iput-object p5, p0, Ld2/b$a;->e:Ld2/i3$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Ld2/f1;->B:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 3
    iget-boolean v1, v0, Ld2/f1;->C:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-static {}, Ld2/b;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ld2/t;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Ld2/b$a;->a:Ld2/i3$b;

    invoke-static {v0}, Ld2/i3;->i(Ld2/i3$b;)Z

    return-void

    .line 6
    :cond_1
    iget-object v1, v0, Ld2/f1;->u:Ljava/util/HashMap;

    .line 7
    iget-object v3, p0, Ld2/b$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/s;

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Ld2/s;

    iget-object v3, p0, Ld2/b$a;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ld2/s;-><init>(Ljava/lang/String;)V

    .line 9
    :cond_2
    iget v1, v1, Ld2/s;->c:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    .line 10
    iget-object v1, p0, Ld2/b$a;->a:Ld2/i3$b;

    invoke-static {v1}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 11
    iget-object v1, p0, Ld2/b$a;->a:Ld2/i3$b;

    invoke-interface {v1}, Ld2/i3$b;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    iget-object v7, p0, Ld2/b$a;->b:Ljava/lang/String;

    iget-object v1, p0, Ld2/b$a;->c:Landroid/support/v4/media/a;

    iget-object v4, p0, Ld2/b$a;->d:Ld2/g;

    iget-object v5, p0, Ld2/b$a;->e:Ld2/i3$c;

    invoke-virtual {v5}, Ld2/i3$c;->b()J

    move-result-wide v10

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Ld2/i3;->e()Ljava/lang/String;

    move-result-object v12

    .line 14
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v5

    .line 15
    new-instance v6, Ld2/q;

    invoke-direct {v6, v12, v1, v7}, Ld2/q;-><init>(Ljava/lang/String;Landroid/support/v4/media/a;Ljava/lang/String;)V

    .line 16
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    const-string v8, "zone_id"

    .line 17
    invoke-static {v1, v8, v7}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v8, "fullscreen"

    .line 18
    invoke-static {v1, v8, v3}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 19
    invoke-virtual {v5}, Ld2/f1;->m()Ld2/b2;

    move-result-object v5

    invoke-virtual {v5}, Ld2/b2;->g()Landroid/graphics/Rect;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    const-string v9, "width"

    invoke-static {v1, v9, v8}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 21
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const-string v8, "height"

    invoke-static {v1, v8, v5}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v5, "type"

    .line 22
    invoke-static {v1, v5, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v2, "id"

    .line 23
    invoke-static {v1, v2, v12}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v4, :cond_3

    .line 24
    iget-object v2, v4, Ld2/g;->c:Ld2/f4;

    if-eqz v2, :cond_3

    .line 25
    iput-object v4, v6, Ld2/q;->d:Ld2/g;

    const-string v4, "options"

    .line 26
    invoke-static {v1, v4, v2}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 27
    :cond_3
    iget-object v2, v0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v12, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v13, Ld2/q0;

    move-object v4, v13

    move-object v5, v0

    move-object v6, v12

    move-wide v8, v10

    invoke-direct/range {v4 .. v9}, Ld2/q0;-><init>(Ld2/k0;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v2, Ld2/t0;

    const-string v4, "AdSession.on_request"

    invoke-direct {v2, v4, v3, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v2}, Ld2/t0;->b()V

    .line 30
    iget-object v0, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0, v10, v11}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 31
    :cond_4
    iget-object v0, p0, Ld2/b$a;->a:Ld2/i3$b;

    invoke-static {v0}, Ld2/i3;->i(Ld2/i3$b;)Z

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string v0, "The AdColony API is not available while AdColony is disabled."

    .line 32
    invoke-static {v2, v2, v0, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 33
    iget-object v0, p0, Ld2/b$a;->a:Ld2/i3$b;

    invoke-static {v0}, Ld2/i3;->i(Ld2/i3$b;)Z

    return-void
.end method
