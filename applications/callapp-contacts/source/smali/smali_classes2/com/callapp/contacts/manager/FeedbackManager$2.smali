.class Lcom/callapp/contacts/manager/FeedbackManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/Integer;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/callapp/contacts/manager/FeedbackManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/FeedbackManager;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$2;->c:Lcom/callapp/contacts/manager/FeedbackManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/FeedbackManager$2;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/callapp/contacts/manager/FeedbackManager$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 122
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;

    iget-object v4, p0, Lcom/callapp/contacts/manager/FeedbackManager$2;->a:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/callapp/contacts/manager/FeedbackManager$2;->b:Landroid/view/View;

    const-string v2, ""

    const/16 v3, 0xbb8

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/manager/FeedbackManager$ShowToast;-><init>(Ljava/lang/String;ILjava/lang/Integer;Landroid/view/View;Lcom/callapp/contacts/manager/FeedbackManager$1;)V

    invoke-virtual {v0, v7}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xbb8

    .line 124
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
