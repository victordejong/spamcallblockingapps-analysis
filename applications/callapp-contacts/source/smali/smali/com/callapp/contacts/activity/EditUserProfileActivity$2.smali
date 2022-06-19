.class Lcom/callapp/contacts/activity/EditUserProfileActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->showOptionalVerifyNumberPopup(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$2;->b:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$2;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$2;->b:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    iget-object v0, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$2;->a:Lcom/callapp/framework/phone/Phone;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->access$000(Lcom/callapp/contacts/activity/EditUserProfileActivity;Lcom/callapp/framework/phone/Phone;)V

    const-string p1, "Verify dialog - User Decided to see how he looks on CD without verifying his number"

    .line 136
    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->trackUserProfileEvent(Ljava/lang/String;)V

    return-void
.end method
