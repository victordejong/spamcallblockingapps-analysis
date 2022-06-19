.class public final Lcom/google/android/exoplayer2/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadHelper$b;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$a;,
        Lcom/google/android/exoplayer2/offline/DownloadHelper$LiveContentUnsupportedException;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field public static final b:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final d:Lcom/google/android/exoplayer2/MediaItem$c;

.field private final e:Lcom/google/android/exoplayer2/source/r;

.field private final f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

.field private final g:[Lcom/google/android/exoplayer2/ag;

.field private final h:Landroid/util/SparseIntArray;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/google/android/exoplayer2/al$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;

    move-result-object v0

    const/4 v1, 0x1

    .line 1666
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a:Z

    .line 102
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$c;->a()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    .line 109
    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->b:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 117
    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->c:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[Lcom/google/android/exoplayer2/ag;)V
    .locals 1

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem;->b:Lcom/google/android/exoplayer2/MediaItem$c;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/MediaItem$c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->d:Lcom/google/android/exoplayer2/MediaItem$c;

    .line 489
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->e:Lcom/google/android/exoplayer2/source/r;

    .line 490
    new-instance p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    new-instance p2, Lcom/google/android/exoplayer2/offline/DownloadHelper$a$a;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$a$a;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/c$b;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->f:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    .line 492
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->g:[Lcom/google/android/exoplayer2/ag;

    .line 493
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->h:Landroid/util/SparseIntArray;

    .line 494
    sget-object p2, Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$WZtdwle1ta-LbWPg9ndzvwNE4Fg;->INSTANCE:Lcom/google/android/exoplayer2/offline/-$$Lambda$DownloadHelper$WZtdwle1ta-LbWPg9ndzvwNE4Fg;

    new-instance p3, Lcom/google/android/exoplayer2/offline/DownloadHelper$b;

    invoke-direct {p3, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$b;-><init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->a(Lcom/google/android/exoplayer2/trackselection/h$a;Lcom/google/android/exoplayer2/upstream/c;)V

    .line 495
    invoke-static {}, Lcom/google/android/exoplayer2/util/af;->b()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->i:Landroid/os/Handler;

    .line 496
    new-instance p1, Lcom/google/android/exoplayer2/al$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/al$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/DownloadHelper;->j:Lcom/google/android/exoplayer2/al$b;

    return-void
.end method

.method private static synthetic a()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$WZtdwle1ta-LbWPg9ndzvwNE4Fg()V
    .locals 0

    invoke-static {}, Lcom/google/android/exoplayer2/offline/DownloadHelper;->a()V

    return-void
.end method
