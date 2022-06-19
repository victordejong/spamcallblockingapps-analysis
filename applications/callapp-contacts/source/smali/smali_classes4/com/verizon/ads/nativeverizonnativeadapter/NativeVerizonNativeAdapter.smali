.class public Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/nativeplacement/NativeAdAdapter;


# static fields
.field private static final a:Lcom/verizon/ads/Logger;


# instance fields
.field private b:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

.field private c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

.field private d:Lcom/verizon/ads/AdContent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->b:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    return-object p0
.end method

.method private static a(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;->getBundleComponent()Lcom/verizon/ads/Component;

    move-result-object p0

    .line 338
    instance-of v0, p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    if-nez v0, :cond_0

    .line 339
    sget-object p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "NativeComponentBundle does not contain a VerizonNativeComponentBundle"

    invoke-virtual {p0, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 344
    :cond_0
    check-cast p0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    return-object p0
.end method


# virtual methods
.method public abortLoadComponents()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Verizon Native Ad not loaded."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->abortLoadAssets()V

    return-void
.end method

.method public fireImpression(Landroid/content/Context;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 152
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Verizon Native Ad not loaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    invoke-virtual {v0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->fireImpression(Landroid/content/Context;)V

    return-void
.end method

.method public getAdContent()Lcom/verizon/ads/AdContent;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Verizon Native Ad not loaded."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->d:Lcom/verizon/ads/AdContent;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Verizon Native Ad not loaded."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponent(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Ljava/lang/String;)Lcom/verizon/ads/Component;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 165
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Verizon Native Ad not loaded."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v1

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 173
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "NativeComponentBundle does not contain a VerizonNativeComponentBundle"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 1331
    :cond_1
    invoke-virtual {p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponent(Ljava/lang/String;)Lcom/verizon/ads/Component;

    move-result-object p1

    if-nez p1, :cond_2

    .line 180
    sget-object p2, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Error obtaining native component from controller."

    invoke-virtual {p2, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public getComponentIds(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/nativeplacement/NativeComponentBundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-static {p1}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 235
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "NativeComponentBundle does not contain a VerizonNativeComponentBundle"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 240
    :cond_0
    invoke-virtual {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentIds()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getJSON(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lorg/json/JSONObject;
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 191
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Verizon Native Ad not loaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v1

    .line 196
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 199
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "NativeComponentBundle does not contain a VerizonNativeComponentBundle"

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 204
    :cond_1
    invoke-virtual {p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentInfo()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getJSON(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 212
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Verizon Native Ad not loaded."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-object v1

    .line 217
    :cond_0
    invoke-static {p1}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;)Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;

    move-result-object p1

    if-nez p1, :cond_1

    .line 220
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "NativeComponentBundle does not contain a VerizonNativeComponentBundle"

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-object v1

    .line 225
    :cond_1
    invoke-virtual {p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeComponentBundle;->getComponentJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredComponentIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Verizon Native Ad not loaded."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->getRequiredComponentIds()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRootBundle()Lcom/verizon/ads/nativeplacement/NativeComponentBundle;
    .locals 3

    .line 305
    new-instance v0, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;

    iget-object v1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/verizon/ads/nativeplacement/NativeComponentBundle;-><init>(Lcom/verizon/ads/nativeplacement/NativeComponentBundle;Lcom/verizon/ads/Component;)V

    return-object v0
.end method

.method public invokeDefaultAction(Landroid/content/Context;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 139
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Verizon Native Ad not loaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_0
    invoke-virtual {v0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->invokeDefaultAction(Landroid/content/Context;)V

    return-void
.end method

.method public loadComponents(ZILcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 101
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Verizon Native Ad not loaded."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 107
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "loadComponentsListener must not be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_1
    new-instance v1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$1;-><init>(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;Lcom/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->loadResources(ZILcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$LoadResourcesListener;)V

    return-void
.end method

.method public prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;
    .locals 1

    .line 260
    iput-object p2, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->d:Lcom/verizon/ads/AdContent;

    .line 262
    new-instance v0, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;

    invoke-direct {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;-><init>()V

    .line 263
    invoke-virtual {v0, p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 269
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeController;->getVerizonNativeAd()Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    .line 270
    new-instance p2, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;

    invoke-direct {p2, p0}, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter$2;-><init>(Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;)V

    invoke-virtual {p1, p2}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->setInteractionListener(Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd$InteractionListener;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public registerContainerView(Landroid/view/ViewGroup;)Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 351
    sget-object p1, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "Verizon Native Ad not loaded."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 356
    :cond_0
    invoke-virtual {v0, p1}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->registerContainerView(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->c:Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Verizon Native Ad not loaded."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/ads/verizonnativecontroller/VerizonNativeAd;->release()V

    return-void
.end method

.method public setListener(Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/verizon/ads/nativeverizonnativeadapter/NativeVerizonNativeAdapter;->b:Lcom/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener;

    return-void
.end method
