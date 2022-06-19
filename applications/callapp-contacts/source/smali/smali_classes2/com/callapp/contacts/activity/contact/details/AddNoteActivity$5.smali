.class Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


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

    .line 203
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRowClicked(I)V
    .locals 1

    const v0, 0x7f12028d

    if-eq p1, v0, :cond_1

    const v0, 0x7f120633

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->g(Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;)V

    :goto_0
    return-void
.end method
