.class final Lcom/google/android/exoplayer2/source/w$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput p1, p0, Lcom/google/android/exoplayer2/source/w$d;->a:I

    .line 1129
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/w$d;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 1140
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/w$d;

    .line 1141
    iget v2, p0, Lcom/google/android/exoplayer2/source/w$d;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/w$d;->a:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/w$d;->b:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/w$d;->b:Z

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1146
    iget v0, p0, Lcom/google/android/exoplayer2/source/w$d;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/w$d;->b:Z

    add-int/2addr v0, v1

    return v0
.end method
