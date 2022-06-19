.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;

    sget-object v1, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject;->Companion:Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/referandearn/JSONReferAndEarnRewardsObject$Companion;->getJSONReferAndEarnRewardsData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;Ljava/util/List;)V

    .line 84
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1$doTask$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
