.class public Lcom/facebook/a/d/g;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;

.field private static e:Landroid/content/ServiceConnection;

.field private static f:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static g:Landroid/content/Intent;

.field private static h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    const-class v0, Lcom/facebook/a/d/g;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/g;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/d/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    sput-object v2, Lcom/facebook/a/d/g;->c:Ljava/lang/Boolean;

    .line 60
    sput-object v2, Lcom/facebook/a/d/g;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 47
    sput-object p0, Lcom/facebook/a/d/g;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/facebook/a/d/g;->d()V

    .line 68
    sget-object v0, Lcom/facebook/a/d/g;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-static {}, Lcom/facebook/a/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/facebook/a/d/g;->e()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/facebook/a/d/g;->b(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/a/d/g;->h:Ljava/lang/Object;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    return-void

    .line 191
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v5, "productId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v4, Lcom/facebook/a/d/g;->a:Ljava/lang/String;

    const-string/jumbo v5, "Error parsing in-app purchase data."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    :cond_2
    sget-object v0, Lcom/facebook/a/d/g;->h:Ljava/lang/Object;

    invoke-static {p0, v1, v0, p2}, Lcom/facebook/a/d/h;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v0

    .line 209
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    invoke-static {v1, v0, p2}, Lcom/facebook/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method static synthetic c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/a/d/g;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    sget-object v0, Lcom/facebook/a/d/g;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 82
    :cond_0
    :try_start_0
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/g;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    const-string/jumbo v0, "com.android.billingclient.api.ProxyBillingActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 91
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/g;->d:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    invoke-static {}, Lcom/facebook/a/d/h;->a()V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.vending"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/g;->g:Landroid/content/Intent;

    .line 101
    new-instance v0, Lcom/facebook/a/d/g$1;

    invoke-direct {v0}, Lcom/facebook/a/d/g$1;-><init>()V

    sput-object v0, Lcom/facebook/a/d/g;->e:Landroid/content/ServiceConnection;

    .line 115
    new-instance v0, Lcom/facebook/a/d/g$2;

    invoke-direct {v0}, Lcom/facebook/a/d/g$2;-><init>()V

    sput-object v0, Lcom/facebook/a/d/g;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/g;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    .line 93
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/g;->d:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private static e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 175
    sget-object v0, Lcom/facebook/a/d/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v1

    .line 179
    instance-of v0, v1, Landroid/app/Application;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 180
    check-cast v0, Landroid/app/Application;

    .line 181
    sget-object v2, Lcom/facebook/a/d/g;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 182
    sget-object v0, Lcom/facebook/a/d/g;->g:Landroid/content/Intent;

    sget-object v2, Lcom/facebook/a/d/g;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method
