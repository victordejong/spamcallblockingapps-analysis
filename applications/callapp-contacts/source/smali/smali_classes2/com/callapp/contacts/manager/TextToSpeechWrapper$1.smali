.class public Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/TextToSpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/manager/TextToSpeechWrapper;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/TextToSpeechWrapper;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->b:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    iput-object p2, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 5

    .line 23
    iget-object v0, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->b:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    invoke-static {v0}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a(Lcom/callapp/contacts/manager/TextToSpeechWrapper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 29
    const-class p1, Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    const-string v0, "init failed"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->b:Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a()V

    return-void

    .line 35
    :cond_1
    new-instance p1, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1$1;-><init>(Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;)V

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 54
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "streamType"

    const-string v3, "4"

    .line 59
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "utteranceId"

    const-string v3, "utterance_id"

    .line 63
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v2, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    return-void
.end method
