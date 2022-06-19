.class Lcom/callapp/contacts/activity/base/BaseListFragment$3;
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
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/activity/base/BaseListFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseListFragment;Landroid/app/Activity;Ljava/util/List;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$3;->c:Lcom/callapp/contacts/activity/base/BaseListFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$3;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$3;->c:Lcom/callapp/contacts/activity/base/BaseListFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$3;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseListFragment$3;->c:Lcom/callapp/contacts/activity/base/BaseListFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseListFragment;->a(Lcom/callapp/contacts/activity/base/BaseListFragment;)Z

    :cond_0
    return-void
.end method
