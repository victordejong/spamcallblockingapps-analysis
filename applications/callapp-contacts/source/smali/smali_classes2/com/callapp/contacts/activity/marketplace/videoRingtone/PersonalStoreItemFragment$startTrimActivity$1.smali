.class final Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->a(Landroid/net/Uri;Ljava/lang/String;I)V
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
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->c:Ljava/lang/String;

    iput p4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 485
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->b:Landroid/net/Uri;

    const-string v1, "CallScreenThemeTemp"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/IoUtils;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 487
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/util/video/TrimmerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_VIDEO_PATH"

    .line 488
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->c:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->c:Ljava/lang/String;

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_0
    iget v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->d:I

    const-string v3, "EXTRA_ASSIGN_FLOW"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_VIDEO_FILE_NAME"

    .line 495
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->getChooseImageSourceDialogListener()Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/crop/ChooseImageSourceDialogListener;->getContactId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "EXTRA_CONTACT_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment$startTrimActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;

    const/16 v2, 0x156

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/PersonalStoreItemFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method
