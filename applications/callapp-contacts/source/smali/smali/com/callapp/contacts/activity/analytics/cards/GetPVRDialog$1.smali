.class Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->a:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 75
    sget-object p1, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity;->n:Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;

    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->a(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;->VIDEO_RINGTONE:Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/PersonalStoreItemHelper;->a(Lcom/callapp/contacts/model/objectbox/PersonalStoreItemUrlData$PersonalStoreItemType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/marketplace/PersonalCallScreenThemeDownloaderActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->b(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EXTRA_CONTACT_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog$1;->b:Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;->a(Lcom/callapp/contacts/activity/analytics/cards/GetPVRDialog;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
