.class public Lcom/facebook/appevents/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.d.a"

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;

.field private static e:Landroid/content/ServiceConnection;

.field private static f:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static g:Landroid/content/Intent;

.field private static h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/d/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/facebook/appevents/d/a;->c:Ljava/lang/Boolean;

    .line 56
    sput-object v0, Lcom/facebook/appevents/d/a;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    sput-object p0, Lcom/facebook/appevents/d/a;->h:Ljava/lang/Object;

    return-object p0
.end method

.method public static a()V
    .locals 4

    .line 1073
    sget-object v0, Lcom/facebook/appevents/d/a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.android.vending.billing.IInAppBillingService$Stub"

    .line 1078
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1079
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/appevents/d/a;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "com.android.billingclient.api.ProxyBillingActivity"

    .line 1086
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1087
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/appevents/d/a;->d:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1089
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/appevents/d/a;->d:Ljava/lang/Boolean;

    .line 1092
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/d/b;->a()V

    .line 1094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 1096
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/d/a;->g:Landroid/content/Intent;

    .line 1098
    new-instance v0, Lcom/facebook/appevents/d/a$1;

    invoke-direct {v0}, Lcom/facebook/appevents/d/a$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/d/a;->e:Landroid/content/ServiceConnection;

    .line 1111
    new-instance v0, Lcom/facebook/appevents/d/a$2;

    invoke-direct {v0}, Lcom/facebook/appevents/d/a$2;-><init>()V

    sput-object v0, Lcom/facebook/appevents/d/a;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_1

    .line 1081
    :catch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/facebook/appevents/d/a;->c:Ljava/lang/Boolean;

    .line 64
    :cond_0
    :goto_1
    sget-object v0, Lcom/facebook/appevents/d/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/f/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    sget-object v0, Lcom/facebook/appevents/d/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1185
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 1186
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 1187
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    .line 1188
    sget-object v3, Lcom/facebook/appevents/d/a;->f:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1189
    sget-object v1, Lcom/facebook/appevents/d/a;->g:Landroid/content/Intent;

    sget-object v3, Lcom/facebook/appevents/d/a;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 5

    .line 1195
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1203
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "productId"

    .line 1204
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1205
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1209
    sget-object v3, Lcom/facebook/appevents/d/a;->a:Ljava/lang/String;

    const-string v4, "Error parsing in-app purchase data."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1213
    :cond_0
    sget-object p1, Lcom/facebook/appevents/d/a;->h:Ljava/lang/Object;

    .line 1214
    invoke-static {p0, v1, p1, p2}, Lcom/facebook/appevents/d/b;->a(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object p0

    .line 1216
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1218
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1217
    invoke-static {v1, p1, p2}, Lcom/facebook/appevents/f/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object v0, Lcom/facebook/appevents/d/a;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Boolean;
    .locals 1

    .line 44
    sget-object v0, Lcom/facebook/appevents/d/a;->d:Ljava/lang/Boolean;

    return-object v0
.end method
