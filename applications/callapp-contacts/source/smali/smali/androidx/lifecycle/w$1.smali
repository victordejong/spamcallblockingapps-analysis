.class final Landroidx/lifecycle/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/w;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w;)V
    .locals 0

    .line 67
    iput-object p1, p0, Landroidx/lifecycle/w$1;->a:Landroidx/lifecycle/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 70
    iget-object v0, p0, Landroidx/lifecycle/w$1;->a:Landroidx/lifecycle/w;

    .line 1142
    iget v1, v0, Landroidx/lifecycle/w;->b:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1143
    iput-boolean v1, v0, Landroidx/lifecycle/w;->c:Z

    .line 1144
    iget-object v0, v0, Landroidx/lifecycle/w;->e:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    .line 71
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/w$1;->a:Landroidx/lifecycle/w;

    invoke-virtual {v0}, Landroidx/lifecycle/w;->d()V

    return-void
.end method
