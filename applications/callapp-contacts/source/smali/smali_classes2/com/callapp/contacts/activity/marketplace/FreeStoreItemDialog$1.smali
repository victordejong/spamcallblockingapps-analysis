.class Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog;-><init>(Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$1;->a:Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$1;->a:Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;

    if-eqz p1, :cond_0

    .line 32
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cS:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/marketplace/FreeStoreItemDialog$FreeStoreItemDialogEvents;->a(Lcom/callapp/contacts/activity/marketplace/DownloaderCardViewHandler$StoreItemType;)V

    :cond_0
    return-void
.end method
