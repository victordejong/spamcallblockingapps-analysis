.class public Lcom/linkedin/android/litr/exception/TrackTranscoderException;
.super Lcom/linkedin/android/litr/exception/MediaTransformationException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "com.linkedin.android.litr.exception.TrackTranscoderException"


# instance fields
.field private final c:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field private final d:Landroid/media/MediaFormat;

.field private final e:Landroid/media/MediaCodec;

.field private final f:Landroid/media/MediaCodecList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;Ljava/lang/Throwable;)V
    .locals 0

    .line 90
    invoke-direct {p0, p5}, Lcom/linkedin/android/litr/exception/MediaTransformationException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    iput-object p1, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->c:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 92
    iput-object p2, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->d:Landroid/media/MediaFormat;

    .line 93
    iput-object p3, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->e:Landroid/media/MediaCodec;

    .line 94
    iput-object p4, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->f:Landroid/media/MediaCodecList;

    return-void
.end method

.method public constructor <init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;-><init>(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;Landroid/media/MediaFormat;Landroid/media/MediaCodec;Landroid/media/MediaCodecList;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Landroid/media/MediaCodec;)Ljava/lang/String;
    .locals 1

    .line 149
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->a(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 151
    :catch_0
    sget-object p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->b:Ljava/lang/String;

    const-string v0, "Failed to retrieve media codec info."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method private static a(Landroid/media/MediaCodecInfo;)Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaCodecInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/media/MediaCodecList;)Ljava/lang/String;
    .locals 5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    const/16 v4, 0xa

    .line 134
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->a(Landroid/media/MediaCodecInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    sget-object p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->b:Ljava/lang/String;

    const-string v1, "Failed to retrieve media codec info below API level 21."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 141
    sget-object v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->b:Ljava/lang/String;

    const-string v2, "Failed to retrieve media codec info."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->c:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-static {v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->access$000(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/linkedin/android/litr/exception/MediaTransformationException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->d:Landroid/media/MediaFormat;

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Media format: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->d:Landroid/media/MediaFormat;

    invoke-virtual {v0}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->e:Landroid/media/MediaCodec;

    if-eqz v2, :cond_1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Selected media codec info: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->e:Landroid/media/MediaCodec;

    invoke-static {v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->a(Landroid/media/MediaCodec;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->f:Landroid/media/MediaCodecList;

    if-eqz v1, :cond_2

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Available media codec info list (Name, IsEncoder, Supported Types): "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->f:Landroid/media/MediaCodecList;

    invoke-static {v0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->a(Landroid/media/MediaCodecList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Diagnostic info: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/linkedin/android/litr/exception/TrackTranscoderException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1167
    instance-of v2, v0, Landroid/media/MediaCodec$CodecException;

    if-nez v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :cond_3
    check-cast v0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method
