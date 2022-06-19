.class public final Lcom/google/android/exoplayer2/trackselection/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lcom/google/android/exoplayer2/RendererConfiguration;

.field public final c:[Lcom/google/android/exoplayer2/trackselection/c;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/c;Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 54
    invoke-virtual {p2}, [Lcom/google/android/exoplayer2/trackselection/c;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/trackselection/c;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    .line 55
    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/i;->d:Ljava/lang/Object;

    .line 56
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/i;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/trackselection/i;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/i;->b:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object v1, v1, p2

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/i;->c:[Lcom/google/android/exoplayer2/trackselection/c;

    aget-object p1, p1, p2

    .line 99
    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
