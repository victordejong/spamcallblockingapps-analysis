.class public abstract Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/verizonnativecontroller/NativeComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;
    }
.end annotation


# static fields
.field public static final AD_LEFT_APPLICATION_EVENT:Ljava/lang/String; = "adLeftApplication"

.field public static final IMPRESSION_EVENT:Ljava/lang/String; = "impression"

.field public static final MACROS_KEY:Ljava/lang/String; = "macros"

.field public static final PEX_AD_LEFT_APPLICATION_EVENT:Ljava/lang/String; = "PEX_adLeftApplication"

.field public static final TAP_EVENT:Ljava/lang/String; = "tap"

.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Lcom/verizon/ads/AdSession;

.field protected final d:Lorg/json/JSONObject;

.field private final e:Ljava/lang/String;

.field private f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

.field private final g:Ljava/lang/String;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/verizon/ads/RuleComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "\\$\\(([^)]*)\\)"

    .line 58
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lcom/verizon/ads/AdSession;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->c:Lcom/verizon/ads/AdSession;

    .line 118
    iput-object p2, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->g:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    return-void
.end method

.method private a()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;
    .locals 2

    move-object v0, p0

    .line 671
    :goto_0
    instance-of v1, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-eqz v1, :cond_0

    .line 672
    check-cast v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    return-object v0

    .line 6221
    :cond_0
    iget-object v0, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcom/verizon/ads/RuleComponent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 418
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 651
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->b()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 653
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "tap"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "PEX_adLeftApplication"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "adLeftApplication"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 662
    invoke-interface {v0, p1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 655
    :pswitch_0
    invoke-interface {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;->onClicked(Lcom/verizon/ads/Component;)V

    return-void

    .line 659
    :pswitch_1
    invoke-interface {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;->onAdLeftApplication(Lcom/verizon/ads/Component;)V

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4442ebda -> :sswitch_2
        -0x4122e816 -> :sswitch_1
        0x1bfa3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic a(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 4

    const/4 v0, 0x0

    .line 547
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 550
    :try_start_0
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, p2, v3}, Lcom/verizon/ads/support/utils/Macros;->replacePattern(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6716
    invoke-static {v1}, Lcom/verizon/ads/utils/HttpUtils;->getContentFromGetRequest(Ljava/lang/String;)Lcom/verizon/ads/utils/HttpUtils$Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 555
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Exception while retrieving tracker url."

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Lorg/json/JSONObject;Landroid/content/Context;Ljava/util/Map;)V
    .locals 5

    :try_start_0
    const-string v0, "type"

    .line 519
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pex"

    .line 521
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, "id"

    .line 522
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 523
    invoke-virtual {p0, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Ljava/lang/String;)Lcom/verizon/ads/PEXHandler;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 527
    :try_start_1
    new-instance v3, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$ClR9eXWaw7L_znbcAUqMkhYrkRM;

    invoke-direct {v3, p0, p3}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$ClR9eXWaw7L_znbcAUqMkhYrkRM;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Ljava/lang/String;)V

    const-string v4, "args"

    .line 529
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 527
    invoke-interface {v0, p2, v3, p1}, Lcom/verizon/ads/PEXHandler;->execute(Landroid/content/Context;Lcom/verizon/ads/PEXHandler$PEXHandlerListener;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 532
    :try_start_2
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "An error occurred executing pex with id = <%s>"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 535
    :cond_0
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string p2, "No loaded experience exists with id <%s>."

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "trackers"

    .line 538
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string p2, "urls"

    .line 539
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p3, :cond_2

    const-string p2, "macros"

    .line 543
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    .line 545
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_3

    .line 546
    new-instance p2, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$qufl-lZb-ryDbObAe1eiwngwTe8;

    invoke-direct {p2, p0, p1, v2}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$qufl-lZb-ryDbObAe1eiwngwTe8;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 6710
    invoke-static {p2}, Lcom/verizon/ads/utils/ThreadUtils;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void

    :cond_4
    const-string p3, "triggerEvent"

    .line 560
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const-string p3, "eventId"

    .line 561
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 564
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string p3, "An exception occurred processing event action json."

    invoke-virtual {p2, p3, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 340
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Error creating impression rule, json is null"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return v0

    :cond_0
    :try_start_0
    const-string v1, "data"

    .line 347
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "eventId"

    const-string v3, "impression"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->b(Landroid/view/View;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 349
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Error adding eventId to rule definition"

    invoke-virtual {p2, v1, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method protected static a(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 744
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private b()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;
    .locals 1

    .line 698
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 704
    :cond_0
    iget-object v0, v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;

    return-object v0
.end method

.method private b(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "type"

    .line 363
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    .line 371
    new-instance v5, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1, p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent$NativeComponentRuleListener;-><init>(Landroid/content/Context;Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;)V

    aput-object v5, v4, v1

    const/4 p1, 0x2

    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    move-result-object v5

    aput-object v5, v4, p1

    .line 371
    invoke-static {v2, v3, p2, v4}, Lcom/verizon/ads/ComponentRegistry;->getComponent(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;[Ljava/lang/Object;)Lcom/verizon/ads/Component;

    move-result-object p1

    .line 374
    instance-of p2, p1, Lcom/verizon/ads/RuleComponent;

    if-nez p2, :cond_0

    .line 375
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v2, p2, v0

    const-string v0, "Component instance is null or not an implementation of RuleComponent for type: %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    check-cast p1, Lcom/verizon/ads/RuleComponent;

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Lcom/verizon/ads/RuleComponent;)V

    return-void

    .line 365
    :catch_0
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array p2, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v0, "type is missing in rule definition for component: %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 528
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "PEX_"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 2

    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "tap"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$ClR9eXWaw7L_znbcAUqMkhYrkRM(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$phOFi95KyG8DtIKAqv3Xl__t_Wg(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$qufl-lZb-ryDbObAe1eiwngwTe8(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Lorg/json/JSONArray;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$tK64cjkvcj1vGxPkTcCkgJxmG5w(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Lorg/json/JSONObject;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Lorg/json/JSONObject;Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/verizon/ads/PEXHandler;
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 692
    :cond_0
    invoke-virtual {v0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a(Ljava/lang/String;)Lcom/verizon/ads/PEXHandler;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 458
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 459
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 460
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected final a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "events"

    goto :goto_1

    :cond_0
    const-string v1, "defaultEvents"

    .line 573
    :goto_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_2

    :cond_1
    move-object p2, v0

    :goto_2
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 579
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 584
    :cond_2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    :try_start_0
    const-string v2, "actions"

    .line 588
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 589
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_3

    return-object p2

    :catch_0
    move-exception p2

    .line 593
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    const-string v4, "No actions specified for event <%s>"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 5221
    iget-object p2, p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    .line 599
    invoke-virtual {p1, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentInfo(Z)Lorg/json/JSONObject;

    move-result-object p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method final a(Landroid/content/Context;Lcom/verizon/ads/RuleComponent;)V
    .locals 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    invoke-interface {p2}, Lcom/verizon/ads/RuleComponent;->getEventId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 397
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 398
    invoke-interface {p2}, Lcom/verizon/ads/RuleComponent;->getEventArgs()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 399
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "macros"

    .line 400
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 p2, 0x3

    .line 403
    invoke-static {p2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 404
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "Firing rule event \'%s\' with args %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 407
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 472
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 473
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object p2, v4, v2

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->getAdSession()Lcom/verizon/ads/AdSession;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "onEvent: %s - %s, %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    iget-object v4, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    const-string v6, "events"

    goto :goto_1

    :cond_1
    const-string v6, "defaultEvents"

    .line 2608
    :goto_1
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    if-eqz v4, :cond_3

    .line 2614
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_4

    .line 2619
    invoke-virtual {v4, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    .line 3221
    iget-object v4, v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    .line 2627
    invoke-virtual {v1, v3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentInfo(Z)Lorg/json/JSONObject;

    move-result-object v1

    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_0

    :cond_4
    :goto_3
    if-eqz v5, :cond_6

    const-string v1, "fireOnce"

    .line 477
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "fired"

    .line 478
    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    .line 484
    :cond_5
    :try_start_0
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 486
    sget-object v4, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v5, "An error occurred adding a property for event."

    invoke-virtual {v4, v5, v1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "impression"

    .line 492
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3635
    invoke-direct {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3640
    invoke-static {v0}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3641
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->getAdSession()Lcom/verizon/ads/AdSession;

    move-result-object v5

    invoke-virtual {v5}, Lcom/verizon/ads/AdSession;->toStringLongDescription()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Ad shown: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 3644
    :cond_7
    new-instance v0, Lcom/verizon/ads/support/ImpressionEvent;

    invoke-virtual {p0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->getAdSession()Lcom/verizon/ads/AdSession;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/verizon/ads/support/ImpressionEvent;-><init>(Lcom/verizon/ads/AdSession;)V

    const-string v4, "com.verizon.ads.impression"

    invoke-static {v4, v0}, Lcom/verizon/ads/events/Events;->sendEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3989
    iget-object v0, v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    if-eqz v0, :cond_8

    .line 3991
    :try_start_1
    iget-object v0, v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->b:Lcom/iab/omid/library/verizonmedia/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/verizonmedia/adsession/a;->a()V

    .line 3992
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Fired OMSDK impression event."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 3994
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->a:Lcom/verizon/ads/Logger;

    const-string v4, "Error occurred firing OMSDK Impression event."

    invoke-virtual {v1, v4, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 498
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_9

    goto :goto_8

    .line 503
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge v3, p2, :cond_a

    .line 505
    :try_start_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p2

    .line 507
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v2, "An error occurred performing an action for event."

    invoke-virtual {v1, v2, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    return-void

    .line 499
    :cond_b
    :goto_8
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p2, p3, v3

    const-string p2, "No actions defined for event: %s"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 516
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$tK64cjkvcj1vGxPkTcCkgJxmG5w;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$tK64cjkvcj1vGxPkTcCkgJxmG5w;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;Lorg/json/JSONObject;Landroid/content/Context;Ljava/util/Map;)V

    .line 4722
    invoke-static {v0}, Lcom/verizon/ads/utils/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    .line 229
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot register tap listeners for null view"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    const-string v2, "tap"

    invoke-virtual {p0, v0, v1, v2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$phOFi95KyG8DtIKAqv3Xl__t_Wg;

    invoke-direct {v0, p0}, Lcom/verizon/ads/verizonnativecontroller/-$$Lambda$VerizonNativeComponent$phOFi95KyG8DtIKAqv3Xl__t_Wg;-><init>(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 236
    :cond_2
    :goto_0
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "No tap actions defined"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    return-void
.end method

.method public applyStyle(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 172
    :try_start_0
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Cannot style a null View reference."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "backgroundColor"

    if-eqz p2, :cond_1

    .line 178
    :try_start_1
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 182
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->getStyleAttributeValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 185
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    return-void

    .line 188
    :goto_0
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Error applying styles."

    invoke-virtual {p2, v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final b(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 248
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot create rules for a null view"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 254
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot create rules with null componentInfo"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "rules"

    .line 260
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 261
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 266
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 267
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e:Ljava/lang/String;

    aput-object v1, v0, v4

    const-string v1, "Rules have already been created for component: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 273
    :cond_4
    invoke-static {v2}, Lcom/verizon/ads/Logger;->isLogLevelEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    sget-object v1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->e:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "Creating rules for component: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 277
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 278
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 285
    invoke-direct {p0, p1, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->b(Landroid/view/View;Lorg/json/JSONObject;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method protected final c(Landroid/view/View;)Z
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 308
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Cannot create impressionRule with null componentInfo"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v1, "impressionRule"

    .line 313
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 315
    invoke-direct {p0, p1, v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method protected final d(Landroid/view/View;)V
    .locals 6

    const-string v0, "com.verizon.ads.nativeplacement"

    .line 321
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    const-string v3, "rule/verizon-native-impression-v1"

    .line 323
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "percentage"

    const-string v4, "minImpressionViewabilityPercent"

    const/4 v5, -0x1

    .line 2293
    invoke-static {v0, v4, v5}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 325
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "continuous"

    const/4 v4, 0x1

    .line 326
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "duration"

    const-string v4, "minImpressionDuration"

    const/4 v5, 0x0

    .line 2301
    invoke-static {v0, v4, v5}, Lcom/verizon/ads/Configuration;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 327
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 328
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 330
    sget-object v2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Error creating impression rule json"

    invoke-virtual {v2, v3, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a(Landroid/view/View;Lorg/json/JSONObject;)Z

    return-void
.end method

.method public getAdSession()Lcom/verizon/ads/AdSession;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->c:Lcom/verizon/ads/AdSession;

    return-object v0
.end method

.method public getStyleAttributeValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    const-string v1, "style"

    .line 152
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 158
    :cond_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public overrideStyle(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 197
    :try_start_0
    sget-object p1, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Cannot style a null View reference."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "backgroundColor"

    .line 202
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 205
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 208
    sget-object p2, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Error overriding style."

    invoke-virtual {p2, v0, p1}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1441
    sget-object v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing rules"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/RuleComponent;

    .line 1444
    invoke-interface {v1}, Lcom/verizon/ads/RuleComponent;->release()V

    goto :goto_0

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponent;->f:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    return-void
.end method
