.class final Lcom/mopub/nativeads/MoPubCustomEventNative$a;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/MoPubCustomEventNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lcom/mopub/nativeads/ImpressionTracker;

.field private final f:Lcom/mopub/nativeads/NativeClickHandler;

.field private g:Lcom/mopub/common/ExternalViewabilitySessionManager;

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mopub/nativeads/ImpressionTracker;Lcom/mopub/nativeads/NativeClickHandler;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/lang/String;)V
    .locals 2

    .line 224
    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    iput-object p2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lorg/json/JSONObject;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b:Landroid/content/Context;

    .line 227
    iput-object p3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/ImpressionTracker;

    .line 228
    iput-object p4, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->f:Lcom/mopub/nativeads/NativeClickHandler;

    .line 229
    iput-object p5, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 230
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->h:Ljava/util/Set;

    .line 232
    iput-object p6, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubCustomEventNative$a;)Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->c:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/nativeads/MoPubCustomEventNative$a;Ljava/util/Set;)V
    .locals 0

    .line 3341
    iget-object p0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->h:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2353
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 360
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lorg/json/JSONObject;

    .line 1279
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1280
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1281
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1285
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->requiredKeys:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 241
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    invoke-static {v1}, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->from(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 247
    :try_start_0
    iget-object v3, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 1291
    :try_start_1
    sget-object v7, Lcom/mopub/nativeads/MoPubCustomEventNative$1;->a:[I

    invoke-virtual {v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 1326
    :pswitch_0
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setSponsored(Ljava/lang/String;)V

    goto :goto_2

    .line 1323
    :pswitch_1
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1320
    :pswitch_2
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setPrivacyInformationIconImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1317
    :pswitch_3
    invoke-static {v3}, Lcom/mopub/common/util/Numbers;->parseDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setStarRating(Ljava/lang/Double;)V

    goto :goto_1

    .line 1314
    :pswitch_4
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1311
    :pswitch_5
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1308
    :pswitch_6
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setCallToAction(Ljava/lang/String;)V

    goto :goto_1

    .line 1345
    :pswitch_7
    instance-of v7, v3, Lorg/json/JSONArray;

    if-eqz v7, :cond_1

    .line 1346
    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->addClickTrackers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1348
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->addClickTracker(Ljava/lang/String;)V

    goto :goto_1

    .line 1302
    :pswitch_8
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setClickDestinationUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1299
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->addImpressionTrackers(Ljava/lang/Object;)V

    goto :goto_1

    .line 1296
    :pswitch_a
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setIconImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1293
    :pswitch_b
    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setMainImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 1328
    :goto_2
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unable to add JSON key to internal mapping: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v7}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    .line 1332
    :try_start_2
    iget-boolean v7, v2, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->required:Z

    if-nez v7, :cond_2

    .line 1333
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v6, v6, [Ljava/lang/Object;

    sget-object v7, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v7, v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Ignoring class cast exception for optional key: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/mopub/nativeads/MoPubCustomEventNative$a$a;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    invoke-static {v3, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1335
    :cond_2
    throw v3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    .line 249
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSONObject key ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") contained unexpected value."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_3
    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->d:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 255
    :cond_4
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getPrivacyInformationIconClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "https://www.mopub.com/optout"

    .line 256
    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->setPrivacyInformationIconClickThroughUrl(Ljava/lang/String;)V

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b:Landroid/content/Context;

    .line 1370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1371
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1372
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_6
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1375
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_7
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1378
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getPrivacyInformationIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_8
    invoke-direct {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    new-instance v2, Lcom/mopub/nativeads/MoPubCustomEventNative$a$1;

    invoke-direct {v2, p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a$1;-><init>(Lcom/mopub/nativeads/MoPubCustomEventNative$a;)V

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/NativeImageHelper;->preCacheImages(Landroid/content/Context;Ljava/util/List;Lcom/mopub/nativeads/NativeImageHelper$ImageListener;)V

    return-void

    .line 237
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "JSONObject did not contain required keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clear(Landroid/view/View;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ImpressionTracker;->removeView(Landroid/view/View;)V

    .line 401
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->f:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/NativeClickHandler;->clearOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0}, Lcom/mopub/nativeads/ImpressionTracker;->destroy()V

    .line 407
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz v0, :cond_0

    .line 408
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerTrackedView(Landroid/view/View;)V

    .line 409
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->endSession()V

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 412
    :cond_0
    invoke-super {p0}, Lcom/mopub/nativeads/StaticNativeAd;->destroy()V

    return-void
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 5

    .line 430
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/nativeads/MoPubCustomEventNative;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->notifyAdClicked()V

    .line 432
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->f:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/mopub/nativeads/NativeClickHandler;->openClickDestinationUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 434
    sget-object p1, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    if-eqz p1, :cond_0

    .line 435
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 436
    sget-object p1, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->i:Ljava/lang/String;

    sget-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v2, "mopub"

    invoke-interface {p1, v2, v0, v1}, Lcom/mopub/common/MoPub$AnalyticsEventsListener;->onAdClicked(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public final prepare(Landroid/view/View;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->e:Lcom/mopub/nativeads/ImpressionTracker;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/ImpressionTracker;->addView(Landroid/view/View;Lcom/mopub/nativeads/ImpressionInterface;)V

    .line 388
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->f:Lcom/mopub/nativeads/NativeClickHandler;

    invoke-virtual {v0, p1, p0}, Lcom/mopub/nativeads/NativeClickHandler;->setOnClickListener(Landroid/view/View;Lcom/mopub/nativeads/ClickInterface;)V

    .line 389
    iget-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Lcom/mopub/common/ExternalViewabilitySessionManager;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    .line 391
    iget-object v1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->h:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->createNativeSession(Landroid/view/View;Ljava/util/Set;)V

    .line 392
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->startSession()V

    return-void

    .line 394
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerTrackedView(Landroid/view/View;)V

    return-void
.end method

.method public final recordImpression(Landroid/view/View;)V
    .locals 6

    .line 418
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->notifyAdImpressed()V

    .line 419
    iget-object p1, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->g:Lcom/mopub/common/ExternalViewabilitySessionManager;

    if-eqz p1, :cond_0

    .line 420
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySessionManager;->trackImpression()V

    .line 423
    :cond_0
    sget-object p1, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    if-eqz p1, :cond_1

    .line 424
    sget-object v0, Lcom/mopub/common/MoPub;->analyticsEventsListener:Lcom/mopub/common/MoPub$AnalyticsEventsListener;

    iget-object v2, p0, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubCustomEventNative$a;->getPublisherRevenue()D

    move-result-wide v3

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->NATIVE:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    const-string v1, "mopub"

    invoke-interface/range {v0 .. v5}, Lcom/mopub/common/MoPub$AnalyticsEventsListener;->onAdLoggingImpression(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method
