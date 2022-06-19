.class Landroidx/lifecycle/q$a;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final d:Landroidx/lifecycle/i;

.field final e:Landroidx/lifecycle/Lifecycle$Event;

.field private f:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/q$a;->f:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/q$a;->d:Landroidx/lifecycle/i;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/q$a;->e:Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/q$a;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/q$a;->d:Landroidx/lifecycle/i;

    iget-object v1, p0, Landroidx/lifecycle/q$a;->e:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->h(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/q$a;->f:Z

    :cond_0
    return-void
.end method
