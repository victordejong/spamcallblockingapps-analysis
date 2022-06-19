.class public Ld2/b$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b;->j(Ljava/lang/String;Ld2/k;Ld2/h;Ld2/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/i3$b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ld2/k;

.field public final synthetic d:Ld2/h;

.field public final synthetic e:Ld2/g;

.field public final synthetic f:Ld2/i3$c;


# direct methods
.method public constructor <init>(Ld2/i3$b;Ljava/lang/String;Ld2/k;Ld2/h;Ld2/g;Ld2/i3$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b$f;->a:Ld2/i3$b;

    iput-object p2, p0, Ld2/b$f;->b:Ljava/lang/String;

    iput-object p3, p0, Ld2/b$f;->c:Ld2/k;

    iput-object p4, p0, Ld2/b$f;->d:Ld2/h;

    iput-object p5, p0, Ld2/b$f;->e:Ld2/g;

    iput-object p6, p0, Ld2/b$f;->f:Ld2/i3$c;

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

    if-nez v1, :cond_0

    .line 3
    iget-boolean v1, v0, Ld2/f1;->C:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "The AdColony API is not available while AdColony is disabled."

    .line 4
    invoke-static {v1, v1, v2, v1}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Ld2/b$f;->a:Ld2/i3$b;

    invoke-static {v1}, Ld2/i3;->i(Ld2/i3$b;)Z

    .line 6
    :cond_1
    invoke-static {}, Ld2/b;->h()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Ld2/t;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Ld2/b$f;->a:Ld2/i3$b;

    invoke-static {v1}, Ld2/i3;->i(Ld2/i3$b;)Z

    .line 8
    :cond_2
    iget-object v1, p0, Ld2/b$f;->a:Ld2/i3$b;

    invoke-static {v1}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 9
    iget-object v1, p0, Ld2/b$f;->a:Ld2/i3$b;

    invoke-interface {v1}, Ld2/i3$b;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 10
    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    iget-object v5, p0, Ld2/b$f;->b:Ljava/lang/String;

    iget-object v1, p0, Ld2/b$f;->c:Ld2/k;

    iget-object v2, p0, Ld2/b$f;->d:Ld2/h;

    iget-object v3, p0, Ld2/b$f;->e:Ld2/g;

    iget-object v4, p0, Ld2/b$f;->f:Ld2/i3$c;

    invoke-virtual {v4}, Ld2/i3$c;->b()J

    move-result-wide v8

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ld2/i3;->e()Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/a;->c()F

    move-result v4

    .line 13
    new-instance v11, Ld2/f4;

    invoke-direct {v11}, Ld2/f4;-><init>()V

    const-string v6, "zone_id"

    .line 14
    invoke-static {v11, v6, v5}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v12, 0x1

    const-string v6, "type"

    .line 15
    invoke-static {v11, v6, v12}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 16
    iget v6, v2, Ld2/h;->a:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    const-string v7, "width_pixels"

    .line 17
    invoke-static {v11, v7, v6}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 18
    iget v6, v2, Ld2/h;->b:I

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v4, v6

    const-string v6, "height_pixels"

    .line 19
    invoke-static {v11, v6, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 20
    iget v4, v2, Ld2/h;->a:I

    const-string v6, "width"

    .line 21
    invoke-static {v11, v6, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 22
    iget v4, v2, Ld2/h;->b:I

    const-string v6, "height"

    .line 23
    invoke-static {v11, v6, v4}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    const-string v4, "id"

    .line 24
    invoke-static {v11, v4, v10}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v3, :cond_3

    .line 25
    iget-object v3, v3, Ld2/g;->c:Ld2/f4;

    if-eqz v3, :cond_3

    const-string v4, "options"

    .line 26
    invoke-static {v11, v4, v3}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 27
    :cond_3
    iput-object v5, v1, Ld2/k;->a:Ljava/lang/String;

    .line 28
    iput-object v2, v1, Ld2/k;->b:Ld2/h;

    .line 29
    iget-object v2, v0, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v10, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v13, Ld2/p0;

    move-object v2, v13

    move-object v3, v0

    move-object v4, v10

    move-wide v6, v8

    invoke-direct/range {v2 .. v7}, Ld2/p0;-><init>(Ld2/k0;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1, v10, v13}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Ld2/t0;

    const-string v2, "AdSession.on_request"

    invoke-direct {v1, v2, v12, v11}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    .line 32
    iget-object v0, v0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0, v8, v9}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
