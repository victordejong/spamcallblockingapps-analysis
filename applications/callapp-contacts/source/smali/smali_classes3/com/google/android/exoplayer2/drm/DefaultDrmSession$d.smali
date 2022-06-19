.class final Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:J

.field public final d:Ljava/lang/Object;

.field public e:I


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .locals 0

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-wide p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->a:J

    .line 683
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->b:Z

    .line 684
    iput-wide p4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->c:J

    .line 685
    iput-object p6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$d;->d:Ljava/lang/Object;

    return-void
.end method
