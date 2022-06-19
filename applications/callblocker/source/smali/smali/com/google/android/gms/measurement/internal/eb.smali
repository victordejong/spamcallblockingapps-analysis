.class final Lcom/google/android/gms/measurement/internal/eb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/Object;

.field private final synthetic d:Ljava/lang/Object;

.field private final synthetic e:Ljava/lang/Object;

.field private final synthetic f:Lcom/google/android/gms/measurement/internal/dy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/dy;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/eb;->a:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/eb;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/16 v10, 0x400

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/dy;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->c()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fy;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/dy;->a(Lcom/google/android/gms/measurement/internal/dy;)C

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 10
    const/16 v2, 0x43

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Lcom/google/android/gms/measurement/internal/dy;C)C

    .line 14
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/dy;->b(Lcom/google/android/gms/measurement/internal/dy;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/b;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Lcom/google/android/gms/measurement/internal/dy;J)J

    .line 16
    :cond_1
    const-string/jumbo v0, "01VDIWEA?"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/eb;->a:I

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Lcom/google/android/gms/measurement/internal/dy;)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->b(Lcom/google/android/gms/measurement/internal/dy;)J

    move-result-wide v4

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/eb;->c:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/eb;->d:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/eb;->e:Ljava/lang/Object;

    .line 20
    invoke-static {v3, v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/dy;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v10, :cond_2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/el;->b:Lcom/google/android/gms/measurement/internal/es;

    .line 26
    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/es;->a(Ljava/lang/String;J)V

    .line 27
    :goto_1
    return-void

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    const/4 v1, 0x6

    const-string/jumbo v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/dy;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eb;->f:Lcom/google/android/gms/measurement/internal/dy;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 13
    const/16 v2, 0x63

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Lcom/google/android/gms/measurement/internal/dy;C)C

    goto/16 :goto_0
.end method
