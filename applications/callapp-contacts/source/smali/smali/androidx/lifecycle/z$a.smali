.class final Landroidx/lifecycle/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/j$a;

.field private final b:Landroidx/lifecycle/LifecycleRegistry;

.field private c:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/j$a;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Landroidx/lifecycle/z$a;->c:Z

    .line 99
    iput-object p1, p0, Landroidx/lifecycle/z$a;->b:Landroidx/lifecycle/LifecycleRegistry;

    .line 100
    iput-object p2, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/j$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 105
    iget-boolean v0, p0, Landroidx/lifecycle/z$a;->c:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/lifecycle/z$a;->b:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/j$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Landroidx/lifecycle/z$a;->c:Z

    :cond_0
    return-void
.end method
