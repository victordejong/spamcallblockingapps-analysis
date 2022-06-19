.class public Laz0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lne1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laz0;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Laz0;


# direct methods
.method public constructor <init>(Laz0;)V
    .locals 0

    iput-object p1, p0, Laz0$a;->a:Laz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laz0$a;->a:Laz0;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfv0;->j(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    iget-object v0, p0, Laz0$a;->a:Laz0;

    iget-object v0, v0, Laz0;->g:Lve;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lve;->l(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Laz0$a;->a:Laz0;

    invoke-static {v0}, Laz0;->m(Laz0;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lyy0;

    invoke-direct {v1, p0}, Lyy0;-><init>(Laz0$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laz0$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Laz0$a;->d()V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laz0$a;->a:Laz0;

    invoke-static {v0}, Laz0;->n(Laz0;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lxy0;

    invoke-direct {v1, p0, p1}, Lxy0;-><init>(Laz0$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
