.class Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;->a:Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;->a:Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;

    iget-object p1, p1, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->b:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 42
    const-class p1, Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;->a:Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;

    iget-object v1, v1, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "error playing text: %s"

    invoke-static {p1, v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object p1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;->a:Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;

    iget-object p1, p1, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->b:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a()V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
