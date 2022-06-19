.class Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 78
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$TextWatcherImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->b(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$1;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->b(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
