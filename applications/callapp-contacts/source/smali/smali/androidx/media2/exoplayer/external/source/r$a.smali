.class final Landroidx/media2/exoplayer/external/source/r$a;
.super Landroidx/media2/exoplayer/external/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 286
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/al;-><init>()V

    .line 287
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/r$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 329
    sget-object v0, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$a;Z)Landroidx/media2/exoplayer/external/al$a;
    .locals 7

    const/4 p1, 0x0

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    move-object v0, p2

    .line 319
    invoke-virtual/range {v0 .. v6}, Landroidx/media2/exoplayer/external/al$a;->a(Ljava/lang/Object;Ljava/lang/Object;JJ)Landroidx/media2/exoplayer/external/al$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILandroidx/media2/exoplayer/external/al$b;J)Landroidx/media2/exoplayer/external/al$b;
    .locals 16

    move-object/from16 v0, p0

    .line 297
    iget-object v2, v0, Landroidx/media2/exoplayer/external/source/r$a;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v15}, Landroidx/media2/exoplayer/external/al$b;->a(Ljava/lang/Object;Ljava/lang/Object;JJZZJJJ)Landroidx/media2/exoplayer/external/al$b;

    move-result-object v1

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 334
    sget-object p1, Landroidx/media2/exoplayer/external/source/r$b;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
