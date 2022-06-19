.class public final Landroidx/media2/player/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-wide p1, p0, Landroidx/media2/player/m;->a:J

    .line 56
    iput-object p3, p0, Landroidx/media2/player/m;->b:[B

    return-void
.end method

.method public constructor <init>(Landroid/media/TimedMetaData;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/media/TimedMetaData;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/player/m;->a:J

    .line 47
    invoke-virtual {p1}, Landroid/media/TimedMetaData;->getMetaData()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/player/m;->b:[B

    return-void
.end method
