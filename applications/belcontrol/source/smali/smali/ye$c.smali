.class public Lye$c;
.super Lie;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lye;


# direct methods
.method public constructor <init>(Lye;)V
    .locals 0

    iput-object p1, p0, Lye$c;->this$0:Lye;

    invoke-direct {p0}, Lie;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p2, v0, :cond_0

    invoke-static {p1}, Lze;->f(Landroid/app/Activity;)Lze;

    move-result-object p1

    iget-object p2, p0, Lye$c;->this$0:Lye;

    iget-object p2, p2, Lye;->j:Lze$a;

    invoke-virtual {p1, p2}, Lze;->h(Lze$a;)V

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lye$c;->this$0:Lye;

    invoke-virtual {p1}, Lye;->a()V

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    new-instance p2, Lye$c$a;

    invoke-direct {p2, p0}, Lye$c$a;-><init>(Lye$c;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lye$c;->this$0:Lye;

    invoke-virtual {p1}, Lye;->d()V

    return-void
.end method
