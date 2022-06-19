.class Lcom/callapp/contacts/manager/FeedbackManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Integer;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/callapp/contacts/manager/FeedbackManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/FeedbackManager;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->b:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 191
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;

    iget-object v2, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->c:Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/callapp/contacts/manager/FeedbackManager$1;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/FeedbackManager$4;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1388

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xbb8

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
