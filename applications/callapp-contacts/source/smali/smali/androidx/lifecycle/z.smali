.class public final Landroidx/lifecycle/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/z$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/LifecycleRegistry;

.field private final b:Landroid/os/Handler;

.field private c:Landroidx/lifecycle/z$a;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/p;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/p;)V

    iput-object v0, p0, Landroidx/lifecycle/z;->a:Landroidx/lifecycle/LifecycleRegistry;

    .line 41
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/z;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a(Landroidx/lifecycle/j$a;)V
    .locals 2

    .line 45
    iget-object v0, p0, Landroidx/lifecycle/z;->c:Landroidx/lifecycle/z$a;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroidx/lifecycle/z$a;->run()V

    .line 48
    :cond_0
    new-instance v0, Landroidx/lifecycle/z$a;

    iget-object v1, p0, Landroidx/lifecycle/z;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Landroidx/lifecycle/z$a;-><init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/j$a;)V

    iput-object v0, p0, Landroidx/lifecycle/z;->c:Landroidx/lifecycle/z$a;

    .line 49
    iget-object p1, p0, Landroidx/lifecycle/z;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
