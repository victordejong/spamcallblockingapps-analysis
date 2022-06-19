.class Lcom/allinone/callerid/util/recorder/AudioRecorder$a;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/recorder/AudioRecorder;->n()V
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
    iput-object p1, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$a;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/recorder/AudioRecorder$a;->d:Lcom/allinone/callerid/util/recorder/AudioRecorder;

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/AudioRecorder;->a(Lcom/allinone/callerid/util/recorder/AudioRecorder;)V

    return-void
.end method
