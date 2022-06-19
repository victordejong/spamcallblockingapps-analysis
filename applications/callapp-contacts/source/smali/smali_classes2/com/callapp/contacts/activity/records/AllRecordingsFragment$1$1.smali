.class Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;Ljava/util/List;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->b(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->c(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->c()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->setData(Ljava/util/List;)V

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->d(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V

    .line 142
    iget-object v0, p0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1$1;->b:Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/records/AllRecordingsFragment$1;->a:Lcom/callapp/contacts/activity/records/AllRecordingsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/records/AllRecordingsFragment;->e(Lcom/callapp/contacts/activity/records/AllRecordingsFragment;)V

    return-void
.end method
