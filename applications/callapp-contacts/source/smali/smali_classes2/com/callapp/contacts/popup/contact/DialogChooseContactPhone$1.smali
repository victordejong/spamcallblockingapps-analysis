.class Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;Ljava/util/List;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;->c:Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/framework/phone/Phone;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;->onDone(Lcom/callapp/framework/phone/Phone;Z)V

    .line 29
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;->c:Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;->dismiss()V

    return-void
.end method
