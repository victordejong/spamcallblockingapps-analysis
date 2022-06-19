.class Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/DeleteCallRecordAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

.field final synthetic b:Lcom/callapp/contacts/action/local/DeleteCallRecordAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/DeleteCallRecordAction;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;->b:Lcom/callapp/contacts/action/local/DeleteCallRecordAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;->a:Lcom/callapp/contacts/activity/base/BaseAdapterItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 46
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1$1;-><init>(Lcom/callapp/contacts/action/local/DeleteCallRecordAction$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method
