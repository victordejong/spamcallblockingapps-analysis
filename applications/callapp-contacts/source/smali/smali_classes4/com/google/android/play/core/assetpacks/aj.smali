.class final Lcom/google/android/play/core/assetpacks/aj;
.super Lcom/google/android/play/core/assetpacks/bd;


# instance fields
.field final a:I

.field final b:J

.field final c:Ljava/lang/String;

.field final d:I

.field final e:I

.field final f:I

.field final g:J

.field final h:I

.field final i:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/bd;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/aj;->a:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/aj;->b:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/aj;->c:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/play/core/assetpacks/aj;->d:I

    iput p8, p0, Lcom/google/android/play/core/assetpacks/aj;->e:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/aj;->f:I

    iput-wide p10, p0, Lcom/google/android/play/core/assetpacks/aj;->g:J

    iput p12, p0, Lcom/google/android/play/core/assetpacks/aj;->h:I

    iput-object p13, p0, Lcom/google/android/play/core/assetpacks/aj;->i:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/assetpacks/aj;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/aj;->f:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
