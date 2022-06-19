.class public abstract Lcom/callapp/contacts/activity/base/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;
    }
.end annotation


# static fields
.field public static isCallAppVisible:Z


# instance fields
.field private activityLifecycleListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private firedEventRelatedToFocus:Z

.field private foreGroundVisible:Z

.field private hasWindowFocus:Z

.field private lastEventFired:Landroidx/lifecycle/j$a;

.field private lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

.field private lifecycleWrapperLock:Ljava/lang/Object;

.field private final pendingEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroidx/lifecycle/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private permissionManager:Lcom/callapp/contacts/manager/permission/PermissionManager;

.field private sameWindowFocusReceived:Z

.field private uiHandler:Landroid/os/Handler;

.field private uiThread:Ljava/lang/Thread;

.field private userPressedHomeButton:Z

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->permissionManager:Lcom/callapp/contacts/manager/permission/PermissionManager;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->pendingEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->hasWindowFocus:Z

    .line 73
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->sameWindowFocusReceived:Z

    .line 74
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->firedEventRelatedToFocus:Z

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/base/BaseActivity;)Landroidx/lifecycle/j$a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lastEventFired:Landroidx/lifecycle/j$a;

    return-object p0
.end method

.method static synthetic access$002(Lcom/callapp/contacts/activity/base/BaseActivity;Landroidx/lifecycle/j$a;)Landroidx/lifecycle/j$a;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lastEventFired:Landroidx/lifecycle/j$a;

    return-object p1
.end method

.method static synthetic access$100(Lcom/callapp/contacts/activity/base/BaseActivity;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->pendingEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/activity/base/BaseActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->firedEventRelatedToFocus:Z

    return p0
.end method

.method static synthetic access$202(Lcom/callapp/contacts/activity/base/BaseActivity;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->firedEventRelatedToFocus:Z

    return p1
.end method

.method static synthetic access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->hasWindowFocus:Z

    return p0
.end method

.method static synthetic access$400(Lcom/callapp/contacts/activity/base/BaseActivity;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->sameWindowFocusReceived:Z

    return p0
.end method

.method public static activityPaused()V
    .locals 1

    const/4 v0, 0x0

    .line 694
    sput-boolean v0, Lcom/callapp/contacts/activity/base/BaseActivity;->isCallAppVisible:Z

    return-void
.end method

.method public static activityResumed()V
    .locals 1

    const/4 v0, 0x1

    .line 690
    sput-boolean v0, Lcom/callapp/contacts/activity/base/BaseActivity;->isCallAppVisible:Z

    return-void
.end method

.method private safePostOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/activity/base/BaseActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity$1;-><init>(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static safeRun(Ljava/lang/Runnable;)V
    .locals 2

    .line 496
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 498
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    const-string v1, "UIThread Exception"

    invoke-static {v0, p0, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private setSimpleContent()V
    .locals 2

    .line 448
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getLayoutResourceId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setContentView(I)V

    .line 451
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->isColoringTheStatusBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getStatusBarColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/Window;I)V

    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getViewBinder()Landroidx/m/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getViewBinder()Landroidx/m/a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/m/a;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public allowLifecycleChangesDuringCalls()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 391
    invoke-static {p1}, Lcom/callapp/contacts/util/LocaleUtils;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 392
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/a;->b(Landroid/content/Context;)Z

    return-void
.end method

.method protected getBackgroundColor()I
    .locals 1

    const v0, 0x7f060026

    .line 646
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected abstract getLayoutResourceId()I
.end method

.method public getLifecycle()Landroidx/lifecycle/j;
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapperLock:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapperLock:Ljava/lang/Object;

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->allowLifecycleChangesDuringCalls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    return-object v0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    if-nez v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    if-nez v1, :cond_2

    .line 343
    new-instance v1, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v1, p0, v2}, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;-><init>(Lcom/callapp/contacts/activity/base/BaseActivity;Landroidx/lifecycle/LifecycleRegistry;)V

    iput-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    .line 345
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 347
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    return-object v0
.end method

.method public getPermissionManager()Lcom/callapp/contacts/manager/permission/PermissionManager;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->permissionManager:Lcom/callapp/contacts/manager/permission/PermissionManager;

    return-object v0
.end method

.method protected getStatusBarColor()I
    .locals 1

    const v0, 0x7f060088

    .line 651
    invoke-static {p0, v0}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "keyguard"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->getSystemServiceDirect(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSystemServiceDirect(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getThemeResId()I
    .locals 1

    .line 509
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->getThemeStyleResource()I

    move-result v0

    return v0
.end method

.method public getViewBinder()Landroidx/m/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleIncognitoMode()V
    .locals 2

    .line 584
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->di:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/header/ThemeState;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeState;->isLightTheme()Z

    move-result v0

    .line 585
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 586
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->setIsLight(Z)V

    :cond_0
    return-void
.end method

.method public isActivityVisible()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->visible:Z

    return v0
.end method

.method public isBackPressedHandled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClickValid(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected isColoringTheStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isForeGroundVisible()Z
    .locals 1

    .line 609
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->foreGroundVisible:Z

    return v0
.end method

.method public isUserPressedHomeButton()Z
    .locals 1

    .line 513
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->userPressedHomeButton:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 614
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 616
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 617
    new-instance p1, Ljava/util/HashSet;

    iget-object p2, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 618
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v0, 0x0

    .line 664
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setForeGroundVisible(Z)V

    .line 665
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->isBackPressedHandled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 666
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 669
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 671
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->finish()V

    return-void

    .line 673
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void

    .line 676
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getThemeResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setTheme(I)V

    .line 398
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->shouldAssertPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    invoke-static {p0}, Lcom/callapp/contacts/activity/CorePermissionsNotGrantedActivity;->a(Landroid/content/Context;)V

    .line 401
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->uiThread:Ljava/lang/Thread;

    .line 405
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->uiHandler:Landroid/os/Handler;

    .line 407
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 409
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 413
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/util/ThemeUtils;->isThemeLight()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f060026

    .line 414
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    const v0, 0x7f0804c7

    .line 421
    invoke-static {v0}, Lcom/callapp/contacts/util/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 424
    :cond_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setSimpleContent()V

    .line 426
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {p1, v0, p0}, Lcom/callapp/contacts/event/bus/EventBus;->a(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 469
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->uiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 470
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    .line 1245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1250
    iget-object v2, v0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    monitor-enter v2

    .line 1251
    :try_start_0
    iget-object v3, v0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1252
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v3}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 1253
    iget-object v4, v0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 1255
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/c;

    .line 1256
    invoke-virtual {v0, v4}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroidx/fragment/app/c;)V

    goto :goto_0

    .line 1258
    :cond_0
    iget-object v0, v0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v1, Lcom/callapp/contacts/activity/interfaces/ThemeChangedListener;->i:Lcom/callapp/contacts/event/bus/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/callapp/contacts/event/bus/EventBus;->b(Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 474
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void

    :catchall_0
    move-exception v0

    .line 1260
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onHomeButtonSelected()V
    .locals 0

    .line 659
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 632
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 638
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->onHomeButtonSelected()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 537
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->foreGroundVisible:Z

    if-eqz v0, :cond_1

    .line 538
    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setForeGroundVisible(Z)V

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseActivity$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseActivity$2;-><init>(Lcom/callapp/contacts/activity/base/BaseActivity;)V

    const/16 v1, 0x1f4

    .line 552
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseActivity$2;->schedule(I)Lcom/callapp/contacts/manager/task/Task;

    .line 556
    :cond_1
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/activity/base/BaseActivity;->activityPaused()V

    .line 557
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPopupResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .line 443
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 444
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->permissionManager:Lcom/callapp/contacts/manager/permission/PermissionManager;

    const/16 v1, 0x3039

    if-ne v1, p1, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 p1, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1129
    :goto_0
    array-length v3, p2

    if-ge p1, v3, :cond_2

    .line 1130
    aget-object v3, p2, p1

    .line 1131
    aget v4, p3, p1

    if-eqz v4, :cond_1

    .line 1133
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1140
    :cond_2
    invoke-static {v2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1141
    iget-object p1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 1142
    iget-object p1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->c:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1146
    :cond_3
    iget-object p1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 1147
    iget-object p1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->b:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1148
    :cond_4
    iget-object p1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;

    if-eqz p1, :cond_5

    .line 1149
    iget-object p1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;

    invoke-interface {p1, p2, p3}, Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;->onCorePermissionsGranted([Ljava/lang/String;[I)V

    .line 1153
    :cond_5
    :goto_1
    iput-object v1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->b:Ljava/lang/Runnable;

    .line 1154
    iput-object v1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->c:Ljava/lang/Runnable;

    .line 1155
    iput-object v1, v0, Lcom/callapp/contacts/manager/permission/PermissionManager;->a:Lcom/callapp/contacts/manager/permission/PermissionManager$OnCorePermissionGrantedCallback;

    :cond_6
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 562
    invoke-static {}, Lcom/callapp/contacts/activity/base/BaseActivity;->activityResumed()V

    .line 563
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const/4 v0, 0x1

    .line 565
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->setForeGroundVisible(Z)V

    const/4 v0, 0x0

    .line 566
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->userPressedHomeButton:Z

    .line 568
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 570
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;

    .line 571
    invoke-interface {v1, p0}, Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 575
    :cond_0
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseActivity$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseActivity$3;-><init>(Lcom/callapp/contacts/activity/base/BaseActivity;)V

    .line 580
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseActivity$3;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "mObserverMap"

    .line 143
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->allowLifecycleChangesDuringCalls()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "mLifecycleRegistry"

    .line 145
    invoke-static {p0, v1}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleRegistry;

    .line 146
    invoke-static {v1, v0}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/a/a/b/a;

    .line 148
    const-class v3, Landroidx/a/a/b/a;

    invoke-static {v3}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    invoke-static {v1, v0, v2}, Lcom/callapp/contacts/util/ReflectionUtils;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 155
    :goto_0
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-void

    .line 158
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 592
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->visible:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 599
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->visible:Z

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .line 699
    new-instance v0, Lcom/callapp/contacts/activity/base/BaseActivity$4;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/base/BaseActivity$4;-><init>(Lcom/callapp/contacts/activity/base/BaseActivity;)V

    invoke-direct {p0, v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->safePostOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 626
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onUserLeaveHint()V

    const/4 v0, 0x1

    .line 627
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->userPressedHomeButton:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 352
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onWindowFocusChanged hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    if-eqz v1, :cond_4

    .line 355
    iget-boolean v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->hasWindowFocus:Z

    if-eq v1, p1, :cond_3

    .line 356
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->hasWindowFocus:Z

    const/4 v1, 0x0

    .line 357
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->firedEventRelatedToFocus:Z

    .line 358
    iput-boolean v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->sameWindowFocusReceived:Z

    .line 359
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->pendingEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    :goto_0
    if-eqz v1, :cond_4

    .line 361
    sget-object v2, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    if-eq v1, v2, :cond_2

    sget-object v2, Landroidx/lifecycle/j$a;->ON_START:Landroidx/lifecycle/j$a;

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->hasWindowFocus:Z

    if-nez v2, :cond_2

    :cond_0
    sget-object v2, Landroidx/lifecycle/j$a;->ON_PAUSE:Landroidx/lifecycle/j$a;

    if-eq v1, v2, :cond_2

    sget-object v2, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    if-ne v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->hasWindowFocus:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 366
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Dropping event from queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_2

    .line 363
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onWindowFocusChanged sending to handleLifecycleEvent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->lifecycleWrapper:Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a(Landroidx/lifecycle/j$a;)V

    .line 368
    :goto_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->pendingEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/j$a;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 371
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->sameWindowFocusReceived:Z

    .line 381
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->pendingEvents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 386
    :cond_4
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public registerActivityLifecycleListener(Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 524
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 0

    .line 107
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 109
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 0

    .line 114
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 116
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 0

    .line 121
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6

    .line 128
    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 130
    invoke-super/range {v0 .. v5}, Landroidx/appcompat/app/AppCompatActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public safeRunOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 478
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 479
    invoke-static {p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->safeRun(Ljava/lang/Runnable;)V

    return-void

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->safePostOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setForeGroundVisible(Z)V
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->foreGroundVisible:Z

    return-void
.end method

.method public setKeyguardDismissAndScreenWindowFlags()V
    .locals 0

    .line 430
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->setKeyguardDismissAndScreenWindowFlags(Landroid/app/Activity;)V

    return-void
.end method

.method protected setStatusBarColor(I)V
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(ILandroid/view/Window;)V

    return-void
.end method

.method protected shouldAssertPermissions()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showActionBar(Z)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/BaseActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->e()V

    return-void

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->f()V

    :cond_1
    return-void
.end method

.method public unregisterActivityLifecycleListener(Lcom/callapp/contacts/activity/base/ActivityLifecycleListener;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity;->activityLifecycleListeners:Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 135
    invoke-static {p1}, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    .line 137
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
