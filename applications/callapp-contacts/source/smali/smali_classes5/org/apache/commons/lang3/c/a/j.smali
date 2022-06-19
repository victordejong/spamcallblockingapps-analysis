.class public Lorg/apache/commons/lang3/c/a/j;
.super Lorg/apache/commons/lang3/c/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/c/a/j;-><init>(IIZ)V

    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/apache/commons/lang3/c/a/c;-><init>()V

    .line 55
    iput p1, p0, Lorg/apache/commons/lang3/c/a/j;->b:I

    .line 56
    iput p2, p0, Lorg/apache/commons/lang3/c/a/j;->c:I

    .line 57
    iput-boolean p3, p0, Lorg/apache/commons/lang3/c/a/j;->d:Z

    return-void
.end method


# virtual methods
.method public final a(ILjava/io/Writer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lorg/apache/commons/lang3/c/a/j;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lorg/apache/commons/lang3/c/a/j;->b:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/c/a/j;->c:I

    if-le p1, v0, :cond_2

    :cond_0
    return v1

    .line 112
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/c/a/j;->b:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/c/a/j;->c:I

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const v0, 0xffff

    if-le p1, v0, :cond_3

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/c/a/j;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\\u"

    .line 121
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lorg/apache/commons/lang3/c/a/j;->a:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 123
    sget-object v0, Lorg/apache/commons/lang3/c/a/j;->a:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 124
    sget-object v0, Lorg/apache/commons/lang3/c/a/j;->a:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 125
    sget-object v0, Lorg/apache/commons/lang3/c/a/j;->a:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected b(I)Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/apache/commons/lang3/c/a/j;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
