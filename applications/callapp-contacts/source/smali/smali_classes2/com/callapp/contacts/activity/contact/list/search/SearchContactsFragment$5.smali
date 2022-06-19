.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/LocationManager$LocationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->d(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/manager/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/task/Task;->cancel()V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    new-instance v1, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;-><init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5;Landroid/location/Location;)V

    .line 664
    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$5$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    move-result-object p1

    .line 573
    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Lcom/callapp/contacts/manager/task/Task;)Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
