.class final Lcom/google/android/gms/internal/measurement/g;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Landroid/content/Context;

.field private final synthetic f:Landroid/os/Bundle;

.field private final synthetic g:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/g;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/g;->f:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/g;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7
    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/g;->d:Ljava/lang/String;

    .line 8
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/g;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->b(Lcom/google/android/gms/internal/measurement/d;)Ljava/lang/String;

    move-result-object v7

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    move v1, v11

    .line 12
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/d;->a(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d;Lcom/google/android/gms/internal/measurement/mi;)Lcom/google/android/gms/internal/measurement/mi;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->b(Lcom/google/android/gms/internal/measurement/d;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Failed to connect to measurement client."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :goto_2
    return-void

    :cond_1
    move v1, v12

    .line 11
    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->d(Landroid/content/Context;)I

    move-result v0

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/d;->e(Landroid/content/Context;)I

    move-result v2

    .line 18
    if-eqz v1, :cond_4

    .line 19
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 20
    if-ge v2, v0, :cond_3

    move v0, v11

    :goto_3
    move v6, v0

    move v4, v1

    .line 23
    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/measurement/b;

    const-wide/16 v2, 0x6d60

    int-to-long v4, v4

    iget-object v10, p0, Lcom/google/android/gms/internal/measurement/g;->f:Landroid/os/Bundle;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/measurement/b;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/g;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/g;->a:J

    invoke-interface {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/measurement/mi;->initialize(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/b;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/g;->g:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v1, v0, v11, v12}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/Exception;ZZ)V

    goto :goto_2

    :cond_3
    move v0, v12

    .line 20
    goto :goto_3

    .line 21
    :cond_4
    if-lez v0, :cond_5

    move v1, v0

    .line 22
    :goto_5
    if-lez v0, :cond_6

    move v0, v11

    :goto_6
    move v6, v0

    move v4, v1

    goto :goto_4

    :cond_5
    move v1, v2

    .line 21
    goto :goto_5

    :cond_6
    move v0, v12

    .line 22
    goto :goto_6

    :cond_7
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    goto/16 :goto_0
.end method
