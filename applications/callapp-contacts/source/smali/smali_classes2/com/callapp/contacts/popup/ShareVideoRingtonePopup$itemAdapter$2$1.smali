.class final Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 49
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;

    iget-object v0, v0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;->setPersonalStoreItemDetailsData(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V

    .line 49
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
