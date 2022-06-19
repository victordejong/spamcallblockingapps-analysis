.class Lcom/bytedance/sdk/openadsdk/j/a/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/j/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/j/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/j/a/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/j/a/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/j/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;

    if-eqz v0, :cond_0

    .line 133
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 134
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->e:[B

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/j/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$d;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/j/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/j/a/b$b;

    if-eqz v1, :cond_0

    .line 123
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/j/a/b$b;->a(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "[B>;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/j/a/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;

    if-eqz v0, :cond_0

    .line 143
    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->b:Lcom/bytedance/sdk/adnet/core/m;

    .line 144
    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/m;->c:Lcom/bytedance/sdk/adnet/err/VAdError;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/j/a/b$d;->d:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 145
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->c:Lcom/bytedance/sdk/openadsdk/j/a/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/j/a/b$4;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/j/a/b;->a(Lcom/bytedance/sdk/openadsdk/j/a/b;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/j/a/b$d;)V

    :cond_0
    return-void
.end method
