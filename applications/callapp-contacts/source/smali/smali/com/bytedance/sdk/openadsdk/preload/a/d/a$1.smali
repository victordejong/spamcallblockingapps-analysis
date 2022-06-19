.class final Lcom/bytedance/sdk/openadsdk/preload/a/d/a$1;
.super Lcom/bytedance/sdk/openadsdk/preload/a/b/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1588
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bytedance/sdk/openadsdk/preload/a/d/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1590
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;

    if-eqz v0, :cond_0

    .line 1591
    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/b/a/e;->o()V

    return-void

    .line 1594
    :cond_0
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    if-nez v0, :cond_1

    .line 1596
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->r()I

    move-result v0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    const/16 v0, 0x9

    .line 1599
    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return-void

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    const/16 v0, 0x8

    .line 1601
    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return-void

    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    const/16 v0, 0xa

    .line 1603
    iput v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->a:I

    return-void

    .line 1605
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->f()Lcom/bytedance/sdk/openadsdk/preload/a/d/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/a/d/a;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
