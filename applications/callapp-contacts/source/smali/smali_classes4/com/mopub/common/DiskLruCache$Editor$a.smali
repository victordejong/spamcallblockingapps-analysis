.class final Lcom/mopub/common/DiskLruCache$Editor$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    .line 840
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/mopub/common/DiskLruCache$1;)V
    .locals 0

    .line 838
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/DiskLruCache$Editor$a;-><init>(Lcom/mopub/common/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 861
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 863
    :catch_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Editor;->c(Lcom/mopub/common/DiskLruCache$Editor;)Z

    return-void
.end method

.method public final flush()V
    .locals 1

    .line 869
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 871
    :catch_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    invoke-static {v0}, Lcom/mopub/common/DiskLruCache$Editor;->c(Lcom/mopub/common/DiskLruCache$Editor;)Z

    return-void
.end method

.method public final write(I)V
    .locals 1

    .line 845
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 847
    :catch_0
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    invoke-static {p1}, Lcom/mopub/common/DiskLruCache$Editor;->c(Lcom/mopub/common/DiskLruCache$Editor;)Z

    return-void
.end method

.method public final write([BII)V
    .locals 1

    .line 853
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 855
    :catch_0
    iget-object p1, p0, Lcom/mopub/common/DiskLruCache$Editor$a;->a:Lcom/mopub/common/DiskLruCache$Editor;

    invoke-static {p1}, Lcom/mopub/common/DiskLruCache$Editor;->c(Lcom/mopub/common/DiskLruCache$Editor;)Z

    return-void
.end method
