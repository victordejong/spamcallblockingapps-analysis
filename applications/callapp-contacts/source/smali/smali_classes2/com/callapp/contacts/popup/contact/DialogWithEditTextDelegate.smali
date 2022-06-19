.class public Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListenerImpel;,
        Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

.field public final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/text/TextWatcher;

.field private e:Lcom/callapp/contacts/widget/CompoundEditText;

.field private f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;Ljava/lang/String;Ljava/lang/String;Landroid/text/TextWatcher;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    .line 25
    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->c:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->b:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->d:Landroid/text/TextWatcher;

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/DialogPopup;IZ)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->e:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CompoundEditText;->getText()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    invoke-interface {v1, v0}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->e:Lcom/callapp/contacts/widget/CompoundEditText;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CompoundEditText;->a()V

    .line 58
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const/16 p2, 0x11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->a:Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;

    invoke-interface {v1, p2, v0, p3}, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate$SingleChoiceWithTextListener;->a(ILjava/lang/String;Z)V

    .line 62
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->dismiss()V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/CompoundEditText;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->e:Lcom/callapp/contacts/widget/CompoundEditText;

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setInputType(I)V

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->d:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 1134
    iput-object v0, p1, Lcom/callapp/contacts/widget/CompoundEditText;->b:Landroid/text/TextWatcher;

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setHintText(Ljava/lang/CharSequence;)V

    .line 1195
    iget-object v0, p1, Lcom/callapp/contacts/widget/CompoundEditText;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/CompoundEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->e:Lcom/callapp/contacts/widget/CompoundEditText;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CompoundEditText;->setInputType(I)V

    .line 49
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogWithEditTextDelegate;->f:Ljava/lang/Integer;

    return-void
.end method
