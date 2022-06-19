.class Lcom/callapp/contacts/activity/EditUserProfileActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->showMandatoryVerifyNumberPopup()V
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

    .line 145
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$3;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "Verify dialog - User Decided not to verify his number"

    .line 149
    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->trackUserProfileEvent(Ljava/lang/String;)V

    return-void
.end method
