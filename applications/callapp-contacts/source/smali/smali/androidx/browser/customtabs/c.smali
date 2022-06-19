.class public Landroidx/browser/customtabs/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/a/b;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/support/a/b;Landroid/content/ComponentName;Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/browser/customtabs/c;->a:Landroid/support/a/b;

    .line 59
    iput-object p2, p0, Landroidx/browser/customtabs/c;->b:Landroid/content/ComponentName;

    .line 60
    iput-object p3, p0, Landroidx/browser/customtabs/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a(Landroidx/browser/customtabs/b;)Landroidx/browser/customtabs/f;
    .locals 4

    .line 1325
    new-instance p1, Landroidx/browser/customtabs/c$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/browser/customtabs/c$2;-><init>(Landroidx/browser/customtabs/c;Landroidx/browser/customtabs/b;)V

    .line 300
    :try_start_0
    iget-object v1, p0, Landroidx/browser/customtabs/c;->a:Landroid/support/a/b;

    invoke-interface {v1, p1}, Landroid/support/a/b;->a(Landroid/support/a/a;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    .line 307
    :cond_0
    new-instance v1, Landroidx/browser/customtabs/f;

    iget-object v2, p0, Landroidx/browser/customtabs/c;->a:Landroid/support/a/b;

    iget-object v3, p0, Landroidx/browser/customtabs/c;->b:Landroid/content/ComponentName;

    invoke-direct {v1, v2, p1, v3, v0}, Landroidx/browser/customtabs/f;-><init>(Landroid/support/a/b;Landroid/support/a/a;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 190
    new-instance v1, Landroidx/browser/customtabs/c$1;

    invoke-direct {v1, p0}, Landroidx/browser/customtabs/c$1;-><init>(Landroid/content/Context;)V

    .line 205
    :try_start_0
    invoke-static {p0, p1, v1}, Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/e;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/e;)Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1041
    iput-object v0, p2, Landroidx/browser/customtabs/e;->b:Landroid/content/Context;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x21

    .line 80
    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 222
    :try_start_0
    iget-object v0, p0, Landroidx/browser/customtabs/c;->a:Landroid/support/a/b;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Landroid/support/a/b;->a(J)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Landroidx/browser/customtabs/f;
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Landroidx/browser/customtabs/c;->a(Landroidx/browser/customtabs/b;)Landroidx/browser/customtabs/f;

    move-result-object v0

    return-object v0
.end method
