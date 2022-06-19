.class Lcom/allinone/callerid/util/recorder/AudioRecorder$b;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/AudioRecorder;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/util/recorder/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    iget-object v1, v0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->h:Ljava/lang/String;

    iget-object v2, v0, Lcom/allinone/callerid/util/recorder/AudioRecorder;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->b(Lcom/allinone/callerid/util/recorder/AudioRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v1}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->c(Lcom/allinone/callerid/util/recorder/AudioRecorder;)I

    move-result v1

    iget-object v2, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v2}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->c(Lcom/allinone/callerid/util/recorder/AudioRecorder;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v3}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->d(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v3

    mul-int v2, v2, v3

    iget-object v3, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v3}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->d(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/allinone/callerid/util/recorder/a;->b(III)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    iget-object v1, v1, Lcom/allinone/callerid/util/recorder/AudioRecorder;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/recorder/a;->c(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->e(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/a;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    iget-object v1, v1, Lcom/allinone/callerid/util/recorder/AudioRecorder;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/recorder/a;->a(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->f(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/AudioRecorder$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$b;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->g(Lcom/allinone/callerid/util/recorder/AudioRecorder;)Lcom/allinone/callerid/util/recorder/AudioRecorder$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder$c;->finish()V

    :cond_0
    return-void
.end method
