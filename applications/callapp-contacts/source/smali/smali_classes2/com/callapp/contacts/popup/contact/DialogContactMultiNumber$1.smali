.class Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$OnSelectChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->b(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->a(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;I)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v3}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->c(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 61
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v3}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->c(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v3, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$PhoneData;->b:Z

    .line 62
    iget-object v3, p0, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$1;->a:Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;

    invoke-static {v3}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;->d(Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber;)Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/popup/contact/DialogContactMultiNumber$MultiNumberAdapter;->notifyDataSetChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
