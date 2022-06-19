.class Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;Ljava/util/List;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iput-object p2, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->b(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    new-instance v1, Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iget-object v3, v3, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->c(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Lcom/callapp/contacts/activity/base/ScrollRecyclerStateTracker;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/base/ScrollEvents;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->a(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;)Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->d(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iget-object v1, v1, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->b(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->b:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;

    iget-object v0, v0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3;->a:Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;->b(Lcom/callapp/contacts/activity/birthday/BirthdaysActivity;)Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/birthday/BirthdaysActivity$3$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/birthday/BirthdaysAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
