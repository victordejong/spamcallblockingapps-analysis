.class public Lcom/verizon/ads/nativeplacement/NativeComponentBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# static fields
.field private static final b:Lcom/verizon/ads/Logger;


# instance fields
.field a:Lcom/verizon/ads/Component;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/nativeplacement/NativeComponentBundle;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/verizon/ads/Component;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/verizon/ads/nativeplacement/NativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->b:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Lcom/verizon/ads/Component;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->d:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->c:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object p2, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a:Lcom/verizon/ads/Component;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getAd()Lcom/verizon/ads/nativeplacement/NativeAd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a(Lcom/verizon/ads/nativeplacement/NativeAd;)V

    :cond_0
    return-void
.end method

.method private a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getAd()Lcom/verizon/ads/nativeplacement/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Lcom/verizon/ads/nativeplacement/NativeAd;->getAdSession()Lcom/verizon/ads/AdSession;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/nativeplacement/NativeAd;->getAdSession()Lcom/verizon/ads/AdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/AdSession;->getAdAdapter()Lcom/verizon/ads/AdAdapter;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/verizon/ads/nativeplacement/NativeAd;)V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getAd()Lcom/verizon/ads/nativeplacement/NativeAd;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeAd;

    return-object v0
.end method

.method public getBundleComponent()Lcom/verizon/ads/Component;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a:Lcom/verizon/ads/Component;

    return-object v0
.end method

.method public getComponent(Landroid/content/Context;Ljava/lang/String;)Lcom/verizon/ads/Component;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p0, p2}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;

    move-result-object p1

    return-object p1
.end method

.method public getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/Component;

    if-nez v0, :cond_3

    .line 1193
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1194
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1198
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->getComponent(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Ljava/lang/String;)Lcom/verizon/ads/Component;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1214
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1219
    :cond_1
    iget-object v1, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getComponentIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/verizon/ads/nativeplacement/NativeAd;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-interface {v0, p0}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->getComponentIds(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 176
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->getJSON(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSON(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->a()Lcom/verizon/ads/nativeplacement/NativeAdAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/verizon/ads/nativeplacement/NativeAdAdapter;->getJSON(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getParentBundle()Lcom/verizon/ads/nativeplacement/NativeComponentBundle;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 64
    sget-object v0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->b:Lcom/verizon/ads/Logger;

    const-string v1, "Releasing loaded components"

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/verizon/ads/Component;

    .line 66
    invoke-interface {v1}, Lcom/verizon/ads/Component;->release()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
