.class Lcom/callapp/contacts/popup/contact/DialogEditText$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogEditText;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/DialogEditText;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogEditText;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$1;->b:Lcom/callapp/contacts/popup/contact/DialogEditText;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$1;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogEditText$1;->b:Lcom/callapp/contacts/popup/contact/DialogEditText;

    xor-int/lit8 p1, p1, 0x1

    .line 1076
    iget-object v1, v0, Lcom/callapp/contacts/popup/contact/DialogSimple;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1077
    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/DialogSimple;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
