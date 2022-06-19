.class Lcom/callapp/contacts/manager/FeedbackManager$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/FeedbackManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

.field final synthetic b:Lcom/callapp/contacts/manager/FeedbackManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/FeedbackManager;Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/callapp/contacts/manager/FeedbackManager$9;->b:Lcom/callapp/contacts/manager/FeedbackManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/FeedbackManager$9;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "FeedbackManager"

    .line 339
    :try_start_0
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/callapp/contacts/manager/FeedbackManager$9;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;

    invoke-virtual {v1}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImage;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 342
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
