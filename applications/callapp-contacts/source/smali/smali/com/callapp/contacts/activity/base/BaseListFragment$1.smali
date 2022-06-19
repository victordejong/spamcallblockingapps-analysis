.class Lcom/callapp/contacts/activity/base/BaseListFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$1;->b:Lcom/callapp/contacts/activity/base/BaseListFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$1;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$1;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    return-void
.end method
