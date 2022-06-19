.class public Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/inlineplacement/InlineAdAdapter;
.implements Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
    }
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/verizon/ads/webcontroller/WebController;

.field private d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

.field private e:Z

.field private volatile f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

.field private g:Lcom/verizon/ads/inlineplacement/AdSize;

.field private h:Lcom/verizon/ads/AdContent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v1

    sput-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->e:Z

    .line 30
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 40
    new-instance v0, Lcom/verizon/ads/webcontroller/WebController;

    invoke-direct {v0}, Lcom/verizon/ads/webcontroller/WebController;-><init>()V

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    .line 42
    invoke-virtual {v0, p0}, Lcom/verizon/ads/webcontroller/WebController;->setListener(Lcom/verizon/ads/webcontroller/WebController$WebControllerListener;)V

    return-void
.end method

.method static synthetic a(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;)Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-object p0
.end method

.method static synthetic a(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;)Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized abortLoad()V
    .locals 2

    monitor-enter p0

    .line 245
    :try_start_0
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Attempting to abort load."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ABORTED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    if-eqz v0, :cond_0

    .line 334
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;->onCollapsed()V

    :cond_0
    return-void
.end method

.method public expand()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;->onExpanded()V

    :cond_0
    return-void
.end method

.method public fireImpression()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->fireImpression()V

    :cond_0
    return-void
.end method

.method public getAdContent()Lcom/verizon/ads/AdContent;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->h:Lcom/verizon/ads/AdContent;

    return-object v0
.end method

.method public getAdSize()Lcom/verizon/ads/inlineplacement/AdSize;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->g:Lcom/verizon/ads/inlineplacement/AdSize;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 257
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Adapter must be in loaded state to getView."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    return-object v2

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    if-nez v0, :cond_1

    .line 263
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "WebController cannot be null to getView."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-object v2

    .line 269
    :cond_1
    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->getVASAdsMRAIDWebView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 272
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v1, "Verizon Ad View cannot be null to getView."

    invoke-virtual {v0, v1}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    return-object v2

    :cond_2
    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isImmersiveEnabled()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->e:Z

    return v0
.end method

.method public isResized()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->isResized()Z

    move-result v0

    return v0
.end method

.method public loadView(Landroid/content/Context;ILcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;)V
    .locals 2

    if-nez p3, :cond_0

    .line 196
    sget-object p1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "LoadViewListener cannot be null."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-eq v0, v1, :cond_1

    .line 202
    sget-object p1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "Adapter must be in prepared state to load."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 204
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    const/4 v0, -0x1

    const-string v1, "Adapter not in prepared state."

    invoke-direct {p1, p2, v1, v0}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, p1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;->onComplete(Lcom/verizon/ads/ErrorInfo;)V

    return-void

    .line 209
    :cond_1
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADING:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 211
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    new-instance v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$1;-><init>(Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;Lcom/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener;)V

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/verizon/ads/webcontroller/WebController;->load(Landroid/content/Context;ILcom/verizon/ads/webcontroller/WebController$LoadListener;Z)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;->onAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public onClicked()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;->onClicked()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p1}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;->onError(Lcom/verizon/ads/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized prepare(Lcom/verizon/ads/AdSession;Lcom/verizon/ads/AdContent;)Lcom/verizon/ads/ErrorInfo;
    .locals 5

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 57
    sget-object p1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string p2, "prepare failed; adapter is not in the default state."

    invoke-virtual {p1, p2}, Lcom/verizon/ads/Logger;->d(Ljava/lang/String;)V

    .line 59
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    const-string v0, "Adapter not in the default state."

    const/4 v1, -0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/verizon/ads/webcontroller/WebController;->prepare(Lcom/verizon/ads/AdSession;Ljava/lang/String;)Lcom/verizon/ads/ErrorInfo;

    move-result-object p1

    .line 64
    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    const-string v0, "Ad content is missing meta data."

    const/4 v1, -0x3

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 68
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ad_size"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    const/4 v1, -0x2

    if-nez v0, :cond_2

    .line 69
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    const-string v0, "Ad content is missing ad size."

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 73
    :cond_2
    :try_start_3
    invoke-virtual {p2}, Lcom/verizon/ads/AdContent;->getMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v2, "ad_size"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1102
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v3, "AdSizeMap must not be null."

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "w"

    .line 1107
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    const-string v3, "h"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_0

    .line 1114
    :cond_4
    new-instance v2, Lcom/verizon/ads/inlineplacement/AdSize;

    const-string v3, "w"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "h"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/verizon/ads/inlineplacement/AdSize;-><init>(II)V

    goto :goto_1

    .line 1108
    :cond_5
    :goto_0
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Width and/or height are not integers."

    invoke-virtual {v0, v3}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    .line 74
    :goto_1
    iput-object v2, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->g:Lcom/verizon/ads/inlineplacement/AdSize;

    if-nez v2, :cond_6

    .line 77
    new-instance p1, Lcom/verizon/ads/ErrorInfo;

    sget-object p2, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->b:Ljava/lang/String;

    const-string v0, "Ad content is missing ad size."

    invoke-direct {p1, p2, v0, v1}, Lcom/verizon/ads/ErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    if-nez p1, :cond_7

    .line 81
    :try_start_4
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    goto :goto_2

    .line 83
    :cond_7
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->ERROR:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 86
    :goto_2
    iput-object p2, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->h:Lcom/verizon/ads/AdContent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 134
    :try_start_0
    sget-object v0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->RELEASED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    .line 136
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/verizon/ads/webcontroller/WebController;->release()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resize()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;->onResized()V

    :cond_0
    return-void
.end method

.method public setImmersiveEnabled(Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->c:Lcom/verizon/ads/webcontroller/WebController;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcom/verizon/ads/webcontroller/WebController;->setImmersiveEnabled(Z)V

    .line 188
    :cond_0
    iput-boolean p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->e:Z

    return-void
.end method

.method public setListener(Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->PREPARED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->DEFAULT:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->f:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    sget-object v1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;->LOADED:Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter$AdapterState;

    if-eq v0, v1, :cond_0

    .line 154
    sget-object p1, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->a:Lcom/verizon/ads/Logger;

    const-string v0, "InlineAdAdapterListener can only be set in default, prepared, or loaded state."

    invoke-virtual {p1, v0}, Lcom/verizon/ads/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/verizon/ads/inlinewebadapter/InlineWebAdapter;->d:Lcom/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener;

    return-void
.end method

.method public unload()V
    .locals 0

    return-void
.end method
