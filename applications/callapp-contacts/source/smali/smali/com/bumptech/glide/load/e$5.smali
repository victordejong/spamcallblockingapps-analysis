.class public final Lcom/bumptech/glide/load/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

.field final synthetic b:Lcom/bumptech/glide/load/engine/a/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;Lcom/bumptech/glide/load/engine/a/b;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/bumptech/glide/load/e$5;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    iput-object p2, p0, Lcom/bumptech/glide/load/e$5;->b:Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/ImageHeaderParser;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    :try_start_0
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/v;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/load/e$5;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    .line 1034
    iget-object v3, v3, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/e$5;->b:Lcom/bumptech/glide/load/engine/a/b;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/v;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/e$5;->b:Lcom/bumptech/glide/load/engine/a/b;

    invoke-interface {p1, v1, v0}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/a/b;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    :catch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/e$5;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    .line 2034
    iget-object v0, v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 180
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    :catch_1
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/e$5;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;

    .line 3034
    iget-object v0, v0, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder;->a:Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/data/ParcelFileDescriptorRewinder$InternalRewinder;->rewind()Landroid/os/ParcelFileDescriptor;

    .line 185
    throw p1
.end method
