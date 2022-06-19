.class public Lp7/d$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljava/io/File;

.field public c:[Ljava/io/FileOutputStream;

.field public d:Z

.field public final synthetic e:Lp7/d;


# direct methods
.method public constructor <init>(Lp7/d;Ljava/lang/String;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lp7/d$i;->e:Lp7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp7/d$i;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p1, Lp7/d;->c:Lu7/d;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 5
    :goto_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lu7/d;->e:Ljava/io/File;

    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x80

    iget-object v6, p1, Lu7/d;->b:Ljava/util/Random;

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iput-object v0, p0, Lp7/d$i;->b:[Ljava/io/File;

    new-array p1, p2, [Ljava/io/FileOutputStream;

    .line 8
    iput-object p1, p0, Lp7/d$i;->c:[Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp7/d$i;->c:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Ly/d;->e([Ljava/io/Closeable;)V

    .line 2
    iget-object v0, p0, Lp7/d$i;->b:[Ljava/io/File;

    sget-object v1, Lu7/d;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lp7/d$i;->d:Z

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lp7/d$i;->e:Lp7/d;

    .line 7
    iget v1, v0, Lp7/d;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lp7/d;->b:I

    .line 8
    iput-boolean v2, p0, Lp7/d$i;->d:Z

    return-void
.end method

.method public b(I)Ljava/io/FileOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp7/d$i;->c:[Ljava/io/FileOutputStream;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lp7/d$i;->b:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Lp7/d$i;->c:[Ljava/io/FileOutputStream;

    aget-object p1, v0, p1

    return-object p1
.end method
