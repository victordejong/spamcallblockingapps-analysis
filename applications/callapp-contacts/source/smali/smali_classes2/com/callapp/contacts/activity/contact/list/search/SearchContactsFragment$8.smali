.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;ZLjava/lang/String;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 867
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->a:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->r(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a()V

    :cond_1
    return-void

    .line 870
    :cond_2
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->c()Landroidx/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/b/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 871
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 872
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->a(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;Ljava/lang/CharSequence;)V

    return-void

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$8;->c:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->f(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method
