.class Landroidx/media2/player/n$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final d:I

.field final e:Landroidx/media2/common/SessionPlayer$TrackInfo;


# direct methods
.method constructor <init>(IILandroid/media/MediaFormat;I)V
    .locals 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p1, p0, Landroidx/media2/player/n$b;->d:I

    .line 376
    new-instance p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p1, p4, p2, p3, v0}, Landroidx/media2/common/SessionPlayer$TrackInfo;-><init>(IILandroid/media/MediaFormat;Z)V

    iput-object p1, p0, Landroidx/media2/player/n$b;->e:Landroidx/media2/common/SessionPlayer$TrackInfo;

    return-void
.end method
