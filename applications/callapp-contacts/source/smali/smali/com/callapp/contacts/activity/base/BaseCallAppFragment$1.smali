.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseCallAppFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$1;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$c;->onChanged()V

    .line 71
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$1;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->toggleEmptyViewIfNeeded()V

    return-void
.end method
