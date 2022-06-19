.class final Lcom/google/android/play/core/assetpacks/i0;
.super Lcom/google/android/play/core/assetpacks/b1;
.source ""


# instance fields
.field final c:I

.field final d:J

.field final e:Ljava/lang/String;

.field final f:I

.field final g:I

.field final h:I

.field final i:J

.field final j:I

.field final k:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/b1;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/i0;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/i0;->d:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/i0;->e:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/play/core/assetpacks/i0;->f:I

    iput p8, p0, Lcom/google/android/play/core/assetpacks/i0;->g:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/i0;->h:I

    iput-wide p10, p0, Lcom/google/android/play/core/assetpacks/i0;->i:J

    iput p12, p0, Lcom/google/android/play/core/assetpacks/i0;->j:I

    iput-object p13, p0, Lcom/google/android/play/core/assetpacks/i0;->k:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/assetpacks/i0;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/i0;->h:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
