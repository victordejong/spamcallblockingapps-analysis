.class final Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getProgress()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget-object v1, v1, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getVideoUrlDetailsData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget v2, v2, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->b:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->setPersonalStoreItemDetailsData(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-static {v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->a(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget-object v1, v1, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getVideoUrlDetailsData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget v2, v2, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;->a(Ljava/util/List;Ljava/lang/Integer;)V

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1$doTask$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$setupMultiContactsViews$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->getRightShareButtonFrame()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
