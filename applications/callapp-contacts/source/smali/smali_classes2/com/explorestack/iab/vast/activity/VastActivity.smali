.class public Lcom/explorestack/iab/vast/activity/VastActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/activity/VastActivity$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/explorestack/iab/vast/VastActivityListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/explorestack/iab/vast/VastRequest;

.field private c:Lcom/explorestack/iab/vast/activity/VastView;

.field private d:Lcom/explorestack/iab/vast/VastActivityListener;

.field private e:Z

.field private f:Z

.field private final g:Lcom/explorestack/iab/vast/activity/VastView$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 236
    new-instance v0, Lcom/explorestack/iab/vast/activity/VastActivity$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastActivity$1;-><init>(Lcom/explorestack/iab/vast/activity/VastActivity;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->g:Lcom/explorestack/iab/vast/activity/VastView$d;

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;)Lcom/explorestack/iab/vast/VastActivityListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->d:Lcom/explorestack/iab/vast/VastActivityListener;

    return-object p0
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method private a(Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->d:Lcom/explorestack/iab/vast/VastActivityListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p0, p1, p2}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastError(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastActivityListener;)V
    .locals 2

    .line 2049
    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->getHash()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->d:Lcom/explorestack/iab/vast/VastActivityListener;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p0, p1, p2}, Lcom/explorestack/iab/vast/VastActivityListener;->onVastDismiss(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_0
    const/4 p2, 0x1

    .line 223
    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->f:Z

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 227
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getRequestedOrientation()I

    move-result p1

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->setRequestedOrientation(I)V

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->finish()V

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->overridePendingTransition(II)V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;I)V

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/vast/activity/VastActivity;Lcom/explorestack/iab/vast/VastRequest;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void
.end method

.method private static b(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static b(Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->getHash()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/activity/VastView;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView;->a()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 123
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0, v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->overridePendingTransition(II)V

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.explorestack.iab.vast.REQUEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/vast/VastRequest;

    iput-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_0

    const-string v1, "isFinishedPerformed"

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->finish()V

    return-void

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/16 p1, 0x195

    .line 134
    invoke-direct {p0, v2, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;I)V

    .line 135
    invoke-direct {p0, v2, v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->a(Lcom/explorestack/iab/vast/VastRequest;Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 139
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getPreferredVideoOrientation()I

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v3, :cond_2

    .line 142
    invoke-static {v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/activity/VastActivity;->setRequestedOrientation(I)V

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 144
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_2

    return-void

    :catch_0
    nop

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/VastRequest;

    .line 1037
    sget-object v3, Lcom/explorestack/iab/vast/activity/VastActivity;->a:Ljava/util/Map;

    .line 1038
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_4

    .line 1039
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 1043
    :cond_3
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/explorestack/iab/vast/VastActivityListener;

    goto :goto_1

    .line 1040
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :goto_1
    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->d:Lcom/explorestack/iab/vast/VastActivityListener;

    .line 158
    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/activity/VastView;

    const/4 v2, 0x1

    .line 159
    invoke-virtual {v1, v2}, Lcom/explorestack/iab/vast/activity/VastView;->setId(I)V

    .line 160
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->g:Lcom/explorestack/iab/vast/activity/VastView$d;

    invoke-virtual {v1, v3}, Lcom/explorestack/iab/vast/activity/VastView;->setListener(Lcom/explorestack/iab/vast/activity/VastView$d;)V

    if-eqz p1, :cond_5

    const-string v1, "isLoadPerformed"

    .line 163
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 164
    :cond_5
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->e:Z

    .line 165
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/VastRequest;

    .line 1229
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 171
    :cond_6
    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/app/Activity;)V

    .line 173
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastActivity;->setContentView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->c:Lcom/explorestack/iab/vast/activity/VastView;

    if-eqz v0, :cond_0

    .line 1872
    iget-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v1, :cond_0

    .line 1873
    iget-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v1, 0x0

    .line 1874
    iput-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/mraid/MraidInterstitial;

    .line 1875
    iput-object v1, v0, Lcom/explorestack/iab/vast/activity/VastView;->o:Lcom/explorestack/iab/vast/tags/f;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->b:Lcom/explorestack/iab/vast/VastRequest;

    invoke-static {v0}, Lcom/explorestack/iab/vast/activity/VastActivity;->b(Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 180
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->e:Z

    const-string v1, "isLoadPerformed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastActivity;->f:Z

    const-string v1, "isFinishedPerformed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
