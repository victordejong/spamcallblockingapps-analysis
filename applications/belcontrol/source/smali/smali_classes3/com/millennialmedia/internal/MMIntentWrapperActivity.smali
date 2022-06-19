.class public Lcom/millennialmedia/internal/MMIntentWrapperActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;,
        Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;
    }
.end annotation


# static fields
.field private static final INTENT_WRAPPER_STATE_KEY:Ljava/lang/String; = "intent_wrapper_state_id"

.field private static final ON_CREATE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String;

.field private static timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/internal/utils/TimedMemoryCache<",
            "Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;)V
    .locals 2

    if-nez p2, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    const-string p1, "Unable to launch MMIntentWrapperActivity, provided MMIntentWrapperListener instance is null"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;Landroid/content/Intent;Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;)V

    sget-object p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-virtual {p1, v0, v1}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Unable to launch MMIntentWrapperActivity, failed to cache activity state"

    invoke-interface {p2, p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/millennialmedia/internal/MMIntentWrapperActivity;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intent_wrapper_state_id"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$1;-><init>(Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;)V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadActivityState()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_wrapper_state_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-object v0, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    const/4 v0, 0x1

    return v0
.end method

.method private saveActivityState()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_wrapper_state_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v2, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    iget-object v3, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p1, p3}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onData(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity failed with result code <"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->loadActivityState()Z

    move-result v0

    const-string v1, ">"

    if-nez v0, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load activity state, aborting activity launch <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->wrappedIntent:Landroid/content/Intent;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->wrappedIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->activityState:Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMIntentWrapperActivity$ActivityState;->intentWrapperListener:Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start activity, aborting activity launch <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity$MMIntentWrapperListener;->onError(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->saveActivityState()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/MMIntentWrapperActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to save activity state <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
