.class public final Landroidx/media2/exoplayer/external/source/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/upstream/h;

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:J

.field public final e:J

.field public final f:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/h;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/exoplayer/external/upstream/h;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/u$b;->a:Landroidx/media2/exoplayer/external/upstream/h;

    .line 90
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/u$b;->b:Landroid/net/Uri;

    .line 91
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/u$b;->c:Ljava/util/Map;

    .line 92
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/u$b;->d:J

    .line 93
    iput-wide p6, p0, Landroidx/media2/exoplayer/external/source/u$b;->e:J

    .line 94
    iput-wide p8, p0, Landroidx/media2/exoplayer/external/source/u$b;->f:J

    return-void
.end method
