.class public abstract Lcom/google/android/exoplayer2/trackselection/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/c;


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/source/TrackGroup;

.field protected final b:I

.field protected final c:[I

.field private final d:[Lcom/google/android/exoplayer2/Format;

.field private final e:[J

.field private f:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 56
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 57
    array-length v0, p2

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->b:I

    .line 59
    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    const/4 v0, 0x0

    .line 60
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 64
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    sget-object v0, Lcom/google/android/exoplayer2/trackselection/-$$Lambda$b$3WlfJ0njjS74BQZuAfFpC7_kDA8;->INSTANCE:Lcom/google/android/exoplayer2/trackselection/-$$Lambda$b$3WlfJ0njjS74BQZuAfFpC7_kDA8;

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 66
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/b;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    .line 67
    :goto_2
    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/b;->b:I

    if-ge v1, p2, :cond_2

    .line 68
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/b;->e:[J

    return-void
.end method

.method private static synthetic a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    .line 64
    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic lambda$3WlfJ0njjS74BQZuAfFpC7_kDA8(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/b;->a(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/b;->b:I

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/google/android/exoplayer2/Format;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/b;

    .line 192
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/trackselection/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Lcom/google/android/exoplayer2/Format;
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->d:[Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/b;->a()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 175
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->f:I

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->a:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/b;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->f:I

    .line 178
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/b;->f:I

    return v0
.end method
