.class Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogList;

.field final synthetic b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;Lcom/callapp/contacts/popup/contact/DialogList;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$2;->b:Lcom/callapp/contacts/action/local/RemoveFromCallLogAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$2;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/action/local/RemoveFromCallLogAction$2;->a:Lcom/callapp/contacts/popup/contact/DialogList;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogList;->dismiss()V

    return-void
.end method
