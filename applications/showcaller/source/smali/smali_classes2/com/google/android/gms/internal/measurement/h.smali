.class final Lcom/google/android/gms/internal/measurement/h;
.super Lcom/google/android/gms/internal/measurement/z;
.source "com.google.android.gms:play-services-measurement-sdk-api@@18.0.3"


# instance fields
.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Landroid/os/Bundle;

.field final synthetic l:Lcom/google/android/gms/internal/measurement/j0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/j0;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/h;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/h;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/h;->k:Landroid/os/Bundle;

    const/4 p2, 0x1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/z;-><init>(Lcom/google/android/gms/internal/measurement/j0;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/h;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/h;->i:Ljava/lang/String;

    .line 1
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/measurement/j0;->j(Lcom/google/android/gms/internal/measurement/j0;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/h;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/j0;->k(Lcom/google/android/gms/internal/measurement/j0;)Ljava/lang/String;

    move-result-object v5

    move-object v10, v3

    move-object v11, v4

    move-object v9, v5

    goto :goto_0

    :cond_0
    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    .line 2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    .line 3
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/measurement/j0;->v(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/j0;->l(Lcom/google/android/gms/internal/measurement/j0;Lcom/google/android/gms/internal/measurement/hc;)Lcom/google/android/gms/internal/measurement/hc;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    .line 4
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/j0;->m(Lcom/google/android/gms/internal/measurement/j0;)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/j0;->k(Lcom/google/android/gms/internal/measurement/j0;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to connect to measurement client."

    .line 5
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    .line 6
    invoke-static {v3, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    .line 7
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 8
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-ge v0, v3, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 9
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzz;

    int-to-long v6, v4

    const-wide/32 v4, 0x9899

    iget-object v12, p0, Lcom/google/android/gms/internal/measurement/h;->k:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/l4;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/internal/measurement/zzz;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    .line 11
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/j0;->m(Lcom/google/android/gms/internal/measurement/j0;)Lcom/google/android/gms/internal/measurement/hc;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/hc;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/h;->j:Landroid/content/Context;

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/z;->d:J

    invoke-interface {v3, v4, v0, v5, v6}, Lcom/google/android/gms/internal/measurement/hc;->initialize(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/zzz;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/h;->l:Lcom/google/android/gms/internal/measurement/j0;

    .line 13
    invoke-static {v3, v0, v2, v1}, Lcom/google/android/gms/internal/measurement/j0;->i(Lcom/google/android/gms/internal/measurement/j0;Ljava/lang/Exception;ZZ)V

    return-void
.end method
