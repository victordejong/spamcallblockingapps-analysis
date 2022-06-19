.class public Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Lm91$b;


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService;

.field public static b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/16 v0, 0x7d6

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f6

    :goto_0
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {p0}, Lm91;->e(Lm91$b;)V

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lm91$c;->n:Lm91$c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-static {p0, v0, v2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    invoke-static {}, Lp71;->c()Ln71;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.kedlin.cca.extra.LLPPC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/kedlin/cca/core/call/Call;

    invoke-interface {v0, v2}, Ln71;->e(Lcom/kedlin/cca/core/call/Call;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->a:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    sget-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;

    invoke-direct {v1, p0}, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity$a;-><init>(Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;)V

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lcom/flexaspect/android/everycallcontrol/ui/activities/LLPPActivity;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
