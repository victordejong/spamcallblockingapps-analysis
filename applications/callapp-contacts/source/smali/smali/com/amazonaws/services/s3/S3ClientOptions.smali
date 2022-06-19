.class public Lcom/amazonaws/services/s3/S3ClientOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field b:Z

.field final c:Z

.field final d:Z

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 216
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 217
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    .line 218
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    .line 219
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 220
    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 231
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 232
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    .line 233
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    .line 234
    iget-boolean v0, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    iput-boolean v0, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 235
    iget-boolean p1, p1, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    return-void
.end method

.method private constructor <init>(ZZZZZZ)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->a:Z

    .line 245
    iput-boolean p2, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    .line 246
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->e:Z

    .line 247
    iput-boolean p4, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    .line 248
    iput-boolean p5, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->f:Z

    .line 249
    iput-boolean p6, p0, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    return-void
.end method

.method synthetic constructor <init>(ZZZZZZLcom/amazonaws/services/s3/S3ClientOptions$1;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p6}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(ZZZZZZ)V

    return-void
.end method
