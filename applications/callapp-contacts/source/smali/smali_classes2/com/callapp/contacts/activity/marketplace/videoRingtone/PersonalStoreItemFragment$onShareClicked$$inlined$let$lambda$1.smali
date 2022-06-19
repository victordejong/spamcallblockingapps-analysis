.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$1$1",
        "Lcom/callapp/contacts/popup/ShareVideoRingtonePopup$ShareVideoRingtonePopUpInterface;",
        "onContactSelected",
        "",
        "personalStoreItemDetailsData",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;",
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

.field final synthetic b:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;->b:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V
    .locals 2

    const-string v0, "personalStoreItemDetailsData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$onShareClicked$$inlined$let$lambda$1;Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemDetailsData;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
