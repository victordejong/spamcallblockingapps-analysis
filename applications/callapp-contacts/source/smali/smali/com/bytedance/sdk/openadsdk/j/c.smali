.class public Lcom/bytedance/sdk/openadsdk/j/c;
.super Lcom/bytedance/sdk/openadsdk/j/b;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/bytedance/sdk/openadsdk/i/a/b;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/j/b;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz p1, :cond_0

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b()Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->a(I)Lcom/bytedance/sdk/openadsdk/i/a/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/b/d$c;Z)V
    .locals 0

    .line 67
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/b/d$c;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    const/16 p2, 0xca

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 72
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a/b;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/i/a;->e(Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc9

    .line 92
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->b(I)Lcom/bytedance/sdk/openadsdk/i/a/b;

    move-result-object p1

    .line 93
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a/b;->f(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    .line 94
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/i/a;->a()Lcom/bytedance/sdk/openadsdk/i/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/i/a;->e(Lcom/bytedance/sdk/openadsdk/i/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->e(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/j/c;->b:Lcom/bytedance/sdk/openadsdk/i/a/b;

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/i/a/b;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/i/a/b;

    :cond_1
    :goto_0
    return-void
.end method
