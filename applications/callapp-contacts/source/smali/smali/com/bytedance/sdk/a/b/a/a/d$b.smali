.class final Lcom/bytedance/sdk/a/b/a/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/a/b/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lcom/bytedance/sdk/a/b/a/a/d$a;

.field g:J


# virtual methods
.method final a(Lcom/bytedance/sdk/a/a/d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/a/d$b;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 1047
    invoke-interface {p1, v5}, Lcom/bytedance/sdk/a/a/d;->i(I)Lcom/bytedance/sdk/a/a/d;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/bytedance/sdk/a/a/d;->l(J)Lcom/bytedance/sdk/a/a/d;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
