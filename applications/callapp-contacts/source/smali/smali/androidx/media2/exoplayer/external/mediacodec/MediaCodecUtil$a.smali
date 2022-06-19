.class final Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    iput-object p1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    .line 1030
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    .line 1031
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1049
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1052
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;

    .line 1053
    iget-object v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->c:Z

    iget-boolean p1, p1, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->c:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1038
    iget-object v0, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 1039
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->b:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_1

    const/16 v1, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v1, 0x4d5

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1040
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/mediacodec/MediaCodecUtil$a;->c:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v2, 0x4d5

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method
