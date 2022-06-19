.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2$1;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2$1;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->j(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V

    .line 305
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2$1;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;

    iget-object v2, v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$2;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->k(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120721

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    .line 306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 305
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
