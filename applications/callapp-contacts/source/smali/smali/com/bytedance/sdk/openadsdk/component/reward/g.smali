.class public Lcom/bytedance/sdk/openadsdk/component/reward/g;
.super Lcom/bytedance/sdk/openadsdk/core/video/c/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/i;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/c/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/e/i;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(II)V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "play_error"

    goto :goto_0

    :cond_1
    const-string v0, "play_start_error"

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/e/i;IILcom/bytedance/sdk/openadsdk/core/video/d/d;)Ljava/util/Map;

    move-result-object p1

    .line 36
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, p2}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "play_type"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->h:Z

    if-eqz p2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->p()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "duration"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->r()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "percent"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->o()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "buffers_time"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const-string v2, "rewarded_video"

    invoke-static {p2, v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/d/e;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b()V
    .locals 8

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->C()Ljava/util/Map;

    move-result-object v7

    .line 48
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->c:J

    const-string v2, "rewarded_video"

    const-string v3, "feed_over"

    const/16 v6, 0x64

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    return-void
.end method

.method public c()V
    .locals 8

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->C()Ljava/util/Map;

    move-result-object v7

    .line 56
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->p()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->r()I

    move-result v6

    const-string v2, "rewarded_video"

    const-string v3, "play_pause"

    .line 57
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    return-void
.end method

.method public d()V
    .locals 8

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->C()Ljava/util/Map;

    move-result-object v7

    .line 64
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "play_type"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->i:J

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->r()I

    move-result v6

    const-string v2, "rewarded_video"

    const-string v3, "continue_play"

    .line 65
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/d/e;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;JILjava/util/Map;)V

    return-void
.end method

.method public e()V
    .locals 5

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->B()Ljava/util/Map;

    move-result-object v0

    .line 72
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const-string v3, "rewarded_video"

    const-string v4, "feed_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->B()Ljava/util/Map;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const-string v3, "rewarded_video"

    const-string v4, "play_start"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 87
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/g;->B()Ljava/util/Map;

    move-result-object v0

    .line 88
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->g:Z

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/c;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "play_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/g;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    const-string v3, "rewarded_video"

    const-string v4, "feed_play"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/d/e;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
