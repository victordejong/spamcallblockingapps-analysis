.class Lcom/callapp/contacts/activity/base/BaseListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$4;->a:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$4;->a:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->getListAdapter()Lcom/callapp/contacts/activity/base/BaseArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
