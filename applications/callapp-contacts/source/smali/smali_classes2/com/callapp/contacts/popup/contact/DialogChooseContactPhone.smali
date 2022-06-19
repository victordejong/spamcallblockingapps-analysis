.class public Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;
.super Lcom/callapp/contacts/popup/contact/DialogList;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/util/List;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;",
            "Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p2}, Lcom/callapp/contacts/popup/contact/DialogList;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 20
    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;

    invoke-direct {v1, v0, p2}, Lcom/callapp/contacts/popup/contact/AdapterText$ItemText;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Lcom/callapp/contacts/popup/contact/AdapterText;

    const v0, 0x7f0d00aa

    invoke-direct {p2, p1, v0, p3}, Lcom/callapp/contacts/popup/contact/AdapterText;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    new-instance p1, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;

    invoke-direct {p1, p0, p5, p4}, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone$1;-><init>(Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;Ljava/util/List;)V

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/popup/contact/AdapterText;->setListener(Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/popup/contact/DialogChooseContactPhone;->dismiss()V

    .line 36
    invoke-interface {p5, p3, p2}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$DialogContactMultiNumberListener;->onDone(Lcom/callapp/framework/phone/Phone;Z)V

    return-void
.end method
