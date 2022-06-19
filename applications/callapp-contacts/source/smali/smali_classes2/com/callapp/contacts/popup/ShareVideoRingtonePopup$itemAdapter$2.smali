.class final Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;-><init>(Ljava/util/List;Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;",
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
.field final synthetic a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;->a:Lcom/callapp/contacts/popup/ShareVideoRingtonePopup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 1056
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;

    new-instance v1, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2$1;-><init>(Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$itemAdapter$2;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/CarouselAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
