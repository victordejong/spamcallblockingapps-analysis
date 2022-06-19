.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$6;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$6;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->j(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$6;->a:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->i(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->setData(Ljava/lang/Object;)V

    return-void
.end method
