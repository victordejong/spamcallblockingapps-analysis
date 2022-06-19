.class public Lcom/callapp/contacts/manager/TextToSpeechWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/TextToSpeechWrapper;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 81
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method
