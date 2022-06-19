.class public final Landroidx/media2/exoplayer/external/source/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 123
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 172
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;IIJI)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    .line 187
    iput p2, p0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    .line 188
    iput p3, p0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    .line 189
    iput-wide p4, p0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    .line 190
    iput p6, p0, Landroidx/media2/exoplayer/external/source/t$a;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 134
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 152
    invoke-direct/range {v0 .. v6}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Landroidx/media2/exoplayer/external/source/t$a;
    .locals 8

    .line 195
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 197
    :cond_0
    new-instance v0, Landroidx/media2/exoplayer/external/source/t$a;

    iget v3, p0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v4, p0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    iget v7, p0, Landroidx/media2/exoplayer/external/source/t$a;->e:I

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/t$a;-><init>(Ljava/lang/Object;IIJI)V

    return-object v0
.end method

.method public final a()Z
    .locals 2

    .line 205
    iget v0, p0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 217
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/source/t$a;

    .line 218
    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    iget-wide v4, p1, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/source/t$a;->e:I

    iget p1, p1, Landroidx/media2/exoplayer/external/source/t$a;->e:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 228
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/t$a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget v1, p0, Landroidx/media2/exoplayer/external/source/t$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 230
    iget v1, p0, Landroidx/media2/exoplayer/external/source/t$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 231
    iget-wide v1, p0, Landroidx/media2/exoplayer/external/source/t$a;->d:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 232
    iget v1, p0, Landroidx/media2/exoplayer/external/source/t$a;->e:I

    add-int/2addr v0, v1

    return v0
.end method
