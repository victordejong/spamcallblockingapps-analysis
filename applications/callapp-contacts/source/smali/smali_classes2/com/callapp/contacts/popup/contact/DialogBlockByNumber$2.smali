.class Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/CompoundEditText;

.field final synthetic b:Lcom/callapp/contacts/widget/CompoundEditText;

.field final synthetic c:Z

.field final synthetic d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;Lcom/callapp/contacts/widget/CompoundEditText;Lcom/callapp/contacts/widget/CompoundEditText;Z)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->b:Lcom/callapp/contacts/widget/CompoundEditText;

    iput-boolean p4, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 71
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->b:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->c:Z

    if-nez v0, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->b:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/BlockManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)Z

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->b:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/manager/BlockManager;->a(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->a(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;)Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->a(Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;)Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$SimpleDoneDialogListener;->a()V

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->d:Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber;->dismiss()V

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 79
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->a:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CompoundEditText;->a()V

    :cond_4
    if-eqz v1, :cond_5

    .line 82
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogBlockByNumber$2;->b:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CompoundEditText;->a()V

    :cond_5
    :goto_2
    return-void
.end method
