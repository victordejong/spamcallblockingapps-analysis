.class public final Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0005\u00a2\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00048\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00048\u0002@\u0002X\u0083.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;",
        "",
        "()V",
        "jSONReferAndEarnRewards",
        "",
        "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
        "jSONReferAndEarnRewardsPremium",
        "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsPremiumItem;",
        "jsonReferAndEarnRewardsStoreUnlockPremium",
        "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsStoreUnlockPremium;",
        "Companion",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;


# instance fields
.field private jSONReferAndEarnRewards:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "JSONReferAndEarnRewards"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
            ">;"
        }
    .end annotation
.end field

.field private jSONReferAndEarnRewardsPremium:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "JSONReferAndEarnRewardsPremium"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsPremiumItem;",
            ">;"
        }
    .end annotation
.end field

.field private jsonReferAndEarnRewardsStoreUnlockPremium:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "JSONReferAndEarnRewardsStoreUnlockPremium"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewardsStoreUnlockPremium;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->Companion:Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJSONReferAndEarnRewards$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;)Ljava/util/List;
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->jSONReferAndEarnRewards:Ljava/util/List;

    if-nez p0, :cond_0

    const-string v0, "jSONReferAndEarnRewards"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getJSONReferAndEarnRewardsPremium$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;)Ljava/util/List;
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->jSONReferAndEarnRewardsPremium:Ljava/util/List;

    if-nez p0, :cond_0

    const-string v0, "jSONReferAndEarnRewardsPremium"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getJsonReferAndEarnRewardsStoreUnlockPremium$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;)Ljava/util/List;
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->jsonReferAndEarnRewardsStoreUnlockPremium:Ljava/util/List;

    if-nez p0, :cond_0

    const-string v0, "jsonReferAndEarnRewardsStoreUnlockPremium"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setJSONReferAndEarnRewards$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;Ljava/util/List;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->jSONReferAndEarnRewards:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setJSONReferAndEarnRewardsPremium$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;Ljava/util/List;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->jSONReferAndEarnRewardsPremium:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setJsonReferAndEarnRewardsStoreUnlockPremium$p(Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;Ljava/util/List;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->jsonReferAndEarnRewardsStoreUnlockPremium:Ljava/util/List;

    return-void
.end method

.method public static final getJSONReferAndEarnRewardsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->Companion:Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;->getJSONReferAndEarnRewardsData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getMaxRewards()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->Companion:Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;->getMaxRewards()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
