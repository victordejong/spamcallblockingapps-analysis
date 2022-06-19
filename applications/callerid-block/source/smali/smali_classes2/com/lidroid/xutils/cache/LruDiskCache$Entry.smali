.class final Lcom/lidroid/xutils/cache/LruDiskCache$Entry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

.field private final diskKey:Ljava/lang/String;

.field private expiryTimestamp:J

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J

    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1900(Lcom/lidroid/xutils/cache/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;Lcom/lidroid/xutils/cache/LruDiskCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)[J
    .locals 0

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J

    return-object p0
.end method

.method static synthetic access$1200(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    .locals 2

    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)J
    .locals 0

    iput-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z

    return p0
.end method

.method static synthetic access$602(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 0

    iget-object p0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    return-object p0
.end method

.method static synthetic access$702(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;Lcom/lidroid/xutils/cache/LruDiskCache$Editor;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    .locals 0

    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->currentEditor:Lcom/lidroid/xutils/cache/LruDiskCache$Editor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    .locals 2

    iget-wide v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;J)J
    .locals 0

    iput-wide p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->expiryTimestamp:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
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

.method private setLengths([Ljava/lang/String;I)V
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1900(Lcom/lidroid/xutils/cache/LruDiskCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$1900(Lcom/lidroid/xutils/cache/LruDiskCache;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J

    add-int v2, v0, p2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$2000(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-static {v1}, Lcom/lidroid/xutils/cache/LruDiskCache;->access$2000(Lcom/lidroid/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
