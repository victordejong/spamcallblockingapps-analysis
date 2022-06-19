.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a(Lcom/callapp/common/model/json/JSONClientValidationResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$15;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->finish()V

    return-void
.end method
