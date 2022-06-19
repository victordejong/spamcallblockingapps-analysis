.class public final Lv9/f$d;
.super Lq9/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:I

.field public final synthetic e:Lv9/f;


# direct methods
.method public constructor <init>(Lv9/f;ZII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lv9/f$d;->e:Lv9/f;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lv9/f;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Lv9/f$d;->b:Z

    .line 4
    iput p3, p0, Lv9/f$d;->c:I

    .line 5
    iput p4, p0, Lv9/f$d;->d:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lv9/f$d;->e:Lv9/f;

    iget-boolean v1, p0, Lv9/f$d;->b:Z

    iget v2, p0, Lv9/f$d;->c:I

    iget v3, p0, Lv9/f$d;->d:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    if-nez v1, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v5, v0, Lv9/f;->k:Z

    const/4 v6, 0x1

    .line 4
    iput-boolean v6, v0, Lv9/f;->k:Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {v0, v4, v4}, Lv9/f;->k(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 8
    :cond_0
    :try_start_3
    iget-object v5, v0, Lv9/f;->r:Lv9/p;

    invoke-virtual {v5, v1, v2, v3}, Lv9/p;->r(ZII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    :try_start_4
    invoke-virtual {v0, v4, v4}, Lv9/f;->k(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
