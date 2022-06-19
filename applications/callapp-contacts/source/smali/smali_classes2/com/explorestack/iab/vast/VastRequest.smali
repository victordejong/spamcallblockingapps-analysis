.class public Lcom/explorestack/iab/vast/VastRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/VastRequest$Builder;,
        Lcom/explorestack/iab/vast/VastRequest$a;
    }
.end annotation


# static fields
.field private static final CACHE_DIRECTORY:Ljava/lang/String; = "/vast_rtb_cache/"

.field private static final CACHE_SIZE:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/explorestack/iab/vast/VastRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMS_ERROR_CODE:Ljava/lang/String; = "params_error_code"

.field private static final TAG:Ljava/lang/String; = "VastRequest"

.field private static final fireUrlProcessCallback:Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;


# instance fields
.field private autoClose:Z

.field private companionCloseTime:F

.field private extras:Landroid/os/Bundle;

.field private fileUri:Landroid/net/Uri;

.field private forceUseNativeCloseTime:Z

.field private final hash:Ljava/lang/String;

.field private maxDurationMillis:I

.field private mediaFilePicker:Lcom/explorestack/iab/vast/processor/VastMediaPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/iab/vast/processor/VastMediaPicker<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation
.end field

.field private preCache:Z

.field private preloadCompanion:Z

.field private r1:Z

.field private r2:Z

.field private requestedOrientation:I

.field private useScreenSizeForCompanionOrientation:Z

.field private useScreenSizeForVideoOrientation:Z

.field private vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

.field private videoCloseTime:F

.field private videoType:Lcom/explorestack/iab/vast/VideoType;

.field private xmlUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 560
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$5;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/VastRequest$5;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/VastRequest;->fireUrlProcessCallback:Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;

    .line 659
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$6;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/VastRequest$6;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/VastRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    const/high16 v0, -0x40800000    # -1.0f

    .line 64
    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->requestedOrientation:I

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    .line 72
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    .line 73
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    .line 76
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->preloadCompanion:Z

    .line 78
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r1:Z

    .line 79
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r2:Z

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->hash:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    const/high16 v0, -0x40800000    # -1.0f

    .line 64
    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->requestedOrientation:I

    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    .line 72
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    .line 73
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    .line 76
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->preloadCompanion:Z

    .line 78
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r1:Z

    .line 79
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r2:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->hash:Ljava/lang/String;

    .line 87
    const-class v2, Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    .line 88
    const-class v2, Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/processor/VastAd;

    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->xmlUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/explorestack/iab/vast/VideoType;

    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    .line 91
    const-class v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->extras:Landroid/os/Bundle;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/VastRequest;->companionCloseTime:F

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->forceUseNativeCloseTime:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/VastRequest;->maxDurationMillis:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/VastRequest;->requestedOrientation:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->autoClose:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->preloadCompanion:Z

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->r1:Z

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r2:Z

    .line 104
    iget-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz p1, :cond_8

    .line 105
    invoke-virtual {p1, p0}, Lcom/explorestack/iab/vast/processor/VastAd;->setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->preloadCompanion:Z

    return p1
.end method

.method static synthetic access$102(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->xmlUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastMediaPicker;)Lcom/explorestack/iab/vast/processor/VastMediaPicker;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->mediaFilePicker:Lcom/explorestack/iab/vast/processor/VastMediaPicker;

    return-object p1
.end method

.method static synthetic access$202(Lcom/explorestack/iab/vast/VastRequest;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    return p1
.end method

.method static synthetic access$302(Lcom/explorestack/iab/vast/VastRequest;F)F
    .locals 0

    .line 41
    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->companionCloseTime:F

    return p1
.end method

.method static synthetic access$402(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->forceUseNativeCloseTime:Z

    return p1
.end method

.method static synthetic access$502(Lcom/explorestack/iab/vast/VastRequest;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->maxDurationMillis:I

    return p1
.end method

.method static synthetic access$602(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    return p1
.end method

.method static synthetic access$702(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->autoClose:Z

    return p1
.end method

.method static synthetic access$802(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    return p1
.end method

.method static synthetic access$902(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    return p1
.end method

.method private cache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->getCacheDirName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 359
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 364
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int p1, p1, 0xe6

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    const-string v4, ""

    .line 368
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 369
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    return-void

    .line 373
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 376
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 377
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 378
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    int-to-long v5, p2

    const-wide/16 v7, 0x0

    const/16 p2, 0x400

    new-array p2, p2, [B

    .line 382
    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    .line 383
    invoke-virtual {v4, p2, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    cmp-long p2, v5, v7

    if-nez p2, :cond_3

    .line 389
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 391
    :cond_3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    return-void

    .line 357
    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "No dir for caching file"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearCache(Landroid/content/Context;)V
    .locals 6

    .line 412
    :try_start_0
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->getCacheDirName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 418
    array-length v0, p1

    const/4 v1, 0x5

    if-le v0, v1, :cond_4

    .line 419
    array-length v0, p1

    new-array v0, v0, [Lcom/explorestack/iab/vast/VastRequest$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 420
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 421
    new-instance v4, Lcom/explorestack/iab/vast/VastRequest$a;

    aget-object v5, p1, v3

    invoke-direct {v4, p0, v5}, Lcom/explorestack/iab/vast/VastRequest$a;-><init>(Lcom/explorestack/iab/vast/VastRequest;Ljava/io/File;)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 426
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 427
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/explorestack/iab/vast/VastRequest$a;->b:Ljava/io/File;

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 430
    :cond_2
    :goto_2
    array-length v0, p1

    if-ge v1, v0, :cond_4

    .line 431
    aget-object v0, p1, v1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 433
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string v0, "VastRequest"

    .line 439
    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private getCacheDirName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/vast_rtb_cache/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 2

    .line 589
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$Builder;

    new-instance v1, Lcom/explorestack/iab/vast/VastRequest;

    invoke-direct {v1}, Lcom/explorestack/iab/vast/VastRequest;-><init>()V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/vast/VastRequest$Builder;-><init>(Lcom/explorestack/iab/vast/VastRequest;)V

    return-object v0
.end method

.method private sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
    .locals 2

    .line 495
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendError, code: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastRequest"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {p2}, Lcom/explorestack/iab/vast/VastError;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0, p2}, Lcom/explorestack/iab/vast/VastRequest;->sendVastModelError(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 500
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/explorestack/iab/vast/VastRequest$4;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastErrorListener;Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private sendReady(Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 2

    const-string v0, "VastRequest"

    const-string v1, "sendReady"

    .line 473
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 475
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/iab/vast/VastRequest$3;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastRequestListener;)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendVastModelError(I)V
    .locals 1

    .line 486
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "VastRequest"

    .line 488
    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->extras:Landroid/os/Bundle;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkFile()Z
    .locals 3

    const/4 v0, 0x0

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    .line 521
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;)V
    .locals 2

    const-string v0, "VastRequest"

    const-string v1, "play"

    .line 446
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v1, :cond_1

    .line 448
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/explorestack/iab/vast/VastRequest;->requestedOrientation:I

    .line 451
    new-instance p2, Lcom/explorestack/iab/vast/activity/VastActivity$a;

    invoke-direct {p2}, Lcom/explorestack/iab/vast/activity/VastActivity$a;-><init>()V

    .line 3066
    iput-object p0, p2, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a:Lcom/explorestack/iab/vast/VastRequest;

    .line 3071
    iput-object p3, p2, Lcom/explorestack/iab/vast/activity/VastActivity$a;->b:Lcom/explorestack/iab/vast/VastActivityListener;

    .line 454
    invoke-virtual {p2, p1}, Lcom/explorestack/iab/vast/activity/VastActivity$a;->a(Landroid/content/Context;)Z

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 456
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void

    :cond_1
    const-string p1, "vastAd is null; nothing to play"

    .line 459
    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public display(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_0

    .line 465
    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    const/4 v0, 0x0

    .line 3229
    invoke-virtual {p1, p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Z)Z

    return-void

    :cond_0
    const-string p1, "VastRequest"

    const-string v0, "vastAd is null; nothing to play"

    .line 468
    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/VastRequest;->fireUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public fireUrls(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 546
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 547
    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 551
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 554
    sget-object p2, Lcom/explorestack/iab/vast/VastRequest;->fireUrlProcessCallback:Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;

    invoke-static {p1, v0, p2}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$a;)V

    return-void

    :cond_2
    const-string p1, "VastRequest"

    const-string p2, "Url list is null"

    .line 556
    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCompanionCloseTime()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->companionCloseTime:F

    return v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDurationMillis()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->maxDurationMillis:I

    return v0
.end method

.method public getPreferredVideoOrientation()I
    .locals 3

    .line 570
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->shouldUseScreenSizeForVideoOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v0

    const-string v1, "width"

    .line 4051
    invoke-virtual {v0, v1}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result v1

    const-string v2, "height"

    .line 4055
    invoke-virtual {v0, v2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->d(Ljava/lang/String;)I

    move-result v0

    .line 575
    invoke-static {v1, v0}, Lcom/explorestack/iab/utils/Utils;->a(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->requestedOrientation:I

    return v0
.end method

.method public getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    return-object v0
.end method

.method public getVideoCloseTime()F
    .locals 1

    .line 157
    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    return v0
.end method

.method public getVideoType()Lcom/explorestack/iab/vast/VideoType;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    return-object v0
.end method

.method public isAutoClose()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->autoClose:Z

    return v0
.end method

.method public isForceUseNativeCloseTime()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->forceUseNativeCloseTime:Z

    return v0
.end method

.method public isPreCache()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    return v0
.end method

.method public isR1()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r1:Z

    return v0
.end method

.method public isR2()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r2:Z

    return v0
.end method

.method public loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 2

    .line 242
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadVideoWithData\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastRequest"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    .line 244
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :try_start_0
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest$2;-><init>(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    .line 251
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest$2;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p2, 0x12d

    .line 253
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void
.end method

.method public loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 7

    const-string v0, "VastRequest"

    .line 263
    new-instance v1, Lcom/explorestack/iab/vast/processor/a;

    .line 264
    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->mediaFilePicker:Lcom/explorestack/iab/vast/processor/VastMediaPicker;

    if-nez v2, :cond_0

    new-instance v2, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;

    invoke-direct {v2, p1}, Lcom/explorestack/iab/vast/processor/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {v1, p0, v2}, Lcom/explorestack/iab/vast/processor/a;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastMediaPicker;)V

    .line 265
    invoke-virtual {v1, p2}, Lcom/explorestack/iab/vast/processor/a;->a(Ljava/lang/String;)Lcom/explorestack/iab/vast/processor/b;

    move-result-object p2

    .line 266
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/b;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1035
    iget-object p2, p2, Lcom/explorestack/iab/vast/processor/b;->b:Lcom/explorestack/iab/vast/processor/VastAd;

    .line 267
    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    .line 268
    invoke-virtual {p2, p0}, Lcom/explorestack/iab/vast/processor/VastAd;->setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V

    .line 269
    iget-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/d;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_5

    .line 271
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->l()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 273
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 274
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    .line 275
    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    goto :goto_0

    .line 277
    :cond_1
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    .line 278
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    .line 281
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->a()Lcom/explorestack/iab/vast/tags/l;

    move-result-object v2

    .line 1119
    iget v2, v2, Lcom/explorestack/iab/vast/tags/l;->f:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 282
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->a()Lcom/explorestack/iab/vast/tags/l;

    move-result-object v2

    .line 2119
    iget v2, v2, Lcom/explorestack/iab/vast/tags/l;->f:F

    .line 282
    iput v2, p0, Lcom/explorestack/iab/vast/VastRequest;->companionCloseTime:F

    .line 284
    :cond_3
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->m()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 285
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->m()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    .line 287
    :cond_4
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->o()Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/iab/vast/VastRequest;->r1:Z

    .line 288
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->p()Z

    move-result p2

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->r2:Z

    .line 290
    :cond_5
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    if-eqz p2, :cond_c

    const/16 p2, 0x12d

    .line 292
    :try_start_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/explorestack/iab/vast/VastRequest;->cache(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    if-eqz v2, :cond_b

    .line 294
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    .line 295
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    .line 299
    :cond_6
    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    .line 300
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v2, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x193

    if-eqz v1, :cond_a

    .line 304
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 305
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 306
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 303
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 307
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_9

    .line 309
    :try_start_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 311
    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v3, 0x9

    .line 313
    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 315
    iget v1, p0, Lcom/explorestack/iab/vast/VastRequest;->maxDurationMillis:I

    if-eqz v1, :cond_8

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-gtz v1, :cond_7

    goto :goto_1

    :cond_7
    const/16 v1, 0xca

    .line 318
    invoke-direct {p0, p1, v1, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto :goto_2

    .line 316
    :cond_8
    :goto_1
    invoke-direct {p0, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendReady(Lcom/explorestack/iab/vast/VastRequestListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 321
    :try_start_2
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    invoke-direct {p0, p1, v2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto :goto_2

    :cond_9
    const-string v1, "empty thumbnail"

    .line 325
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p1, v2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto :goto_2

    :cond_a
    const-string v1, "video file not supported"

    .line 329
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-direct {p0, p1, v2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    .line 332
    :goto_2
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->clearCache(Landroid/content/Context;)V

    return-void

    :cond_b
    :goto_3
    const-string v1, "fileUri is null"

    .line 296
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string v1, "exception when to cache file"

    .line 335
    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void

    .line 339
    :cond_c
    invoke-direct {p0, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendReady(Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void

    .line 3027
    :cond_d
    iget p2, p2, Lcom/explorestack/iab/vast/processor/b;->c:I

    .line 342
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void
.end method

.method public loadVideoWithUrl(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 2

    .line 199
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadVideoWithUrl "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastRequest"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    .line 201
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/explorestack/iab/vast/VastRequest$1;-><init>(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V

    .line 230
    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/16 p2, 0x12d

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->sendError(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void
.end method

.method public sendError(I)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params_error_code"

    .line 583
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    iget-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/processor/VastAd;->getErrorUrlList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/VastRequest;->fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public shouldPreloadCompanion()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->preloadCompanion:Z

    return v0
.end method

.method public shouldUseScreenSizeForCompanionOrientation()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    return v0
.end method

.method public shouldUseScreenSizeForVideoOrientation()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->fileUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->vastAd:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->xmlUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->videoType:Lcom/explorestack/iab/vast/VideoType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 121
    iget-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 122
    iget p2, p0, Lcom/explorestack/iab/vast/VastRequest;->videoCloseTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 123
    iget p2, p0, Lcom/explorestack/iab/vast/VastRequest;->companionCloseTime:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 124
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->forceUseNativeCloseTime:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 125
    iget p2, p0, Lcom/explorestack/iab/vast/VastRequest;->maxDurationMillis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Lcom/explorestack/iab/vast/VastRequest;->requestedOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->preCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->autoClose:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForVideoOrientation:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->useScreenSizeForCompanionOrientation:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->preloadCompanion:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 132
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->r1:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 133
    iget-boolean p2, p0, Lcom/explorestack/iab/vast/VastRequest;->r2:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
