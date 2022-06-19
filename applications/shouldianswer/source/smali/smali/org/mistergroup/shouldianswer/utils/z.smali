.class public final Lorg/mistergroup/shouldianswer/utils/z;
.super Ljava/lang/Object;
.source "TTSHelper.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/utils/z;

.field private static b:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/mistergroup/shouldianswer/utils/z;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/utils/z;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/utils/z;->a:Lorg/mistergroup/shouldianswer/utils/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/utils/z;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 15
    sget-object p0, Lorg/mistergroup/shouldianswer/utils/z;->b:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 19
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "TTSHelper.initializing"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 20
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    new-instance v4, Lorg/mistergroup/shouldianswer/utils/z$a;

    invoke-direct {v4, p1}, Lorg/mistergroup/shouldianswer/utils/z$a;-><init>(Ljava/lang/String;)V

    check-cast v4, Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v2, Lorg/mistergroup/shouldianswer/utils/z;->b:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v2, p1, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
