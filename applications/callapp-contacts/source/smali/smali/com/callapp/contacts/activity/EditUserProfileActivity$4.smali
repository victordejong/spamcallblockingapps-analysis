.class Lcom/callapp/contacts/activity/EditUserProfileActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->showVerifyDialog(IIILcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/EditUserProfileActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/EditUserProfileActivity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$4;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    const-string p1, "User Clicked the verify button on dialog"

    .line 165
    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->trackUserProfileEvent(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->get()Lcom/callapp/contacts/manager/PhoneVerifierManager;

    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$4;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/PhoneVerifierManager;->a(Landroid/app/Activity;Z)V

    return-void
.end method
