.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;->b:Landroid/net/Uri;

    iput p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 561
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;->b:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getChooseImageSourceDialogListener()Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->getUpdatePersonalStoreItemUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startPortraitModePopUp$dialogMessageWithTopImageNew$1;->c:I

    invoke-static {p1, v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;Ljava/lang/String;I)V

    return-void
.end method
