.class Lcom/callapp/contacts/manager/FeedbackManager$3$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/FeedbackManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/FeedbackManager$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/FeedbackManager$3;JJ)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$3$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$3$1;->a:Lcom/callapp/contacts/manager/FeedbackManager$3;

    iget-object p1, p1, Lcom/callapp/contacts/manager/FeedbackManager$3;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Lcom/callapp/contacts/manager/FeedbackManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/manager/FeedbackManager$3$1$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/manager/FeedbackManager$3$1$1;-><init>(Lcom/callapp/contacts/manager/FeedbackManager$3$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
