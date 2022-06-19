.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;",
        "",
        "()V",
        "PERSONAL_STORE_ITEM_FRAGMENT_TAG",
        "",
        "PERSONAL_STORE_URL_DATA_ARGUMENT",
        "REQUEST_CANCELED",
        "",
        "REQUEST_VIDEO_CAPTURE",
        "REQUEST_VIDEO_PICK",
        "SHARE_RESULT",
        "SHARE_VIDEO_NAME",
        "selectedPersonalStoreItemIndex",
        "getSelectedPersonalStoreItemIndex",
        "()I",
        "setSelectedPersonalStoreItemIndex",
        "(I)V",
        "newInstance",
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;",
        "personalType",
        "Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;",
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
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$Companion;-><init>()V

    return-void
.end method

.method public static a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
    .locals 3

    const-string v0, "personalType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;-><init>()V

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    check-cast p0, Ljava/io/Serializable;

    const-string v2, "PERSONAL_STORE_URL_DATA_ARGUMENT"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final getSelectedPersonalStoreItemIndex()I
    .locals 1

    .line 110
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c()I

    move-result v0

    return v0
.end method

.method public final setSelectedPersonalStoreItemIndex(I)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->c(I)V

    return-void
.end method
