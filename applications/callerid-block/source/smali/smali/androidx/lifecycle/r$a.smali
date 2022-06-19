.class Landroidx/lifecycle/r$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Landroidx/lifecycle/i;

.field final c:Landroidx/lifecycle/Lifecycle$Event;

.field private d:Z


# direct methods
.method constructor <init>(Landroidx/lifecycle/i;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/r$a;->d:Z

    iput-object p1, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/i;

    iput-object p2, p0, Landroidx/lifecycle/r$a;->c:Landroidx/lifecycle/Lifecycle$Event;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Landroidx/lifecycle/r$a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/r$a;->b:Landroidx/lifecycle/i;

    iget-object v1, p0, Landroidx/lifecycle/r$a;->c:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/r$a;->d:Z

    :cond_0
    return-void
.end method
