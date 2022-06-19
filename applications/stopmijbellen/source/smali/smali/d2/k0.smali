.class public Ld2/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ld2/j0;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ld2/q;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ld2/k;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ld2/k;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ld2/j;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld2/k0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ld2/f4;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ld2/t0;

    const-string v1, "AdSession.finish_fullscreen_ad"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    const-string v1, "status"

    const/4 v3, 0x1

    .line 2
    invoke-static {p2, v1, v3}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 3
    iput-object p2, v0, Ld2/t0;->b:Ld2/f4;

    .line 4
    invoke-static {p3}, Landroidx/recyclerview/widget/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v2, v2, p2, v2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    .line 6
    check-cast p1, Ld2/w;

    invoke-virtual {p1, v0}, Ld2/w;->c(Ld2/t0;)V

    return-void
.end method

.method public final b(Ld2/k;)V
    .locals 1

    .line 1
    new-instance v0, Ld2/k0$l;

    invoke-direct {v0, p0, p1}, Ld2/k0$l;-><init>(Ld2/k0;Ld2/k;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ld2/q;)V
    .locals 2

    const/4 v0, 0x3

    .line 1
    iput v0, p1, Ld2/q;->l:I

    .line 2
    iget-object v0, p1, Ld2/q;->a:Landroid/support/v4/media/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ld2/p;

    invoke-direct {v1, p1, v0}, Ld2/p;-><init>(Ld2/q;Landroid/support/v4/media/a;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    invoke-static {}, Ld2/t;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RequestNotFilled called due to a missing context. "

    .line 5
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Interstitial with adSessionId("

    .line 6
    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object p1, p1, Ld2/q;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v1, p1, v0}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public d(Ld2/j0;)V
    .locals 2

    .line 1
    new-instance v0, Ld2/k0$m;

    invoke-direct {v0, p0, p1}, Ld2/k0$m;-><init>(Ld2/k0;Ld2/j0;)V

    invoke-static {v0}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Ld2/k0;->f:Ljava/util/Map;

    .line 3
    iget-object v1, p1, Ld2/j0;->l:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/j;

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, v0, Ld2/j;->l:Z

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Ld2/k0;->b:Ljava/util/HashMap;

    .line 7
    iget-object v1, p1, Ld2/j0;->l:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Ld2/j0;->y:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message \'"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' sent with invalid id: "

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-static {p2, p2, p1, p2}, Landroid/support/v4/media/b;->l(IILjava/lang/String;Z)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Ld2/k0;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Ld2/k0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    iget-object v4, p0, Ld2/k0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/k;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld2/k;

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/k;

    .line 11
    invoke-virtual {p0, v1}, Ld2/k0;->b(Ld2/k;)V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    iget-object v2, p0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/q;

    if-eqz v2, :cond_5

    .line 14
    iget v3, v2, Ld2/q;->l:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_5

    .line 15
    iget-object v3, p0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0, v2}, Ld2/k0;->c(Ld2/q;)V

    goto :goto_3

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld2/k0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ld2/k0;->b:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld2/k0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld2/k0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ld2/k0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ld2/k0;->f:Ljava/util/Map;

    .line 7
    new-instance v0, Ld2/k0$k;

    invoke-direct {v0, p0}, Ld2/k0$k;-><init>(Ld2/k0;)V

    const-string v1, "AdContainer.create"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 8
    new-instance v0, Ld2/k0$n;

    invoke-direct {v0, p0}, Ld2/k0$n;-><init>(Ld2/k0;)V

    const-string v1, "AdContainer.destroy"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 9
    new-instance v0, Ld2/k0$o;

    invoke-direct {v0, p0}, Ld2/k0$o;-><init>(Ld2/k0;)V

    const-string v1, "AdContainer.move_view_to_index"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 10
    new-instance v0, Ld2/k0$p;

    invoke-direct {v0, p0}, Ld2/k0$p;-><init>(Ld2/k0;)V

    const-string v1, "AdContainer.move_view_to_front"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 11
    new-instance v0, Ld2/k0$q;

    invoke-direct {v0, p0}, Ld2/k0$q;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.finish_fullscreen_ad"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 12
    new-instance v0, Ld2/k0$r;

    invoke-direct {v0, p0}, Ld2/k0$r;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.start_fullscreen_ad"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 13
    new-instance v0, Ld2/k0$s;

    invoke-direct {v0, p0}, Ld2/k0$s;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.ad_view_available"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 14
    new-instance v0, Ld2/k0$a;

    invoke-direct {v0, p0}, Ld2/k0$a;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.ad_view_unavailable"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 15
    new-instance v0, Ld2/k0$b;

    invoke-direct {v0, p0}, Ld2/k0$b;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.expiring"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 16
    new-instance v0, Ld2/k0$c;

    invoke-direct {v0, p0}, Ld2/k0$c;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.audio_stopped"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 17
    new-instance v0, Ld2/k0$d;

    invoke-direct {v0, p0}, Ld2/k0$d;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.audio_started"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 18
    new-instance v0, Ld2/k0$e;

    invoke-direct {v0, p0}, Ld2/k0$e;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.interstitial_available"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 19
    new-instance v0, Ld2/k0$f;

    invoke-direct {v0, p0}, Ld2/k0$f;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.interstitial_unavailable"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 20
    new-instance v0, Ld2/k0$g;

    invoke-direct {v0, p0}, Ld2/k0$g;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.has_audio"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 21
    new-instance v0, Ld2/k0$h;

    invoke-direct {v0, p0}, Ld2/k0$h;-><init>(Ld2/k0;)V

    const-string v1, "WebView.prepare"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 22
    new-instance v0, Ld2/k0$i;

    invoke-direct {v0, p0}, Ld2/k0$i;-><init>(Ld2/k0;)V

    const-string v1, "AdSession.expanded"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    .line 23
    new-instance v0, Ld2/k0$j;

    invoke-direct {v0, p0}, Ld2/k0$j;-><init>(Ld2/k0;)V

    const-string v1, "AdColony.odt_event"

    invoke-static {v1, v0}, Ld2/t;->c(Ljava/lang/String;Ld2/y0;)V

    return-void
.end method
