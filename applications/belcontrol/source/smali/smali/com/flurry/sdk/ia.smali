.class public final Lcom/flurry/sdk/ia;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "ia"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/flurry/sdk/jp;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v1, Lcom/flurry/sdk/jp$a;

    invoke-direct {v1}, Lcom/flurry/sdk/jp$a;-><init>()V

    const/4 v2, 0x3

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    const v5, 0xb5fa

    if-eq v4, v5, :cond_1

    sget-object v1, Lcom/flurry/sdk/ia;->a:Ljava/lang/String;

    const-string v4, "Unexpected file type"

    invoke-static {v2, v1, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    invoke-static {p0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v1, 0x6

    sget-object v5, Lcom/flurry/sdk/ia;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown agent file version: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v5, v4}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, p0}, Lcom/flurry/sdk/lo;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/jp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v8, v0

    move-object v0, p0

    move-object p0, v8

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    goto :goto_3

    :catch_2
    move-exception v1

    move-object p0, v0

    move-object v3, p0

    :goto_1
    :try_start_4
    sget-object v4, Lcom/flurry/sdk/ia;->a:Ljava/lang/String;

    const-string v5, "Error loading legacy agent data."

    invoke-static {v2, v4, v5, v1}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {p0}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    :goto_4
    return-object v0
.end method
