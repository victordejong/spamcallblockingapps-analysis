.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/UUID;

.field c:Lcom/google/android/exoplayer2/drm/i$d;

.field d:Z

.field e:[I

.field f:Z

.field g:Lcom/google/android/exoplayer2/upstream/r;

.field h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->a:Ljava/util/HashMap;

    .line 89
    sget-object v0, Lcom/google/android/exoplayer2/f;->d:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->b:Ljava/util/UUID;

    .line 90
    sget-object v0, Lcom/google/android/exoplayer2/drm/k;->a:Lcom/google/android/exoplayer2/drm/i$d;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->c:Lcom/google/android/exoplayer2/drm/i$d;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/upstream/p;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->g:Lcom/google/android/exoplayer2/upstream/r;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 92
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->e:[I

    const-wide/32 v0, 0x493e0

    .line 93
    iput-wide v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->h:J

    return-void
.end method


# virtual methods
.method public final varargs a([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;
    .locals 6

    .line 159
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 160
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;->e:[I

    return-object p0
.end method
