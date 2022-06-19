.class public Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;
.super Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "FrameSequenceAnimationOverlayFilter"


# instance fields
.field private final b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

.field private c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;Landroid/graphics/RectF;)V
    .locals 0

    .line 33
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;-><init>(Landroid/graphics/RectF;)V

    .line 34
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;Lcom/linkedin/android/litr/c/c;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;-><init>(Lcom/linkedin/android/litr/c/c;)V

    .line 44
    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 49
    invoke-super {p0}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    .line 55
    :goto_0
    iget-object v5, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    invoke-interface {v5}, Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;->getFrameCount()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 56
    iget-object v5, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    invoke-interface {v5}, Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;->a()V

    .line 57
    iget-object v5, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    invoke-interface {v5}, Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_0

    .line 59
    sget-object v5, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error loading GIF frame "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    :cond_0
    invoke-static {v5}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->a(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 63
    new-instance v6, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    iget-object v7, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    invoke-interface {v7}, Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;->getNextFrameDurationNs()J

    move-result-wide v7

    invoke-direct {v6, v2, v7, v8, v0}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;-><init>(IJLcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$1;)V

    if-nez v1, :cond_1

    move-object v3, v6

    :cond_1
    if-eqz v4, :cond_2

    .line 68
    invoke-static {v4, v6}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    .line 71
    :cond_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v6

    move-object v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 74
    invoke-static {v2, v3}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    :cond_4
    if-eqz v3, :cond_5

    .line 77
    iput-object v3, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    .line 78
    invoke-static {v3}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->d:J

    :cond_5
    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-wide v1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->d:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 89
    invoke-static {v0}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->b(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    .line 90
    iget-wide v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->d:J

    invoke-static {p1}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->a(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->d:J

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    invoke-static {p1}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->c(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->a(I)V

    return-void
.end method

.method public final bridge synthetic a([FI)V
    .locals 0

    .line 17
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->a([FI)V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 98
    invoke-super {p0}, Lcom/callapp/contacts/util/video/videoFilters/BaseOverlayGlFilter;->b()V

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->b:Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;

    invoke-interface {v0}, Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;->getFrameCount()I

    move-result v0

    .line 101
    new-array v1, v0, [I

    .line 102
    iget-object v2, p0, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter;->c:Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 104
    invoke-static {v2}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->c(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)I

    move-result v5

    aput v5, v1, v4

    .line 105
    invoke-static {v2}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->d(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)I

    .line 106
    invoke-static {v2}, Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;->b(Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;)Lcom/callapp/contacts/util/video/videoFilters/FrameSequenceAnimationOverlayFilter$Frame;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
