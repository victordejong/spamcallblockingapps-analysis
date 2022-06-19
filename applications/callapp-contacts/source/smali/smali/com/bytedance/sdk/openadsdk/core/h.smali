.class public Lcom/bytedance/sdk/openadsdk/core/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/bytedance/sdk/openadsdk/core/e/i;

.field private c:Lcom/a/a/a/a/a/c;

.field private d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

.field private e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Landroid/view/View;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rewarded_video"

    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/h;->b:Lcom/bytedance/sdk/openadsdk/core/e/i;

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->a:Landroid/content/Context;

    .line 30
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Landroid/view/View;

    .line 31
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->S()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/af;->c(Ljava/lang/String;)I

    move-result p3

    .line 32
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/af;->b(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/e/i;->D()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 35
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/a/a/a/a/a/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;)Lcom/a/a/a/a/a/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Lcom/a/a/a/a/a/c;

    .line 38
    :cond_0
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Landroid/view/View;

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;)V

    .line 40
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Lcom/a/a/a/a/a/c;

    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/a/a/a/a/a/c;)V

    .line 42
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/af;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/i;Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Landroid/view/View;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/h;->c:Lcom/a/a/a/a/a/c;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/a/a/a/a/a/c;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/bytedance/sdk/openadsdk/core/e/g;)V
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget v3, p2, Lcom/bytedance/sdk/openadsdk/core/e/g;->a:I

    .line 52
    iget v4, p2, Lcom/bytedance/sdk/openadsdk/core/e/g;->b:I

    .line 53
    iget v5, p2, Lcom/bytedance/sdk/openadsdk/core/e/g;->c:I

    .line 54
    iget v6, p2, Lcom/bytedance/sdk/openadsdk/core/e/g;->d:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Lcom/bytedance/sdk/openadsdk/core/e/g;)V

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->e:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Landroid/view/View;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d;->a(Landroid/view/View;IIII)V

    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Lcom/bytedance/sdk/openadsdk/core/e/g;)V

    .line 59
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/h;->f:Landroid/view/View;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/e;->a(Landroid/view/View;IIII)V

    :cond_3
    :goto_0
    return-void
.end method
