.class public final Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2",
        "Lcom/callapp/contacts/manager/task/Task;",
        "doTask",
        "",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-static {v2, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->c(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-static {v2, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->d(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher$search$2;->a:Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;

    invoke-static {v2, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->e(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 60
    :goto_1
    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;->a(Lcom/callapp/contacts/activity/contact/list/search/ContactSearcher;Ljava/util/List;)V

    return-void
.end method
