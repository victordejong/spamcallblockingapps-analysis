.class Lcom/callapp/contacts/activity/contact/details/PostCallActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallActivity;->access$100(Lcom/callapp/contacts/activity/contact/details/PostCallActivity;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/model/contact/ContactData;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/PostCallActivity$5;->a:Lcom/callapp/contacts/activity/contact/details/PostCallActivity;

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/AddNoteActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
