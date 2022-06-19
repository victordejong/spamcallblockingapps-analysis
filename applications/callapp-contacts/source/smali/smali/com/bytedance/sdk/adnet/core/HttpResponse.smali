.class public final Lcom/bytedance/sdk/adnet/core/HttpResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/adnet/core/HttpResponse;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;I",
            "Ljava/io/InputStream;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->a:I

    .line 55
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->b:Ljava/util/List;

    .line 56
    iput p3, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->c:I

    .line 57
    iput-object p4, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->d:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/io/InputStream;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->c:I

    return v0
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Header;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/HttpResponse;->a:I

    return v0
.end method
