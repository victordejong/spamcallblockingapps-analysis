.class final Lcom/facebook/biddingkit/d/h$d;
.super Ljava/io/Writer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/biddingkit/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:Lcom/facebook/biddingkit/d/h$c;

.field b:[C

.field c:I


# direct methods
.method constructor <init>(Lcom/facebook/biddingkit/d/h$c;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/facebook/biddingkit/d/h$d;->a:Lcom/facebook/biddingkit/d/h$c;

    const/16 p1, 0x400

    new-array p1, p1, [C

    .line 69
    iput-object p1, p0, Lcom/facebook/biddingkit/d/h$d;->b:[C

    return-void
.end method

.method private a()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/facebook/biddingkit/d/h$d;->a:Lcom/facebook/biddingkit/d/h$c;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/biddingkit/d/h$d;->b:[C

    iget v3, p0, Lcom/facebook/biddingkit/d/h$d;->c:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1}, Lcom/facebook/biddingkit/d/h$c;->a(Ljava/lang/String;)V

    .line 98
    iput v4, p0, Lcom/facebook/biddingkit/d/h$d;->c:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/facebook/biddingkit/d/h$d;->flush()V

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 86
    iget v0, p0, Lcom/facebook/biddingkit/d/h$d;->c:I

    if-lez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/facebook/biddingkit/d/h$d;->a()V

    :cond_0
    return-void
.end method

.method public final write([CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    .line 75
    aget-char v1, p1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/facebook/biddingkit/d/h$d;->c:I

    iget-object v2, p0, Lcom/facebook/biddingkit/d/h$d;->b:[C

    array-length v3, v2

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    aget-char v3, p1, v0

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 79
    iput v1, p0, Lcom/facebook/biddingkit/d/h$d;->c:I

    goto :goto_2

    .line 76
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/facebook/biddingkit/d/h$d;->a()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
