.class final Landroidx/lifecycle/w$3$1;
.super Landroidx/lifecycle/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/w$3;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/lifecycle/w$3;


# direct methods
.method constructor <init>(Landroidx/lifecycle/w$3;)V
    .locals 0

    .line 174
    iput-object p1, p0, Landroidx/lifecycle/w$3$1;->this$1:Landroidx/lifecycle/w$3;

    invoke-direct {p0}, Landroidx/lifecycle/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 0

    .line 182
    iget-object p1, p0, Landroidx/lifecycle/w$3$1;->this$1:Landroidx/lifecycle/w$3;

    iget-object p1, p1, Landroidx/lifecycle/w$3;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->c()V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 0

    .line 177
    iget-object p1, p0, Landroidx/lifecycle/w$3$1;->this$1:Landroidx/lifecycle/w$3;

    iget-object p1, p1, Landroidx/lifecycle/w$3;->this$0:Landroidx/lifecycle/w;

    invoke-virtual {p1}, Landroidx/lifecycle/w;->b()V

    return-void
.end method
