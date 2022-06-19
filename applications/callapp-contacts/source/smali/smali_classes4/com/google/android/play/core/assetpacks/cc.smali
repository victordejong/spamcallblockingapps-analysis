.class final Lcom/google/android/play/core/assetpacks/cc;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lcom/google/android/play/core/internal/h;


# instance fields
.field final a:Lcom/google/android/play/core/assetpacks/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/cc;->b:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/cc;->a:Lcom/google/android/play/core/assetpacks/w;

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/play/core/assetpacks/cb;Ljava/io/File;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/cc;->a:Lcom/google/android/play/core/assetpacks/w;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/cb;->k:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/cb;->a:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/cb;->b:J

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/w;->e(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p2, v2}, Lcom/google/android/play/core/assetpacks/ca;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/bj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/cb;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/play/core/assetpacks/cc;->b:Lcom/google/android/play/core/internal/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/cb;->k:Ljava/lang/String;

    aput-object p1, v2, v1

    const-string p1, "Verification of slice %s of pack %s successful."

    invoke-virtual {p2, p1, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/play/core/assetpacks/al;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "Verification failed for slice %s."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/cb;->j:I

    invoke-direct {p2, v0, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw p2

    :catch_0
    move-exception p2

    new-instance v2, Lcom/google/android/play/core/assetpacks/al;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "Could not digest file during verification for slice %s."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/cb;->j:I

    invoke-direct {v2, v0, p2, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :catch_1
    move-exception p2

    new-instance v0, Lcom/google/android/play/core/assetpacks/al;

    iget p1, p1, Lcom/google/android/play/core/assetpacks/cb;->j:I

    const-string v1, "SHA256 algorithm not supported."

    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_1
    :try_start_2
    new-instance p2, Lcom/google/android/play/core/assetpacks/al;

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const-string v3, "Cannot find metadata files for slice %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/google/android/play/core/assetpacks/cb;->j:I

    invoke-direct {p2, v2, v3}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p2

    new-instance v2, Lcom/google/android/play/core/assetpacks/al;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/cb;->c:Ljava/lang/String;

    aput-object v3, v1, v0

    const-string v0, "Could not reconstruct slice archive during verification for slice %s."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/cb;->j:I

    invoke-direct {v2, v0, p2, p1}, Lcom/google/android/play/core/assetpacks/al;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2
.end method
