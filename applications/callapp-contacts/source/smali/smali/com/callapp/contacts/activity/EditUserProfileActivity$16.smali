.class Lcom/callapp/contacts/activity/EditUserProfileActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/EditUserProfileActivity;->isBackPressedHandled()Z
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

    .line 735
    iput-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$16;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 0

    .line 738
    iget-object p1, p0, Lcom/callapp/contacts/activity/EditUserProfileActivity$16;->a:Lcom/callapp/contacts/activity/EditUserProfileActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->finish()V

    const-string p1, "Non verified user decided to exit the Edit user profile activity"

    .line 739
    invoke-static {p1}, Lcom/callapp/contacts/activity/EditUserProfileActivity;->trackUserProfileEvent(Ljava/lang/String;)V

    return-void
.end method
