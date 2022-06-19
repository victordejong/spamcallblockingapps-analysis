.class public Lu21;
.super Lfv0;
.source ""


# instance fields
.field public final g:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/util/List<",
            "Lkq0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lfv0;-><init>(Landroid/app/Application;)V

    new-instance p1, Lu21$a;

    invoke-direct {p1, p0}, Lu21$a;-><init>(Lu21;)V

    iput-object p1, p0, Lu21;->g:Lve;

    return-void
.end method


# virtual methods
.method public m()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lge;->g()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public n()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lge;->g()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public o()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lt21;->e()V

    invoke-static {}, Lt21;->values()[Lt21;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    sget-object v6, Lt21;->d:Lt21;

    if-ne v5, v6, :cond_0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Lt21;->g:Lt21;

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Lu21;->m()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6, v3}, Lt21;->a(Z)V

    :cond_1
    sget-object v6, Lt21;->h:Lt21;

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Lu21;->n()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6, v3}, Lt21;->a(Z)V

    :cond_2
    new-instance v6, Lkq0;

    invoke-direct {v6, v5}, Lkq0;-><init>(Lk01;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lu21;->g:Lve;

    invoke-virtual {v1, v0}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
