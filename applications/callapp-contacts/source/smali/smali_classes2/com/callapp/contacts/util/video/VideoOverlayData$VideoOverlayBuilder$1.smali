.class Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/video/videoFilters/AnimationFrameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;->a(Landroid/content/Context;Lcom/callapp/contacts/util/video/VideoOverlayData;)Lcom/linkedin/android/litr/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/b/a;

.field final synthetic b:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;Lcom/bumptech/glide/b/a;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;->b:Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder;

    iput-object p2, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;->a:Lcom/bumptech/glide/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->b()V

    return-void
.end method

.method public getFrameCount()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->d()I

    move-result v0

    return v0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/b/a;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNextFrameDurationNs()J
    .locals 3

    .line 197
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/callapp/contacts/util/video/VideoOverlayData$VideoOverlayBuilder$1;->a:Lcom/bumptech/glide/b/a;

    invoke-interface {v1}, Lcom/bumptech/glide/b/a;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method
