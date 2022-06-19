.class public abstract Lcom/bytedance/sdk/openadsdk/video/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/video/c/a$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/bytedance/sdk/openadsdk/video/c/a$a;

.field private b:Landroid/view/Surface;

.field private c:Landroid/view/SurfaceHolder;

.field private d:Z

.field private e:Z

.field private f:Lcom/bytedance/sdk/openadsdk/video/b/a;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->d:Z

    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->e:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/video/b/a;

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/video/c/a$a;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->g:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->b:Landroid/view/Surface;

    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->c:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/video/b/a;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->f:Lcom/bytedance/sdk/openadsdk/video/b/a;

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/video/c/a$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->a:Lcom/bytedance/sdk/openadsdk/video/c/a$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->d:Z

    return-void
.end method

.method public abstract b()V
.end method

.method public b(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/video/c/a;->e:Z

    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()J
.end method
