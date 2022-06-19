.class public Lx00$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx00;


# direct methods
.method public constructor <init>(Lx00;)V
    .locals 0

    iput-object p1, p0, Lx00$c;->a:Lx00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lx00$c;->a:Lx00;

    iget-object v1, v0, Lx00;->f:Lu00;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lx00;->h:Lt00;

    iget-object v3, v0, Lx00;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lu00;->r(Lt00;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lx00;->c:I

    iget-object v0, p0, Lx00$c;->a:Lx00;

    iget-object v1, v0, Lx00;->d:Lw00;

    iget-object v0, v0, Lx00;->e:Lw00$c;

    invoke-virtual {v1, v0}, Lw00;->a(Lw00$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
