.class public final Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;
.super Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector<",
        "Ljava/util/List<",
        "+",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00020\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0003J\u0010\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0016R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;",
        "Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;",
        "",
        "Lcom/sinch/metadata/model/sim/SimCardInfo;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "metadataDescriptiveName",
        "",
        "getMetadataDescriptiveName",
        "()Ljava/lang/String;",
        "subscriptionManager",
        "Landroid/telephony/SubscriptionManager;",
        "getSubscriptionManager",
        "()Landroid/telephony/SubscriptionManager;",
        "subscriptionManager$delegate",
        "Lkotlin/Lazy;",
        "collectOperatorSimCardData",
        "collectWithPermissionsGranted",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final metadataDescriptiveName:Ljava/lang/String;

.field private final subscriptionManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/sinch/verification/utils/permission/Permission;->READ_PHONE_STATE:Lcom/sinch/verification/utils/permission/Permission;

    invoke-direct {p0, p1, v0}, Lcom/sinch/metadata/collector/PermissionProtectedMetadataCollector;-><init>(Landroid/content/Context;Lcom/sinch/verification/utils/permission/Permission;)V

    .line 24
    new-instance v0, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector$subscriptionManager$2;

    invoke-direct {v0, p1}, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector$subscriptionManager$2;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->subscriptionManager$delegate:Lkotlin/Lazy;

    const-string p1, "Sim Card information"

    .line 28
    iput-object p1, p0, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->metadataDescriptiveName:Ljava/lang/String;

    return-void
.end method

.method private final collectOperatorSimCardData()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/metadata/model/sim/SimCardInfo;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 49
    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 36
    new-instance v3, Lcom/sinch/metadata/model/sim/SimCardInfo;

    const/4 v4, 0x0

    .line 37
    new-instance v11, Lcom/sinch/metadata/model/sim/OperatorInfo;

    const-string v5, "it"

    .line 38
    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v6

    const-string v5, "it.countryIso"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-direct {p0}, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->getSubscriptionManager()Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionManager;->isNetworkRoaming(I)Z

    move-result v8

    .line 41
    sget-object v5, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v5}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi29OrLater()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v9, v5

    .line 42
    sget-object v5, Lcom/sinch/verification/utils/api/ApiLevelUtils;->INSTANCE:Lcom/sinch/verification/utils/api/ApiLevelUtils;

    invoke-virtual {v5}, Lcom/sinch/verification/utils/api/ApiLevelUtils;->isApi29OrLater()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v10, v2

    move-object v5, v11

    .line 37
    invoke-direct/range {v5 .. v10}, Lcom/sinch/metadata/model/sim/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {v3, v4, v11}, Lcom/sinch/metadata/model/sim/SimCardInfo;-><init>(Lcom/sinch/metadata/model/sim/SimMetadata;Lcom/sinch/metadata/model/sim/OperatorInfo;)V

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 1071
    :cond_3
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getSubscriptionManager()Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->subscriptionManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic collectWithPermissionsGranted()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->collectWithPermissionsGranted()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final collectWithPermissionsGranted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sinch/metadata/model/sim/SimCardInfo;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->collectOperatorSimCardData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getMetadataDescriptiveName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sinch/metadata/collector/sim/ReflectionSafeSimCardInfoCollector;->metadataDescriptiveName:Ljava/lang/String;

    return-object v0
.end method
