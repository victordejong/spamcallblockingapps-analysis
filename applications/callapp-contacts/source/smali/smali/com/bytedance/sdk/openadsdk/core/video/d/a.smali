.class public abstract Lcom/bytedance/sdk/openadsdk/core/video/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

.field private b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

.field private c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

.field private d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

.field private e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

.field private f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

.field private g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

    .line 65
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

    .line 66
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

    .line 68
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

    .line 70
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;

    return-void
.end method

.method protected final a(I)V
    .locals 2

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnBufferingUpdate error: "

    .line 96
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final a(IIII)V
    .locals 6

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 114
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string p3, "AbstractMediaPlayer.notifyOnVideoSizeChanged error: "

    .line 117
    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->c:Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

    return-void
.end method

.method public final a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->e:Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;

    return-void
.end method

.method protected final a(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->f:Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnError error: "

    .line 125
    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected final b()V
    .locals 3

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnPrepared error: "

    .line 78
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final b(II)Z
    .locals 2

    const/4 v0, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->g:Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;->b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnInfo error: "

    .line 134
    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected final c()V
    .locals 3

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->b:Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnCompletion error: "

    .line 87
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final d()V
    .locals 3

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/a;->d:Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;->c(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnSeekComplete error: "

    .line 105
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
