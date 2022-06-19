.class public Lcom/millennialmedia/internal/MMActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/MMActivity$MMActivityListener;,
        Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;,
        Lcom/millennialmedia/internal/MMActivity$ActivityState;
    }
.end annotation


# static fields
.field private static final ACTIVITY_STATE_ID_KEY:Ljava/lang/String; = "activity_state_id"

.field private static final ON_CREATE_TIMEOUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String;

.field private static timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/internal/utils/TimedMemoryCache<",
            "Lcom/millennialmedia/internal/MMActivity$ActivityState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

.field private rootView:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/millennialmedia/internal/MMActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-direct {v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/MMActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic access$500(Lcom/millennialmedia/internal/MMActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->enableImmersiveMode()V

    return-void
.end method

.method private enableImmersiveMode()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabling immersive mode:\ndecorView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\nActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$MMActivityListener;)V
    .locals 4

    if-nez p2, :cond_0

    sget-object p0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    const-string p1, "Unable to launch MMActivity, provided MMActivityListener instance is null"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    const-string v0, "No MMActivity Configuration specified, creating default activity Configuration."

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-direct {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;-><init>()V

    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/millennialmedia/internal/MMActivity$ActivityState;-><init>(Lcom/millennialmedia/internal/MMActivity$MMActivityListener;Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;Lcom/millennialmedia/internal/MMActivity$1;)V

    sget-object v1, Lcom/millennialmedia/internal/MMActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    sget-object p0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    const-string p1, "Unable to launch MMActivity, failed to cache activity state"

    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onLaunchFailed()V

    return-void

    :cond_3
    new-instance p2, Landroid/content/Intent;

    const-class v2, Lcom/millennialmedia/internal/MMActivity;

    invoke-direct {p2, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "activity_state_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/Utils;->isActivityContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_8
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_2
    new-instance p0, Lcom/millennialmedia/internal/MMActivity$1;

    invoke-direct {p0, v0}, Lcom/millennialmedia/internal/MMActivity$1;-><init>(Lcom/millennialmedia/internal/MMActivity$ActivityState;)V

    invoke-static {p0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadActivityState()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity_state_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/internal/MMActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/internal/utils/TimedMemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    const/4 v0, 0x1

    return v0
.end method

.method private saveActivityState()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity_state_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget-object v2, Lcom/millennialmedia/internal/MMActivity;->timedMemoryCache:Lcom/millennialmedia/internal/utils/TimedMemoryCache;

    iget-object v3, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

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
.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$100(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$200(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->loadActivityState()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load activity state, aborting activity launch <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/millennialmedia/internal/MMActivity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->onCreateLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New activity created with orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getCurrentConfigOrientationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$300(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$300(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_5

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->enableImmersiveMode()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/millennialmedia/internal/MMActivity$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/internal/MMActivity$2;-><init>(Lcom/millennialmedia/internal/MMActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x400

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_6
    :goto_1
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    const-string v1, "mmactivity_root_view"

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$600(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v4, 0xa0

    :goto_2
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-eqz p1, :cond_8

    invoke-virtual {p1, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onCreate(Lcom/millennialmedia/internal/MMActivity;)V

    :cond_8
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$700(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v0

    if-eq p1, v0, :cond_a

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting requested orientation on activity:\n\tCurrent requested orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tDesired requested orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v1, v1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$700(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object p1, p1, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$700(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_a
    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->saveActivityState()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onDestroy(Lcom/millennialmedia/internal/MMActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onPause(Lcom/millennialmedia/internal/MMActivity;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->activityListener:Lcom/millennialmedia/internal/MMActivity$MMActivityListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/MMActivity$MMActivityListener;->onResume(Lcom/millennialmedia/internal/MMActivity;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/millennialmedia/internal/MMActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: hasFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityState.configuration.immersive = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v2, v2, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v2}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$400(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/internal/MMActivity;->enableImmersiveMode()V

    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/internal/MMActivity;->activityState:Lcom/millennialmedia/internal/MMActivity$ActivityState;

    iget-object v0, v0, Lcom/millennialmedia/internal/MMActivity$ActivityState;->configuration:Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;

    invoke-static {v0, p1}, Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;->access$702(Lcom/millennialmedia/internal/MMActivity$MMActivityConfig;I)I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method
