.class public final Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addSelfPoint$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addSelfPoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion$addSelfPoint$1",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$ReferAndEarnDataManagerListener;",
        "onKeyResult",
        "",
        "jsonInviteReferer",
        "Lcom/callapp/common/model/json/JSONInviteReferer;",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyResult(Lcom/callapp/common/model/json/JSONInviteReferer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 120
    sget-object v0, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONInviteReferer;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "it.key"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->access$addNewReferer(Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
