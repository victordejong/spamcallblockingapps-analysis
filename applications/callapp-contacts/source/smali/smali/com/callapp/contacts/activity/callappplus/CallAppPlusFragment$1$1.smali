.class Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;Ljava/util/List;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->c(Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->setData(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1$1;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment$1;->a:Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/callappplus/CallAppPlusFragment;->toggleEmptyViewIfNeeded()V

    return-void
.end method
