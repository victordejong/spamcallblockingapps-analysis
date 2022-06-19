.class public Landroidx/media2/common/SessionPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/common/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/SessionPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Landroidx/media2/common/MediaItem;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/media2/common/MediaItem;)V
    .locals 2

    .line 1556
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;J)V

    return-void
.end method

.method private constructor <init>(ILandroidx/media2/common/MediaItem;J)V
    .locals 0

    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    iput p1, p0, Landroidx/media2/common/SessionPlayer$b;->c:I

    .line 1562
    iput-object p2, p0, Landroidx/media2/common/SessionPlayer$b;->b:Landroidx/media2/common/MediaItem;

    .line 1563
    iput-wide p3, p0, Landroidx/media2/common/SessionPlayer$b;->a:J

    return-void
.end method

.method public static b()Lcom/google/common/util/concurrent/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 1573
    invoke-static {}, Landroidx/c/a/b;->a()Landroidx/c/a/b;

    move-result-object v0

    .line 1574
    new-instance v1, Landroidx/media2/common/SessionPlayer$b;

    const/4 v2, -0x3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media2/common/SessionPlayer$b;-><init>(ILandroidx/media2/common/MediaItem;)V

    invoke-virtual {v0, v1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1596
    iget v0, p0, Landroidx/media2/common/SessionPlayer$b;->c:I

    return v0
.end method
