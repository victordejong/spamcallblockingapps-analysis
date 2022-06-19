.class public final Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a(Landroid/view/View;I)V
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
        "com/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1",
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
.field final synthetic a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 213
    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    iput p2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->b:I

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-static {}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->setVideoUrlDetailsData(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getVideoUrlDetailsData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 217
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;-><init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->b(Ljava/lang/Runnable;)V

    return-void

    .line 224
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const v1, 0x7f120636

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1111
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->dismiss()V

    return-void
.end method
