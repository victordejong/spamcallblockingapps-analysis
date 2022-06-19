.class abstract Lio/bidmachine/displays/IabAdObjectParams;
.super Lio/bidmachine/models/AdObjectParams;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;


# instance fields
.field private mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/models/AdObjectParams;-><init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 46
    new-instance p1, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;

    invoke-direct {p1, p0}, Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams;-><init>(Lio/bidmachine/unified/UnifiedMediationParams$MappedUnifiedMediationParams$DataProvider;)V

    iput-object p1, p0, Lio/bidmachine/displays/IabAdObjectParams;->mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

    .line 53
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "creativeId"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lio/bidmachine/displays/IabAdObjectParams;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/bidmachine/displays/IabAdObjectParams;->params:Ljava/util/Map;

    .line 62
    :cond_0
    iget-object v0, p0, Lio/bidmachine/displays/IabAdObjectParams;->params:Ljava/util/Map;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lio/bidmachine/displays/IabAdObjectParams;->params:Ljava/util/Map;

    const-string v1, "creativeAdm"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method parseColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method parseHorizontalPosition(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 p1, 0x5

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/4 p1, 0x3

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method parseVerticalPosition(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "top"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "bottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 p1, 0x30

    .line 189
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p1, 0x10

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p1, 0x50

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_2
        -0x514d33ab -> :sswitch_1
        0x1c155 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareExtensions(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lio/bidmachine/protobuf/AdExtension;)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2, p3}, Lio/bidmachine/models/AdObjectParams;->prepareExtensions(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lio/bidmachine/protobuf/AdExtension;)V

    .line 70
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getPreload()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "preload"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getLoadSkipoffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "loadSkipOffset"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getUseNativeClose()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "useNativeClose"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getSkipoffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "skipOffset"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getCompanionSkipoffset()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "companionSkipOffset"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getR1()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "r1"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getR2()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "r2"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getIgnoresSafeAreaLayoutGuide()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "ignores_safe_area_layout_guide"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getStoreUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "store_url"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getProgressDuration()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "progress_duration"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getCloseButton()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/IabAdObjectParams;->transform(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p2

    const-string v0, "closeable_view_style"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getCountdown()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/IabAdObjectParams;->transform(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p2

    const-string v0, "countdown_style"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_1
    invoke-virtual {p3}, Lio/bidmachine/protobuf/AdExtension;->getProgress()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/IabAdObjectParams;->transform(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/iab/utils/h;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object p2

    const-string p3, "progress_style"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method setCreativeAdm(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "creativeAdm"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "height"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lio/bidmachine/displays/IabAdObjectParams;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "width"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/bidmachine/displays/IabAdObjectParams;->mediationParams:Lio/bidmachine/unified/UnifiedMediationParams;

    return-object v0
.end method

.method transform(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/iab/utils/h;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 126
    :cond_0
    :try_start_0
    new-instance v1, Lcom/explorestack/iab/utils/h;

    invoke-direct {v1}, Lcom/explorestack/iab/utils/h;-><init>()V

    .line 127
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 1348
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->j:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/displays/IabAdObjectParams;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2088
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->b:Ljava/lang/Integer;

    .line 131
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2405
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->n:Ljava/lang/Integer;

    .line 132
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/h;->a(Ljava/lang/Number;)V

    .line 133
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/h;->b(Ljava/lang/Number;)V

    .line 134
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 3169
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->i:Ljava/lang/Float;

    .line 135
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/displays/IabAdObjectParams;->parseHorizontalPosition(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 4124
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    .line 136
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/displays/IabAdObjectParams;->parseVerticalPosition(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 4136
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    .line 137
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 4157
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->h:Ljava/lang/Float;

    .line 138
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 5100
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->c:Ljava/lang/Boolean;

    .line 139
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lio/bidmachine/displays/IabAdObjectParams;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 6076
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->a:Ljava/lang/Integer;

    .line 140
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 6357
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->k:Ljava/lang/Float;

    .line 141
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v2

    .line 7148
    iput-object v2, v1, Lcom/explorestack/iab/utils/h;->g:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8112
    iput-object p1, v1, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method
