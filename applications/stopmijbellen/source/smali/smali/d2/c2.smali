.class public Ld2/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/d2;


# direct methods
.method public constructor <init>(Ld2/d2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/c2;->a:Ld2/d2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/c2;->a:Ld2/d2;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Ld2/d2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v1, v0, Ld2/d2;->f:Lj4/h0;

    iget-object v2, v0, Ld2/d2;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ld2/d2;->a(Lj4/h0;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, v0, Ld2/d2;->a:Ld2/g4;

    invoke-virtual {v2, v1}, Ld2/g4;->a(Ljava/lang/String;)I

    .line 6
    iget-object v1, v0, Ld2/d2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    :cond_0
    iget-object v1, v0, Ld2/d2;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    iget-object v1, v0, Ld2/d2;->g:Lj4/h0;

    iget-object v2, v0, Ld2/d2;->d:Ljava/util/List;

    .line 9
    invoke-virtual {v0, v1, v2}, Ld2/d2;->a(Lj4/h0;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, v0, Ld2/d2;->a:Ld2/g4;

    invoke-virtual {v2, v1}, Ld2/g4;->a(Ljava/lang/String;)I

    .line 11
    iget-object v1, v0, Ld2/d2;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_1
    iget-object v1, v0, Ld2/d2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 13
    :catch_1
    iget-object v1, v0, Ld2/d2;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
