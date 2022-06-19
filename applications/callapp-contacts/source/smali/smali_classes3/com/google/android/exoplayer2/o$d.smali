.class public final Lcom/google/android/exoplayer2/o$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field a:Z

.field public b:Lcom/google/android/exoplayer2/z;

.field public c:I

.field public d:Z

.field public e:I

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/z;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/exoplayer2/o$d;->b:Lcom/google/android/exoplayer2/z;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->a:Z

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->a:Z

    .line 90
    iget v0, p0, Lcom/google/android/exoplayer2/o$d;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/o$d;->c:I

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/z;)V
    .locals 2

    .line 94
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->a:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/o$d;->b:Lcom/google/android/exoplayer2/z;

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->a:Z

    .line 95
    iput-object p1, p0, Lcom/google/android/exoplayer2/o$d;->b:Lcom/google/android/exoplayer2/z;

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/o$d;->e:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 103
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    return-void

    .line 106
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/o$d;->a:Z

    .line 107
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/o$d;->d:Z

    .line 108
    iput p1, p0, Lcom/google/android/exoplayer2/o$d;->e:I

    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->a:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o$d;->f:Z

    .line 115
    iput p1, p0, Lcom/google/android/exoplayer2/o$d;->g:I

    return-void
.end method
