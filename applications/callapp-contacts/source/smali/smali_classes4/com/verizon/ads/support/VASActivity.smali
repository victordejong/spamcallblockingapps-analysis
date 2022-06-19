.class public abstract Lcom/verizon/ads/support/VASActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/support/VASActivity$VASActivityConfig;
    }
.end annotation


# static fields
.field private static final c:Lcom/verizon/ads/Logger;

.field private static d:Lcom/verizon/ads/support/TimedMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/verizon/ads/support/TimedMemoryCache<",
            "Lcom/verizon/ads/support/VASActivity$VASActivityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

.field protected b:Landroid/view/ViewGroup;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/verizon/ads/support/VASActivity;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    .line 34
    new-instance v0, Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-direct {v0}, Lcom/verizon/ads/support/TimedMemoryCache;-><init>()V

    sput-object v0, Lcom/verizon/ads/support/VASActivity;->d:Lcom/verizon/ads/support/TimedMemoryCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/verizon/ads/support/VASActivity;->e:Z

    return-void
.end method

.method private a()V
    .locals 4

    .line 252
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    .line 254
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabling immersive mode:\ndecorView = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\nActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v1, 0x1706

    .line 258
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/support/VASActivity;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity;->a()V

    return-void
.end method

.method public static launch(Landroid/content/Context;Ljava/lang/Class;Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/verizon/ads/support/VASActivity;",
            ">;",
            "Lcom/verizon/ads/support/VASActivity$VASActivityConfig;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    const/4 p2, 0x3

    .line 153
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 154
    sget-object p2, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    const-string v0, "No VASActivity Configuration specified, creating default activity Configuration."

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 156
    :cond_0
    new-instance p2, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-direct {p2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;-><init>()V

    .line 159
    :cond_1
    sget-object v0, Lcom/verizon/ads/support/VASActivity;->d:Lcom/verizon/ads/support/TimedMemoryCache;

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/verizon/ads/support/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 161
    sget-object p0, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    const-string p1, "Unable to launch VASActivity, failed to cache activity state"

    invoke-virtual {p0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 166
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "activity_config_id"

    .line 167
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-static {p0}, Lcom/verizon/ads/support/utils/ActivityUtils;->isActivityContext(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    const/high16 p1, 0x10000000

    .line 171
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    :cond_3
    invoke-static {p2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->a(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {p2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->b(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 177
    :cond_5
    :goto_0
    invoke-static {p2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->a(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result p1

    invoke-static {p2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->b(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 176
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v0, :cond_0

    .line 312
    invoke-static {v0}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->a(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result v0

    iget-object v1, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v1}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->b(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/verizon/ads/support/VASActivity;->overridePendingTransition(II)V

    .line 315
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1321
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "activity_config_id"

    .line 1322
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1324
    sget-object v0, Lcom/verizon/ads/support/VASActivity;->d:Lcom/verizon/ads/support/TimedMemoryCache;

    invoke-virtual {v0, p1}, Lcom/verizon/ads/support/TimedMemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1329
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_1

    .line 192
    sget-object p1, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load activity config, aborting activity launch <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->finish()V

    return-void

    .line 198
    :cond_1
    sget-object p1, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    const-string v2, "New activity created"

    invoke-virtual {p1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->c(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 201
    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->c(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/verizon/ads/support/VASActivity;->setVolumeControlStream(I)V

    .line 204
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity;->a()V

    .line 212
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/verizon/ads/support/VASActivity$1;

    invoke-direct {v2, p0}, Lcom/verizon/ads/support/VASActivity$1;-><init>(Lcom/verizon/ads/support/VASActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_1

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    invoke-virtual {p0, v1}, Lcom/verizon/ads/support/VASActivity;->requestWindowFeature(I)Z

    .line 226
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 234
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/verizon/ads/support/VASActivity;->e:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getRequestedOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->e(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result v2

    if-eq v1, v2, :cond_6

    const/4 v1, 0x3

    .line 235
    invoke-static {v1}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting requested orientation on activity:\n\tCurrent requested orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\tDesired requested orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    .line 238
    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->e(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p1, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 242
    :cond_5
    iget-object p1, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {p1}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->e(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/verizon/ads/support/utils/ViewUtils;->setRequestedOrientationSafe(Landroid/app/Activity;I)V

    .line 245
    :cond_6
    iput-boolean v0, p0, Lcom/verizon/ads/support/VASActivity;->e:Z

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 277
    iget-object v0, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1337
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity_config_id"

    .line 1338
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1340
    sget-object v2, Lcom/verizon/ads/support/VASActivity;->d:Lcom/verizon/ads/support/TimedMemoryCache;

    iget-object v3, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/verizon/ads/support/TimedMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1345
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    .line 279
    sget-object v0, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to save activity state <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 283
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const/4 v0, 0x3

    .line 292
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    sget-object v0, Lcom/verizon/ads/support/VASActivity;->c:Lcom/verizon/ads/Logger;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onWindowFocusChanged: hasFocus = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activityConfig.immersive = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v2}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 300
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    if-eqz v0, :cond_1

    .line 301
    invoke-static {v0}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->d(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 303
    invoke-direct {p0}, Lcom/verizon/ads/support/VASActivity;->a()V

    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/verizon/ads/support/VASActivity;->getRequestedOrientation()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/verizon/ads/support/VASActivity;->a:Lcom/verizon/ads/support/VASActivity$VASActivityConfig;

    invoke-static {v0, p1}, Lcom/verizon/ads/support/VASActivity$VASActivityConfig;->a(Lcom/verizon/ads/support/VASActivity$VASActivityConfig;I)I

    .line 269
    invoke-static {p0, p1}, Lcom/verizon/ads/support/utils/ViewUtils;->setRequestedOrientationSafe(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
