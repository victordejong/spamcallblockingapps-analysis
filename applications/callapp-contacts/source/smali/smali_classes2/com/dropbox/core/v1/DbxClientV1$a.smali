.class final Lcom/dropbox/core/v1/DbxClientV1$a;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxClientV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field public static final c:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxClientV1$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 888
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxClientV1$a;->c:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3

    .line 874
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    if-eqz p1, :cond_2

    .line 876
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 878
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->a:Ljava/lang/String;

    .line 879
    iput-wide p2, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->b:J

    return-void

    .line 877
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'offset\' can\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 876
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'uploadId\' can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 875
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'uploadId\' can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 2

    const-string v0, "uploadId"

    .line 884
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/b;->d(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    const-string v0, "offset"

    .line 885
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxClientV1$a;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/dropbox/core/util/b;->a(J)Lcom/dropbox/core/util/b;

    return-void
.end method
