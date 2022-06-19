.class Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;Ljava/lang/Object;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;->b:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;->b:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;->b:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->b()V

    .line 70
    iget-object v0, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;->b:Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment$2;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/fragments/BackgroundWorkerFragment;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
