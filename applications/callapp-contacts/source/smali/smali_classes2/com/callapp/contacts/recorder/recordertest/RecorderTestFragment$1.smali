.class public final Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;
.super Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;-><init>()V
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
        "\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\n\u0008\u0000\u0010\u0003*\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00132\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0018\u001a\u00020\u0013H\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "com/callapp/contacts/recorder/recordertest/RecorderTestFragment$1",
        "Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;",
        "findViewById",
        "V",
        "Landroid/view/View;",
        "id",
        "",
        "(I)Landroid/view/View;",
        "finish",
        "",
        "getCardsAdapter",
        "Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;",
        "getContact",
        "Lcom/callapp/contacts/model/contact/ContactData;",
        "getEventBus",
        "Lcom/callapp/contacts/event/bus/EventBus;",
        "getRealContext",
        "Landroid/content/Context;",
        "hasIntentExtra",
        "",
        "extra",
        "",
        "isClickValid",
        "view",
        "isFinishing",
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
.field final synthetic this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/event/bus/EventBus;",
            "Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;",
            ")V"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-direct {p0, p2, p3}, Lcom/callapp/contacts/activity/contact/details/PresentersContainerImpl;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;)V

    return-void
.end method


# virtual methods
.method public final findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(I)TV;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final finish()V
    .locals 0

    return-void
.end method

.method public final getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getCardsAdapter()Lcom/callapp/contacts/activity/contact/cards/framework/CardArrayRecyclerViewAdapterWithPriority;

    move-result-object v0

    return-object v0
.end method

.method public final getContact()Lcom/callapp/contacts/model/contact/ContactData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getEventBus()Lcom/callapp/contacts/event/bus/EventBus;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getEventBus()Lcom/callapp/contacts/event/bus/EventBus;

    move-result-object v0

    return-object v0
.end method

.method public final getRealContext()Landroid/content/Context;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final hasIntentExtra(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "extra"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final isClickValid(Landroid/view/View;)Z
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    sget-object v0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->b:Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager$Companion;->get()Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestManager;->isInRecorderTestMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->setShouldScroll(Z)V

    .line 102
    iget-object p1, p0, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment$1;->this$0:Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;

    invoke-virtual {p1}, Lcom/callapp/contacts/recorder/recordertest/RecorderTestFragment;->getShouldScroll()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final isFinishing()Z
    .locals 0

    :goto_0
    nop

    goto :goto_0
.end method
