.class public final Lcom/bytedance/sdk/openadsdk/preload/a/o;
.super Lcom/bytedance/sdk/openadsdk/preload/a/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/preload/a/b/h<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/a/l;-><init>()V

    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/a/l;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    if-nez p2, :cond_0

    sget-object p2, Lcom/bytedance/sdk/openadsdk/preload/a/n;->a:Lcom/bytedance/sdk/openadsdk/preload/a/n;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 197
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/preload/a/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    .line 198
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/a/l;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/o;->a:Lcom/bytedance/sdk/openadsdk/preload/a/b/h;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/h;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
