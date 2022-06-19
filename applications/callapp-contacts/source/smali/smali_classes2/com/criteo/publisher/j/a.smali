.class public Lcom/criteo/publisher/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/m/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/m/b;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/criteo/publisher/j/a;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/criteo/publisher/j/a;->b:Lcom/criteo/publisher/m/b;

    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/criteo/publisher/j/a;->a:Landroid/content/Context;

    const-class v2, Lcom/criteo/publisher/CriteoInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/criteo/publisher/l/d;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/criteo/publisher/j/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1096
    :cond_0
    new-instance v0, Lcom/criteo/publisher/m0/i;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p2}, Lcom/criteo/publisher/m0/i;-><init>(Landroid/os/Handler;Lcom/criteo/publisher/l/d;)V

    .line 78
    iget-object p2, p0, Lcom/criteo/publisher/j/a;->b:Lcom/criteo/publisher/m/b;

    invoke-virtual {p2}, Lcom/criteo/publisher/m/b;->a()Landroid/content/ComponentName;

    move-result-object p2

    .line 80
    invoke-direct {p0}, Lcom/criteo/publisher/j/a;->b()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "webviewdata"

    .line 82
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "resultreceiver"

    .line 83
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "callingactivity"

    .line 84
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    iget-object p1, p0, Lcom/criteo/publisher/j/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a()Z
    .locals 5

    .line 54
    invoke-direct {p0}, Lcom/criteo/publisher/j/a;->b()Landroid/content/Intent;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/criteo/publisher/j/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 56
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/j/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/criteo/publisher/j/a;->a:Landroid/content/Context;

    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity_criteo_interstitial"

    const-string v4, "layout"

    .line 61
    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
