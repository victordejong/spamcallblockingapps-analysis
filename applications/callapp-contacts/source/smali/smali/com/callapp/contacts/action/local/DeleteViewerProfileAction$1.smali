.class Lcom/callapp/contacts/action/local/DeleteViewerProfileAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/callapp/contacts/action/local/DeleteViewerProfileAction$1;->b:Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/DeleteViewerProfileAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/callapp/contacts/action/local/DeleteViewerProfileAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    instance-of v0, p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;

    invoke-static {p1}, Lcom/callapp/contacts/action/local/DeleteViewerProfileAction;->a(Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataItem;)V

    :cond_0
    return-void
.end method
