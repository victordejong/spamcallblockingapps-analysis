.class public Lv9/f$e;
.super Lq9/b;
.source "SourceFile"

# interfaces
.implements Lv9/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final b:Lv9/n;

.field public final synthetic c:Lv9/f;


# direct methods
.method public constructor <init>(Lv9/f;Lv9/n;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lv9/f$e;->c:Lv9/f;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lv9/f;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lv9/f$e;->b:Lv9/n;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/f$e;->b:Lv9/n;

    invoke-virtual {v0, p0}, Lv9/n;->l(Lv9/n$b;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lv9/f$e;->b:Lv9/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lv9/n;->k(ZLv9/n$b;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 3
    :try_start_1
    iget-object v2, p0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v2, v0, v1}, Lv9/f;->k(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lv9/f$e;->c:Lv9/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v2}, Lv9/f;->k(II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4
    :catch_0
    iget-object v1, p0, Lv9/f$e;->b:Lv9/n;

    invoke-static {v1}, Lq9/c;->d(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    const/4 v0, 0x2

    .line 5
    :try_start_3
    iget-object v1, p0, Lv9/f$e;->c:Lv9/f;

    invoke-virtual {v1, v0, v0}, Lv9/f;->k(II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6
    :catch_2
    :goto_1
    iget-object v0, p0, Lv9/f$e;->b:Lv9/n;

    invoke-static {v0}, Lq9/c;->d(Ljava/io/Closeable;)V

    return-void
.end method
