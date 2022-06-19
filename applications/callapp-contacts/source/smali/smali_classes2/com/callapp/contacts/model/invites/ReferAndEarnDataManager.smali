.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;,
        Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00032\u00020\u0001:\u0002\u0003\u0004B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;",
        "",
        "()V",
        "Companion",
        "ReferAndEarnDataManagerListener",
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
.field public static final Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

.field private static final boxReferAndEarnData:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation
.end field

.field private static final boxReferAndEarnUserData:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    .line 46
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "CallAppApplication.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v2, Lcom/callapp/contacts/model/invites/ReferAndEarnData;

    invoke-virtual {v0, v2}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->boxReferAndEarnData:Lio/objectbox/a;

    .line 49
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getObjectBoxStore()Lio/objectbox/BoxStore;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/model/invites/ReferAndEarnUserData;

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->boxReferAndEarnUserData:Lio/objectbox/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBoxReferAndEarnData$cp()Lio/objectbox/a;
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->boxReferAndEarnData:Lio/objectbox/a;

    return-object v0
.end method

.method public static final synthetic access$getBoxReferAndEarnUserData$cp()Lio/objectbox/a;
    .locals 1

    .line 33
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->boxReferAndEarnUserData:Lio/objectbox/a;

    return-object v0
.end method

.method public static final addPoint(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addPoint(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static final addReferRecord(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addReferRecord(Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static final addSelfPoint()V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addSelfPoint()V

    return-void
.end method

.method public static final addThePoints(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addThePoints(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final getInstalledDate(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getInstalledDate(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final getReferAndEarnBox()Lio/objectbox/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/objectbox/a<",
            "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getReferAndEarnBox()Lio/objectbox/a;

    move-result-object v0

    return-object v0
.end method

.method public static final getReferAndEarnRewardsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getReferAndEarnRewardsData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getReferStatus(Ljava/lang/String;)Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getReferStatus(Ljava/lang/String;)Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;

    move-result-object p0

    return-object p0
.end method

.method public static final getTotalEarned()J
    .locals 2

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->getTotalEarned()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final isContactInvited(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->isContactInvited(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isPremiumRewarded()Z
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->isPremiumRewarded()Z

    move-result v0

    return v0
.end method

.method public static final onStageReachedDialog(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->onStageReachedDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static final postPointsReferKey(Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->postPointsReferKey(Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method

.method public static final removeAll()V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->removeAll()V

    return-void
.end method

.method public static final sendPointsToReferer(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->sendPointsToReferer(Ljava/lang/String;I)V

    return-void
.end method

.method public static final setPointsNumber(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->setPointsNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public static final updatePoints(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updatePoints(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public static final updatePointsFromInvites()V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updatePointsFromInvites()V

    return-void
.end method

.method public static final updateReferStatus(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)V
    .locals 1

    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->updateReferStatus(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/invites/ReferAndEarnUserData$STATUS;)V

    return-void
.end method
