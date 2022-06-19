.class public final Lcom/google/android/exoplayer2/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/b/a;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/exoplayer2/b/a;-><init>(III)V

    sput-object v0, Lcom/google/android/exoplayer2/b/a;->a:Lcom/google/android/exoplayer2/b/a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/android/exoplayer2/b/a;->b:I

    .line 57
    iput p2, p0, Lcom/google/android/exoplayer2/b/a;->c:I

    .line 58
    iput p3, p0, Lcom/google/android/exoplayer2/b/a;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/b/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 69
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/b/a;

    .line 70
    iget v1, p0, Lcom/google/android/exoplayer2/b/a;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/b/a;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/b/a;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/b/a;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/b/a;->d:I

    iget p1, p1, Lcom/google/android/exoplayer2/b/a;->d:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 78
    iget v0, p0, Lcom/google/android/exoplayer2/b/a;->b:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget v1, p0, Lcom/google/android/exoplayer2/b/a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget v1, p0, Lcom/google/android/exoplayer2/b/a;->d:I

    add-int/2addr v0, v1

    return v0
.end method
