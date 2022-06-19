.class public Lcom/amazonaws/services/s3/internal/PartCreationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:I

.field public final c:Z

.field public final d:Lcom/amazonaws/services/s3/OnFileDelete;


# direct methods
.method constructor <init>(Ljava/io/File;IZLcom/amazonaws/services/s3/OnFileDelete;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->a:Ljava/io/File;

    .line 35
    iput p2, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->b:I

    .line 36
    iput-boolean p3, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->c:Z

    .line 37
    iput-object p4, p0, Lcom/amazonaws/services/s3/internal/PartCreationEvent;->d:Lcom/amazonaws/services/s3/OnFileDelete;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "part must not be specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
