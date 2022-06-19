.class Landroidx/lifecycle/p$c$a;
.super Landroidx/lifecycle/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/p$c;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/p$c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/p$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/p$c$a;->this$1:Landroidx/lifecycle/p$c;

    invoke-direct {p0}, Landroidx/lifecycle/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/p$c$a;->this$1:Landroidx/lifecycle/p$c;

    iget-object p1, p1, Landroidx/lifecycle/p$c;->this$0:Landroidx/lifecycle/p;

    invoke-virtual {p1}, Landroidx/lifecycle/p;->e()V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Landroidx/lifecycle/p$c$a;->this$1:Landroidx/lifecycle/p$c;

    iget-object p1, p1, Landroidx/lifecycle/p$c;->this$0:Landroidx/lifecycle/p;

    invoke-virtual {p1}, Landroidx/lifecycle/p;->f()V

    return-void
.end method
