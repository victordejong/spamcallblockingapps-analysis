.class Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 6

    .line 64
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    const-string v0, "android.permission.SEND_SMS"

    invoke-static {v0}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/callapp/contacts/manager/permission/PermissionManager;->get()Lcom/callapp/contacts/manager/permission/PermissionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$1;

    invoke-direct {v2, p0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$1;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;I)V

    new-instance p1, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2$2;-><init>(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    const/4 v4, 0x0

    sget-object v5, Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;->SMS:Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/callapp/contacts/manager/permission/PermissionManager;->a(Lcom/callapp/contacts/activity/base/BaseActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;[Lcom/callapp/contacts/manager/permission/PermissionManager$PermissionGroup;)V

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;->a(Lcom/callapp/contacts/activity/contact/details/presenter/QuickResponseDialogPopup;I)V

    return-void
.end method
