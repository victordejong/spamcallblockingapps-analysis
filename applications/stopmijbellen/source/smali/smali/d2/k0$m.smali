.class public Ld2/k0$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/k0;->d(Ld2/j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/j0;


# direct methods
.method public constructor <init>(Ld2/k0;Ld2/j0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld2/k0$m;->a:Ld2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 2
    iget-object v1, v1, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 5
    iget-object v1, v1, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 7
    iget-object v2, v2, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/y0;

    .line 9
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->q()Ld2/u0;

    move-result-object v3

    .line 10
    iget-object v4, v3, Ld2/u0;->d:Ljava/util/HashMap;

    monitor-enter v4

    .line 11
    :try_start_0
    iget-object v3, v3, Ld2/u0;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    monitor-exit v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 14
    :cond_1
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 15
    iget-object v0, v0, Ld2/j0;->t:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 18
    iget-object v0, v0, Ld2/j0;->s:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 21
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    const/4 v1, 0x0

    iput-object v1, v0, Ld2/j0;->z:Landroid/widget/VideoView;

    .line 22
    iput-object v1, v0, Ld2/j0;->y:Landroid/content/Context;

    .line 23
    iget-object v0, v0, Ld2/j0;->c:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/x3;

    .line 25
    iget-boolean v3, v1, Ld2/x3;->A:Z

    if-nez v3, :cond_2

    .line 26
    iget v3, v1, Ld2/x3;->v:I

    if-lez v3, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    iget v3, v1, Ld2/x3;->u:I

    :goto_2
    const-string v4, "about:blank"

    .line 28
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 30
    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 31
    iput-boolean v2, v1, Ld2/x3;->C:Z

    .line 32
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1, v3}, Ld2/f1;->h(I)Z

    goto :goto_1

    .line 33
    :cond_4
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 34
    iget-object v0, v0, Ld2/j0;->a:Ljava/util/HashMap;

    .line 35
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/r3;

    .line 36
    invoke-virtual {v1}, Ld2/r3;->e()V

    .line 37
    iput-boolean v2, v1, Ld2/r3;->t:Z

    goto :goto_3

    .line 38
    :cond_5
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 39
    iget-object v0, v0, Ld2/j0;->a:Ljava/util/HashMap;

    .line 40
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 41
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 42
    iget-object v0, v0, Ld2/j0;->b:Ljava/util/HashMap;

    .line 43
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 44
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 45
    iget-object v0, v0, Ld2/j0;->c:Ljava/util/HashMap;

    .line 46
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 47
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 48
    iget-object v0, v0, Ld2/j0;->e:Ljava/util/HashMap;

    .line 49
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 50
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 51
    iget-object v0, v0, Ld2/j0;->g:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 54
    iget-object v0, v0, Ld2/j0;->d:Ljava/util/HashMap;

    .line 55
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    .line 57
    iget-object v0, v0, Ld2/j0;->f:Ljava/util/HashMap;

    .line 58
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    iget-object v0, p0, Ld2/k0$m;->a:Ld2/j0;

    iput-boolean v2, v0, Ld2/j0;->m:Z

    return-void
.end method
