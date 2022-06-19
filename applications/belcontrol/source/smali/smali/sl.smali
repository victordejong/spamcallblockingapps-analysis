.class public final Lsl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Landroidx/media2/exoplayer/external/Format;

.field public final g:I

.field public final h:[J

.field public final i:[J

.field public final j:I

.field public final k:[Ltl;


# direct methods
.method public constructor <init>(IIJJJLandroidx/media2/exoplayer/external/Format;I[Ltl;I[J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lsl;->a:I

    iput p2, p0, Lsl;->b:I

    iput-wide p3, p0, Lsl;->c:J

    iput-wide p5, p0, Lsl;->d:J

    iput-wide p7, p0, Lsl;->e:J

    iput-object p9, p0, Lsl;->f:Landroidx/media2/exoplayer/external/Format;

    iput p10, p0, Lsl;->g:I

    iput-object p11, p0, Lsl;->k:[Ltl;

    iput p12, p0, Lsl;->j:I

    iput-object p13, p0, Lsl;->h:[J

    iput-object p14, p0, Lsl;->i:[J

    return-void
.end method


# virtual methods
.method public a(I)Ltl;
    .locals 1

    iget-object v0, p0, Lsl;->k:[Ltl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method
