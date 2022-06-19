.class Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/DialogPopup$IDialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickListener(Landroid/app/Activity;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->c(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$2;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->d(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V

    return-void
.end method
