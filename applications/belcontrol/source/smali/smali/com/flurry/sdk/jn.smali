.class public Lcom/flurry/sdk/jn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jn$c;,
        Lcom/flurry/sdk/jn$b;,
        Lcom/flurry/sdk/jn$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "jn"

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/jn$b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/flurry/sdk/a;

.field private static e:Landroid/content/ServiceConnection;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jn;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jn;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/a;)Lcom/flurry/sdk/a;
    .locals 0

    sput-object p0, Lcom/flurry/sdk/jn;->d:Lcom/flurry/sdk/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/flurry/sdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/jn$c;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/flurry/sdk/jn;->b(Lcom/flurry/sdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/jn$c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jn;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/jn$a;)V
    .locals 3

    new-instance v0, Lcom/flurry/sdk/jn$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/jn$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/jn$a;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, Lcom/flurry/sdk/jn;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v1, Lcom/flurry/sdk/jn;->e:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    new-instance p1, Lcom/flurry/sdk/jn$2;

    invoke-direct {p1}, Lcom/flurry/sdk/jn$2;-><init>()V

    sput-object p1, Lcom/flurry/sdk/jn;->e:Landroid/content/ServiceConnection;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    sget-object v1, Lcom/flurry/sdk/jn;->d:Lcom/flurry/sdk/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/flurry/sdk/jn;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/flurry/sdk/jn$b;->b(ILcom/flurry/sdk/a;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/flurry/sdk/jn;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, v2, p0}, Lcom/flurry/sdk/jn$b;->b(ILcom/flurry/sdk/a;)V

    sput-object p0, Lcom/flurry/sdk/jn;->e:Landroid/content/ServiceConnection;

    :cond_3
    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static b(Lcom/flurry/sdk/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/jn$c;
    .locals 3

    const-string v0, "DETAILS_LIST"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p3, "ITEM_ID_LIST"

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p3, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1, p2, v1}, Lcom/flurry/sdk/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/flurry/sdk/jn$c;

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Lcom/flurry/sdk/jn$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/flurry/sdk/jn;->a:Ljava/lang/String;

    const-string p2, "JSONException parsing SKU Details"

    :goto_0
    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/ku;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_1
    move-exception p0

    sget-object p1, Lcom/flurry/sdk/jn;->a:Ljava/lang/String;

    const-string p2, "RemoteException getting SKU Details"

    goto :goto_0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jn;->c:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic c()Lcom/flurry/sdk/a;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jn;->d:Lcom/flurry/sdk/a;

    return-object v0
.end method

.method public static synthetic d()Landroid/content/ServiceConnection;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jn;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method
