.class final Lcom/google/android/exoplayer2/audio/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/audio/n;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/n;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/n;Lcom/google/android/exoplayer2/audio/n$1;)V
    .locals 0

    .line 813
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/n$a;-><init>(Lcom/google/android/exoplayer2/audio/n;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    const/4 v1, 0x1

    .line 1481
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/audio/n;->a:Z

    return-void
.end method

.method public final a(IJJ)V
    .locals 7

    .line 827
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/audio/f$a;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/audio/f$a;->a(IJJ)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 822
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/audio/f$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/audio/f$a;->a(J)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/audio/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->a(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/audio/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/f$a;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->b(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/af$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->b(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/af$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/af$a;->a()V

    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->b(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/af$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n$a;->a:Lcom/google/android/exoplayer2/audio/n;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/n;->b(Lcom/google/android/exoplayer2/audio/n;)Lcom/google/android/exoplayer2/af$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/af$a;->a(J)V

    :cond_0
    return-void
.end method
