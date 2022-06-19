.class public final enum Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkedin/android/litr/exception/TrackTranscoderException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum CODEC_IN_RELEASED_STATE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum DECODER_CONFIGURATION_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum DECODER_FORMAT_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum DECODER_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum DECODER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum ENCODER_CONFIGURATION_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum ENCODER_FORMAT_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum ENCODER_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum ENCODER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum INTERNAL_CODEC_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum NO_TRACKS_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum RENDERER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

.field public static final enum SOURCE_TRACK_MIME_TYPE_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 48
    new-instance v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v1, "DECODER_FORMAT_NOT_FOUND"

    const/4 v2, 0x0

    const-string v3, "Failed to create decoder codec."

    invoke-direct {v0, v1, v2, v3}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_FORMAT_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 49
    new-instance v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v3, "DECODER_CONFIGURATION_ERROR"

    const/4 v4, 0x1

    const-string v5, "Failed to configure decoder codec."

    invoke-direct {v1, v3, v4, v5}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_CONFIGURATION_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 50
    new-instance v3, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v5, "ENCODER_FORMAT_NOT_FOUND"

    const/4 v6, 0x2

    const-string v7, "Failed to create encoder codec."

    invoke-direct {v3, v5, v6, v7}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_FORMAT_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 51
    new-instance v5, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v7, "ENCODER_CONFIGURATION_ERROR"

    const/4 v8, 0x3

    const-string v9, "Failed to configure encoder codec."

    invoke-direct {v5, v7, v8, v9}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_CONFIGURATION_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 52
    new-instance v7, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v9, "DECODER_NOT_FOUND"

    const/4 v10, 0x4

    const-string v11, "No decoder found."

    invoke-direct {v7, v9, v10, v11}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 53
    new-instance v9, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v11, "ENCODER_NOT_FOUND"

    const/4 v12, 0x5

    const-string v13, "No encoder found."

    invoke-direct {v9, v11, v12, v13}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 54
    new-instance v11, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v13, "CODEC_IN_RELEASED_STATE"

    const/4 v14, 0x6

    const-string v15, "Codecs are in released state."

    invoke-direct {v11, v13, v14, v15}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->CODEC_IN_RELEASED_STATE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 55
    new-instance v13, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "SOURCE_TRACK_MIME_TYPE_NOT_FOUND"

    const/4 v14, 0x7

    const-string v12, "Mime type not found for the source track."

    invoke-direct {v13, v15, v14, v12}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->SOURCE_TRACK_MIME_TYPE_NOT_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 56
    new-instance v12, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "NO_TRACKS_FOUND"

    const/16 v14, 0x8

    const-string v10, "No tracks found."

    invoke-direct {v12, v15, v14, v10}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_TRACKS_FOUND:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 57
    new-instance v10, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "INTERNAL_CODEC_ERROR"

    const/16 v14, 0x9

    const-string v8, "Internal codec error occurred."

    invoke-direct {v10, v15, v14, v8}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->INTERNAL_CODEC_ERROR:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 58
    new-instance v8, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "NO_FRAME_AVAILABLE"

    const/16 v14, 0xa

    const-string v6, "No frame available for specified tag"

    invoke-direct {v8, v15, v14, v6}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->NO_FRAME_AVAILABLE:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 59
    new-instance v6, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "DECODER_NOT_PROVIDED"

    const/16 v14, 0xb

    const-string v4, "Decoder is not provided"

    invoke-direct {v6, v15, v14, v4}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->DECODER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 60
    new-instance v4, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "ENCODER_NOT_PROVIDED"

    const/16 v14, 0xc

    const-string v2, "Encoder is not provided"

    invoke-direct {v4, v15, v14, v2}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->ENCODER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    .line 61
    new-instance v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const-string v15, "RENDERER_NOT_PROVIDED"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "Renderer is not provided"

    invoke-direct {v2, v15, v14, v4}, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->RENDERER_NOT_PROVIDED:Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v2, v4, v14

    .line 47
    sput-object v4, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->$VALUES:[Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->message:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->message:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;
    .locals 1

    .line 47
    const-class v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    return-object p0
.end method

.method public static values()[Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;
    .locals 1

    .line 47
    sget-object v0, Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->$VALUES:[Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    invoke-virtual {v0}, [Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linkedin/android/litr/exception/TrackTranscoderException$a;

    return-object v0
.end method
