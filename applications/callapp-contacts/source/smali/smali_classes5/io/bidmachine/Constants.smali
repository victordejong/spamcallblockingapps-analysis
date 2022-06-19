.class public Lio/bidmachine/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMAGE_MIME_TYPES:[Ljava/lang/String;

.field public static final VIDEO_LINEARITY:I = 0x1

.field public static final VIDEO_MAXBITR:I = 0x1000

.field public static final VIDEO_MAXDUR:I = 0x1e

.field public static final VIDEO_MIME_TYPES:[Ljava/lang/String;

.field public static final VIDEO_MINBITR:I = 0x38

.field public static final VIDEO_MINDUR:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "video/mp4"

    const-string v1, "video/3gpp"

    .line 10
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/Constants;->VIDEO_MIME_TYPES:[Ljava/lang/String;

    const-string v0, "image/jpeg"

    const-string v1, "image/jpg"

    const-string v2, "image/gif"

    const-string v3, "image/png"

    .line 11
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/Constants;->IMAGE_MIME_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
