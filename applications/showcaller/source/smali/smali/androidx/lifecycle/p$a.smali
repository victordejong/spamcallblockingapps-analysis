.class Landroidx/lifecycle/p$a;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Landroidx/lifecycle/p;


# direct methods
.method constructor <init>(Landroidx/lifecycle/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/p$a;->d:Landroidx/lifecycle/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p$a;->d:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->h()V

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/p$a;->d:Landroidx/lifecycle/p;

    invoke-virtual {v0}, Landroidx/lifecycle/p;->i()V

    return-void
.end method
