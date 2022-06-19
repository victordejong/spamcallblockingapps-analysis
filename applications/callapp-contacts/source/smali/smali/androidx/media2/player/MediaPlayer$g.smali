.class final Landroidx/media2/player/MediaPlayer$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field final a:I

.field final b:Landroidx/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a/b<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method constructor <init>(ILandroidx/c/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/c/a/b<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    invoke-direct {p0, p1, p2, v0}, Landroidx/media2/player/MediaPlayer$g;-><init>(ILandroidx/c/a/b;Landroidx/media2/common/SessionPlayer$TrackInfo;)V

    return-void
.end method

.method constructor <init>(ILandroidx/c/a/b;Landroidx/media2/common/SessionPlayer$TrackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/c/a/b<",
            "+",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")V"
        }
    .end annotation

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput p1, p0, Landroidx/media2/player/MediaPlayer$g;->a:I

    .line 516
    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$g;->b:Landroidx/c/a/b;

    .line 517
    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$g;->c:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method


# virtual methods
.method final a(Landroidx/media2/common/SessionPlayer$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">(TV;)V"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$g;->b:Landroidx/c/a/b;

    invoke-virtual {v0, p1}, Landroidx/c/a/b;->a(Ljava/lang/Object;)Z

    return-void
.end method
