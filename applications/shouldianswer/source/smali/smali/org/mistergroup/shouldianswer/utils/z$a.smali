.class final Lorg/mistergroup/shouldianswer/utils/z$a;
.super Ljava/lang/Object;
.source "TTSHelper.kt"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/utils/z;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/z$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 5

    .line 21
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/z;->a:Lorg/mistergroup/shouldianswer/utils/z;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/z;->a(Lorg/mistergroup/shouldianswer/utils/z;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 23
    :try_start_0
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/z;->a:Lorg/mistergroup/shouldianswer/utils/z;

    invoke-static {p1}, Lorg/mistergroup/shouldianswer/utils/z;->a(Lorg/mistergroup/shouldianswer/utils/z;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/z$a$1;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/z$a$1;-><init>()V

    check-cast v0, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 33
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "TTSHelper.speak"

    invoke-static {p1, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    const-string v3, "utteranceId"

    const-string v4, "mySpeachId"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/z;->a:Lorg/mistergroup/shouldianswer/utils/z;

    invoke-static {v0}, Lorg/mistergroup/shouldianswer/utils/z;->a(Lorg/mistergroup/shouldianswer/utils/z;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/utils/z$a;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, p1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 38
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_2
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "TTSHelper initialization error"

    invoke-static {p1, v0, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->c(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
