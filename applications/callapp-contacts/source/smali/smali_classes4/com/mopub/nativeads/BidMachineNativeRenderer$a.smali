.class final Lcom/mopub/nativeads/BidMachineNativeRenderer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/nativeads/BidMachineNativeRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lio/bidmachine/nativead/view/NativeAdContentLayout;

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/mopub/nativeads/ViewBinder;)Lcom/mopub/nativeads/BidMachineNativeRenderer$a;
    .locals 7

    .line 85
    new-instance v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;

    invoke-direct {v0}, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;-><init>()V

    const/4 v1, 0x1

    .line 87
    :try_start_0
    move-object v2, p0

    check-cast v2, Lio/bidmachine/nativead/view/NativeAdContentLayout;

    .line 88
    iget v3, p1, Lcom/mopub/nativeads/ViewBinder;->b:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setTitleView(Landroid/view/View;)V

    .line 89
    iget v3, p1, Lcom/mopub/nativeads/ViewBinder;->d:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setCallToActionView(Landroid/view/View;)V

    .line 90
    iget v3, p1, Lcom/mopub/nativeads/ViewBinder;->f:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setIconView(Landroid/view/View;)V

    .line 91
    iget v3, p1, Lcom/mopub/nativeads/ViewBinder;->c:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setDescriptionView(Landroid/view/View;)V

    .line 92
    iget v3, p1, Lcom/mopub/nativeads/ViewBinder;->g:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setProviderView(Landroid/view/View;)V

    .line 94
    iget v3, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    new-instance v4, Lio/bidmachine/nativead/view/NativeMediaView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/bidmachine/nativead/view/NativeMediaView;-><init>(Landroid/content/Context;)V

    .line 97
    iget p1, p1, Lcom/mopub/nativeads/ViewBinder;->e:I

    invoke-virtual {v4, p1}, Lio/bidmachine/nativead/view/NativeMediaView;->setId(I)V

    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 100
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v5, v6, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 103
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    .line 104
    invoke-virtual {p1, v4, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v2, v4}, Lio/bidmachine/nativead/view/NativeAdContentLayout;->setMediaView(Lio/bidmachine/nativead/view/NativeMediaView;)V

    .line 109
    :cond_0
    iput-object v2, v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->a:Lio/bidmachine/nativead/view/NativeAdContentLayout;

    const/16 p1, 0x64

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->a(Landroid/view/View;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, v0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;->b:Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 114
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Error during filling ViewHolder "

    aput-object v3, v0, v2

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 117
    new-instance p0, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;

    invoke-direct {p0}, Lcom/mopub/nativeads/BidMachineNativeRenderer$a;-><init>()V

    return-object p0
.end method

.method private static a(Landroid/view/View;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 124
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 128
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 129
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
