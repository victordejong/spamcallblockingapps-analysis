.class Lcom/bytedance/sdk/adnet/core/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bytedance/sdk/adnet/core/Request;

.field private final b:Lcom/bytedance/sdk/adnet/core/m;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;Ljava/lang/Runnable;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    .line 127
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 128
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getExtra()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/adnet/core/m;->g:Ljava/util/Map;

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v3}, Lcom/bytedance/sdk/adnet/core/Request;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/m;->a(J)Lcom/bytedance/sdk/adnet/core/m;

    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request;->getNetDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/adnet/core/m;->b(J)Lcom/bytedance/sdk/adnet/core/m;

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_0

    :catchall_0
    nop

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->deliverError(Lcom/bytedance/sdk/adnet/core/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->b:Lcom/bytedance/sdk/adnet/core/m;

    iget-boolean v0, v0, Lcom/bytedance/sdk/adnet/core/m;->d:Z

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->a:Lcom/bytedance/sdk/adnet/core/Request;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/lang/String;)V

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/g$a;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 175
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    return-void
.end method
