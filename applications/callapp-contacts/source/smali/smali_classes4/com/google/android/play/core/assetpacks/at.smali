.class final synthetic Lcom/google/android/play/core/assetpacks/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/ba;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;

.field private final b:I

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/play/core/assetpacks/at;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/at;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/at;->b:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;I[B)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, Lcom/google/android/play/core/assetpacks/at;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/at;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput p2, p0, Lcom/google/android/play/core/assetpacks/at;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/google/android/play/core/assetpacks/at;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/at;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/at;->b:I

    .line 1000
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/bb;->b(I)Lcom/google/android/play/core/assetpacks/ay;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iput v2, v0, Lcom/google/android/play/core/assetpacks/ax;->c:I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/at;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget v3, p0, Lcom/google/android/play/core/assetpacks/at;->b:I

    .line 2000
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/bb;->b(I)Lcom/google/android/play/core/assetpacks/ay;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v5, v5, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/bj;->b(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v3, v0, Lcom/google/android/play/core/assetpacks/bb;->b:Lcom/google/android/play/core/assetpacks/w;

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget-object v6, v5, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    iget v7, v4, Lcom/google/android/play/core/assetpacks/ay;->b:I

    iget-wide v8, v5, Lcom/google/android/play/core/assetpacks/ax;->b:J

    invoke-virtual {v3, v6, v7, v8, v9}, Lcom/google/android/play/core/assetpacks/w;->f(Ljava/lang/String;IJ)V

    iget-object v3, v4, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v5, v3, Lcom/google/android/play/core/assetpacks/ax;->c:I

    if-eq v5, v2, :cond_1

    const/4 v2, 0x6

    if-ne v5, v2, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/bb;->b:Lcom/google/android/play/core/assetpacks/w;

    iget-object v2, v3, Lcom/google/android/play/core/assetpacks/ax;->a:Ljava/lang/String;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/ay;->b:I

    iget-wide v5, v3, Lcom/google/android/play/core/assetpacks/ax;->b:J

    .line 3000
    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/w;->a(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/w;->b(Ljava/io/File;)Z

    :cond_2
    return-object v1

    .line 2000
    :cond_3
    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Could not safely delete session %d because it is not in a terminal state."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
