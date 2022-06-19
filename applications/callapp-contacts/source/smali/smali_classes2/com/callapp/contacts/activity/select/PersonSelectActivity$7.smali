.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 515
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    new-instance v3, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
