.class public Lcom/linkedin/android/litr/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IILcom/linkedin/android/litr/d/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/b;Lcom/linkedin/android/litr/d/e;Landroid/media/MediaFormat;)Lcom/linkedin/android/litr/g/c;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/linkedin/android/litr/exception/TrackTranscoderException;
        }
    .end annotation

    move v2, p0

    move v4, p1

    move-object v1, p2

    move-object/from16 v8, p5

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    if-nez v5, :cond_0

    .line 49
    new-instance v0, Lcom/linkedin/android/litr/g/b;

    invoke-direct {v0, p2, p0, v3, p1}, Lcom/linkedin/android/litr/g/b;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;I)V

    return-object v0

    :cond_0
    const-string v0, "mime"

    .line 52
    invoke-virtual {v5, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    const-string v7, "video"

    .line 57
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "audio"

    if-nez v9, :cond_1

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    if-eqz p3, :cond_8

    if-eqz v8, :cond_7

    .line 71
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p4, :cond_3

    .line 78
    new-instance v9, Lcom/linkedin/android/litr/g/e;

    move-object v0, v9

    move-object v1, p2

    move v2, p0

    move-object/from16 v3, p6

    move v4, p1

    move-object/from16 v5, p7

    move-object v6, p4

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/linkedin/android/litr/g/e;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V

    return-object v9

    .line 73
    :cond_3
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->RENDERER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    throw v0

    .line 86
    :cond_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez p4, :cond_5

    .line 87
    new-instance v0, Lcom/linkedin/android/litr/e/c;

    invoke-direct {v0, v8}, Lcom/linkedin/android/litr/e/c;-><init>(Lcom/linkedin/android/litr/b/b;)V

    move-object v6, v0

    goto :goto_0

    :cond_5
    move-object v6, p4

    .line 91
    :goto_0
    new-instance v9, Lcom/linkedin/android/litr/g/a;

    move-object v0, v9

    move-object v1, p2

    move v2, p0

    move-object/from16 v3, p6

    move v4, p1

    move-object/from16 v5, p7

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/linkedin/android/litr/g/a;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;ILandroid/media/MediaFormat;Lcom/linkedin/android/litr/e/d;Lcom/linkedin/android/litr/b/a;Lcom/linkedin/android/litr/b/b;)V

    return-object v9

    .line 100
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported track mime type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", will use passthrough transcoder"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Lcom/linkedin/android/litr/g/b;

    invoke-direct {v0, p2, p0, v3, p1}, Lcom/linkedin/android/litr/g/b;-><init>(Lcom/linkedin/android/litr/d/d;ILcom/linkedin/android/litr/d/e;I)V

    return-object v0

    .line 64
    :cond_7
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    throw v0

    .line 59
    :cond_8
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    throw v0

    .line 54
    :cond_9
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;

    sget-object v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->SOURCE_TRACK_MIME_TYPE_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    throw v0
.end method
