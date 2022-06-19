.class public Lp/a;
.super La/a$a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La/a$a;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method
