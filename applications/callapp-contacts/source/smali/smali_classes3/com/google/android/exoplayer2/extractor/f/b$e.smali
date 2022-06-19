.class final Lcom/google/android/exoplayer2/extractor/f/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/f/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/u;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/f/a$b;)V
    .locals 1

    .line 1798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1799
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/f/a$b;->b:Lcom/google/android/exoplayer2/util/u;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->a:Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0xc

    .line 1800
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1801
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->c:I

    .line 1802
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1807
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1817
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v0

    return v0

    .line 1823
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1825
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 1830
    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/f/b$e;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
