.class public final Lqp$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroidx/media2/exoplayer/external/Format;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(IILandroidx/media2/exoplayer/external/Format;ILjava/lang/Object;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lqp$c;->a:I

    iput p2, p0, Lqp$c;->b:I

    iput-object p3, p0, Lqp$c;->c:Landroidx/media2/exoplayer/external/Format;

    iput p4, p0, Lqp$c;->d:I

    iput-object p5, p0, Lqp$c;->e:Ljava/lang/Object;

    iput-wide p6, p0, Lqp$c;->f:J

    iput-wide p8, p0, Lqp$c;->g:J

    return-void
.end method
