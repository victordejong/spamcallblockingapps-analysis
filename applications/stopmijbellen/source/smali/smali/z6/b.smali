.class public final Lz6/b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/media/AudioManager;

.field public final c:Lj4/g0;

.field public final d:Lz6/a;

.field public e:F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lj4/g0;Lz6/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lz6/b;->a:Landroid/content/Context;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lz6/b;->b:Landroid/media/AudioManager;

    iput-object p3, p0, Lz6/b;->c:Lj4/g0;

    iput-object p4, p0, Lz6/b;->d:Lz6/a;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    iget-object v0, p0, Lz6/b;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lz6/b;->b:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v2, p0, Lz6/b;->c:Lj4/g0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez v1, :cond_1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lz6/b;->d:Lz6/a;

    iget v1, p0, Lz6/b;->e:F

    check-cast v0, Lc7/e;

    .line 1
    iput v1, v0, Lc7/e;->a:F

    .line 2
    iget-object v2, v0, Lc7/e;->e:Lc7/a;

    if-nez v2, :cond_0

    .line 3
    sget-object v2, Lc7/a;->c:Lc7/a;

    .line 4
    iput-object v2, v0, Lc7/e;->e:Lc7/a;

    :cond_0
    iget-object v0, v0, Lc7/e;->e:Lc7/a;

    .line 5
    invoke-virtual {v0}, Lc7/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La7/i;

    .line 6
    iget-object v2, v2, La7/i;->e:Lg7/a;

    .line 7
    invoke-virtual {v2, v1}, Lg7/a;->b(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lz6/b;->a()F

    move-result p1

    .line 1
    iget v0, p0, Lz6/b;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iput p1, p0, Lz6/b;->e:F

    invoke-virtual {p0}, Lz6/b;->b()V

    :cond_1
    return-void
.end method
