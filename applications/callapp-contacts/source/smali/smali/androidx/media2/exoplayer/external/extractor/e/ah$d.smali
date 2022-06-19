.class public final Landroidx/media2/exoplayer/external/extractor/e/ah$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 135
    invoke-direct {p0, v0, p1, p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/16 v1, 0xc

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a:Ljava/lang/String;

    .line 140
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b:I

    .line 141
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c:I

    .line 142
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d:I

    return-void
.end method

.method private d()V
    .locals 2

    .line 180
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 150
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d:I

    .line 151
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    .line 161
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d()V

    .line 162
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 175
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->d()V

    .line 176
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->e:Ljava/lang/String;

    return-object v0
.end method
