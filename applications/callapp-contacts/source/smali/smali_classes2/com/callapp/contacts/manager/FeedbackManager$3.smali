.class Lcom/callapp/contacts/manager/FeedbackManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Integer;

.field final synthetic d:Lcom/callapp/contacts/manager/FeedbackManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/FeedbackManager;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$3;->d:Lcom/callapp/contacts/manager/FeedbackManager;

    iput p2, p0, Lcom/callapp/contacts/manager/FeedbackManager$3;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/manager/FeedbackManager$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/callapp/contacts/manager/FeedbackManager$3;->c:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 153
    new-instance v6, Lcom/callapp/contacts/manager/FeedbackManager$3$1;

    iget v0, p0, Lcom/callapp/contacts/manager/FeedbackManager$3;->a:I

    mul-int/lit16 v0, v0, 0xbb8

    int-to-long v2, v0

    const-wide/16 v4, 0xbb8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/FeedbackManager$3$1;-><init>(Lcom/callapp/contacts/manager/FeedbackManager$3;JJ)V

    .line 171
    invoke-virtual {v6}, Lcom/callapp/contacts/manager/FeedbackManager$3$1;->start()Landroid/os/CountDownTimer;

    return-void
.end method
