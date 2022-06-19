.class Landroidx/browser/customtabs/b$a;
.super Lc/b/a/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/b;->b(Landroidx/browser/customtabs/a;)Landroidx/browser/customtabs/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private b:Landroid/os/Handler;

.field final synthetic c:Landroidx/browser/customtabs/a;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/b;Landroidx/browser/customtabs/a;)V
    .locals 0

    iput-object p2, p0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    invoke-direct {p0}, Lc/b/a/a$a;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/browser/customtabs/b$a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public H5(ILandroid/net/Uri;ZLandroid/os/Bundle;)V
    .locals 8

    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->b:Landroid/os/Handler;

    new-instance v7, Landroidx/browser/customtabs/b$a$e;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/browser/customtabs/b$a$e;-><init>(Landroidx/browser/customtabs/b$a;ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public W4(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->b:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/b$a$d;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/b$a$d;-><init>(Landroidx/browser/customtabs/b$a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public l5(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->b:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/b$a$c;

    invoke-direct {v1, p0, p1}, Landroidx/browser/customtabs/b$a$c;-><init>(Landroidx/browser/customtabs/b$a;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public x3(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->b:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/b$a$a;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/b$a$a;-><init>(Landroidx/browser/customtabs/b$a;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public z2(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/browser/customtabs/b$a;->b:Landroid/os/Handler;

    new-instance v1, Landroidx/browser/customtabs/b$a$b;

    invoke-direct {v1, p0, p1, p2}, Landroidx/browser/customtabs/b$a$b;-><init>(Landroidx/browser/customtabs/b$a;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
