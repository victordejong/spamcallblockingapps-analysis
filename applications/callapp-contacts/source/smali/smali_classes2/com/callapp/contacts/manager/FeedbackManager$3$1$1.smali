.class Lcom/callapp/contacts/manager/FeedbackManager$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/FeedbackManager$3$1;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/FeedbackManager$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/FeedbackManager$3$1;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$3$1$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 159
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;

    iget-object v2, p0, Lcom/callapp/contacts/manager/FeedbackManager$3$1$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3$1;

    iget-object v2, v2, Lcom/callapp/contacts/manager/FeedbackManager$3$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3;

    iget-object v2, v2, Lcom/callapp/contacts/manager/FeedbackManager$3;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/manager/FeedbackManager$3$1$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3$1;

    iget-object v3, v3, Lcom/callapp/contacts/manager/FeedbackManager$3$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3;

    iget-object v3, v3, Lcom/callapp/contacts/manager/FeedbackManager$3;->c:Ljava/lang/Integer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/callapp/contacts/manager/FeedbackManager$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x1388

    .line 161
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
