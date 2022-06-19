.class public final Landroidx/media2/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/versionedparcelable/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Landroidx/media/AudioAttributesCompat;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(ILandroidx/media/AudioAttributesCompat;III)V
    .locals 0

    .line 2090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2091
    iput p1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    .line 2092
    iput-object p2, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    .line 2093
    iput p3, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    .line 2094
    iput p4, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    .line 2095
    iput p5, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    return-void
.end method

.method static a(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/session/MediaController$PlaybackInfo;
    .locals 7

    .line 2181
    new-instance v6, Landroidx/media2/session/MediaController$PlaybackInfo;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media2/session/MediaController$PlaybackInfo;-><init>(ILandroidx/media/AudioAttributesCompat;III)V

    return-object v6
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2168
    instance-of v0, p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2171
    :cond_0
    check-cast p1, Landroidx/media2/session/MediaController$PlaybackInfo;

    .line 2172
    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    iget v2, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    iget-object p1, p1, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    .line 2176
    invoke-static {v0, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 2162
    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->a:I

    .line 2163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/MediaController$PlaybackInfo;->e:Landroidx/media/AudioAttributesCompat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2162
    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
