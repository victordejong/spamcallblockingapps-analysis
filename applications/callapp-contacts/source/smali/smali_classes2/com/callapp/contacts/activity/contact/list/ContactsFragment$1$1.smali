.class Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsFragment$1;->a:Lcom/callapp/contacts/activity/contact/list/ContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsFragment;->a(Lcom/callapp/contacts/activity/contact/list/ContactsFragment;)Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;->d(I)V

    return-void
.end method
