.class Lcom/callapp/contacts/activity/base/BaseCallAppFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->hideLoadingProgress()V
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

    .line 449
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$9;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment$9;->a:Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
