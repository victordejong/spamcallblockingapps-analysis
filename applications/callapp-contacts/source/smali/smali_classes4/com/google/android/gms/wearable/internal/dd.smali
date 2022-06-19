.class final Lcom/google/android/gms/wearable/internal/dd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/net/Uri;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/d$b;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J

.field private final synthetic e:J

.field private final synthetic f:Lcom/google/android/gms/wearable/internal/db;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/db;Landroid/net/Uri;Lcom/google/android/gms/common/api/internal/d$b;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/dd;->f:Lcom/google/android/gms/wearable/internal/db;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/dd;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/dd;->b:Lcom/google/android/gms/common/api/internal/d$b;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/dd;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/wearable/internal/dd;->d:J

    iput-wide p7, p0, Lcom/google/android/gms/wearable/internal/dd;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string v0, "Failed to close sourceFd"

    const-string v1, "WearableClient"

    const/4 v2, 0x2

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/dd;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "Channel.sendFile used with non-file URI"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/dd;->b:Lcom/google/android/gms/common/api/internal/d$b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/internal/d$b;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 8
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/dd;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 9
    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/dd;->f:Lcom/google/android/gms/wearable/internal/db;

    invoke-virtual {v3}, Lcom/google/android/gms/wearable/internal/db;->getService()Landroid/os/IInterface;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/wearable/internal/bm;

    new-instance v5, Lcom/google/android/gms/wearable/internal/cy;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/dd;->b:Lcom/google/android/gms/common/api/internal/d$b;

    invoke-direct {v5, v3}, Lcom/google/android/gms/wearable/internal/cy;-><init>(Lcom/google/android/gms/common/api/internal/d$b;)V

    iget-object v6, p0, Lcom/google/android/gms/wearable/internal/dd;->c:Ljava/lang/String;

    iget-wide v8, p0, Lcom/google/android/gms/wearable/internal/dd;->d:J

    iget-wide v10, p0, Lcom/google/android/gms/wearable/internal/dd;->e:J

    move-object v7, v2

    .line 16
    invoke-interface/range {v4 .. v11}, Lcom/google/android/gms/wearable/internal/bm;->a(Lcom/google/android/gms/wearable/internal/bh;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 20
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_3
    const-string v4, "Channel.sendFile failed."

    .line 23
    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/dd;->b:Lcom/google/android/gms/common/api/internal/d$b;

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v3, v4}, Lcom/google/android/gms/common/api/internal/d$b;->b(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v2

    .line 28
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 31
    :goto_0
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    .line 34
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_1
    throw v3

    .line 12
    :catch_4
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "File couldn\'t be opened for Channel.sendFile: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/dd;->b:Lcom/google/android/gms/common/api/internal/d$b;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/d$b;->b(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
