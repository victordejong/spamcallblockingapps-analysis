.class Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;->a:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;->a:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;->a:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->d(Lcom/callapp/contacts/popup/contact/DialogDateAndTime;)Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;->a()V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime$3;->a:Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->dismiss()V

    return-void
.end method
