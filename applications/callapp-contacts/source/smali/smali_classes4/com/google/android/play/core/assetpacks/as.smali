.class final synthetic Lcom/google/android/play/core/assetpacks/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/ba;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bb;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bb;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/as;->a:Lcom/google/android/play/core/assetpacks/bb;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/as;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/as;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/as;->d:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/as;->a:Lcom/google/android/play/core/assetpacks/bb;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/as;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/as;->c:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/as;->d:J

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 1000
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/play/core/assetpacks/bb;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/play/core/assetpacks/ay;

    if-eqz v6, :cond_0

    iget-object v8, v6, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    iget v8, v8, Lcom/google/android/play/core/assetpacks/ax;->c:I

    invoke-static {v8}, Lcom/google/android/play/core/assetpacks/bj;->b(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    sget-object v8, Lcom/google/android/play/core/assetpacks/bb;->a:Lcom/google/android/play/core/internal/h;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    const-string v9, "Could not find pack %s while trying to complete it"

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v7}, Lcom/google/android/play/core/internal/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/bb;->b:Lcom/google/android/play/core/assetpacks/w;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/w;->f(Ljava/lang/String;IJ)V

    iget-object v0, v6, Lcom/google/android/play/core/assetpacks/ay;->c:Lcom/google/android/play/core/assetpacks/ax;

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/play/core/assetpacks/ax;->c:I

    const/4 v0, 0x0

    return-object v0
.end method
