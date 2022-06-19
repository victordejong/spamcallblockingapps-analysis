.class Lcom/callapp/contacts/recorder/CallRecorderManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

.field final synthetic b:Lcom/callapp/contacts/recorder/CallRecorderManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/CallRecorderManager;Lcom/callapp/contacts/model/objectbox/CallRecorder;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->b:Lcom/callapp/contacts/recorder/CallRecorderManager;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-static {v0}, Lcom/callapp/contacts/recorder/CallRecorderManager;->d(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 476
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->a:Lcom/callapp/contacts/model/objectbox/CallRecorder;

    iget-object v2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->b:Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-static {v2}, Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Lcom/callapp/contacts/recorder/CallRecorderManager;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$3;->b:Lcom/callapp/contacts/recorder/CallRecorderManager;

    invoke-static {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->b(Lcom/callapp/contacts/recorder/CallRecorderManager;)Lcom/callapp/contacts/model/objectbox/CallRecorder;

    :cond_0
    if-eqz v0, :cond_1

    .line 483
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/16 v1, 0x50

    const-string v2, "Deleted from db + files"

    .line 1206
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
