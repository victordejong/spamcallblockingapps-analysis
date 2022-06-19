.class Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->onUnsureSocialsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;ILjava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    iget v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->a:I

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$700(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;ILjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->c:Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;->access$800(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
