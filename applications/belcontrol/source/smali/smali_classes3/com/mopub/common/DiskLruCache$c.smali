.class public final Lcom/mopub/common/DiskLruCache$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[J

.field public c:Z

.field public d:Lcom/mopub/common/DiskLruCache$Editor;

.field public e:J

.field public final synthetic f:Lcom/mopub/common/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$c;->f:Lcom/mopub/common/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mopub/common/DiskLruCache$c;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/mopub/common/DiskLruCache;->l(Lcom/mopub/common/DiskLruCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$c;->b:[J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;Lcom/mopub/common/DiskLruCache$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$c;-><init>(Lcom/mopub/common/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mopub/common/DiskLruCache$c;)[J
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$c;->b:[J

    return-object p0
.end method

.method public static synthetic b(Lcom/mopub/common/DiskLruCache$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/mopub/common/DiskLruCache$c;)J
    .locals 2

    iget-wide v0, p0, Lcom/mopub/common/DiskLruCache$c;->e:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/mopub/common/DiskLruCache$c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/mopub/common/DiskLruCache$c;->e:J

    return-wide p1
.end method

.method public static synthetic e(Lcom/mopub/common/DiskLruCache$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mopub/common/DiskLruCache$c;->c:Z

    return p0
.end method

.method public static synthetic f(Lcom/mopub/common/DiskLruCache$c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/DiskLruCache$c;->c:Z

    return p1
.end method

.method public static synthetic g(Lcom/mopub/common/DiskLruCache$c;)Lcom/mopub/common/DiskLruCache$Editor;
    .locals 0

    iget-object p0, p0, Lcom/mopub/common/DiskLruCache$c;->d:Lcom/mopub/common/DiskLruCache$Editor;

    return-object p0
.end method

.method public static synthetic h(Lcom/mopub/common/DiskLruCache$c;Lcom/mopub/common/DiskLruCache$Editor;)Lcom/mopub/common/DiskLruCache$Editor;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$c;->d:Lcom/mopub/common/DiskLruCache$Editor;

    return-object p1
.end method

.method public static synthetic i(Lcom/mopub/common/DiskLruCache$c;[Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$c;->k([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$c;->f:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->m(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$c;->f:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->m(Lcom/mopub/common/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mopub/common/DiskLruCache$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$c;->b:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$c;->f:Lcom/mopub/common/DiskLruCache;

    invoke-static {v1}, Lcom/mopub/common/DiskLruCache;->l(Lcom/mopub/common/DiskLruCache;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/mopub/common/DiskLruCache$c;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$c;->j([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/mopub/common/DiskLruCache$c;->j([Ljava/lang/String;)Ljava/io/IOException;

    throw v2
.end method
