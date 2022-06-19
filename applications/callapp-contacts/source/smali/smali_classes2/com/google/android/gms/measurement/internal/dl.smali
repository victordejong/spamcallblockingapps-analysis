.class final Lcom/google/android/gms/measurement/internal/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Lcom/google/android/gms/measurement/internal/do;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/do;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/dl;->a:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/dl;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/dl;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/dl;->d:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/dl;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->b()Lcom/google/android/gms/measurement/internal/ee;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fn;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    .line 1000
    iget-char v1, v1, Lcom/google/android/gms/measurement/internal/do;->a:C

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    const/16 v2, 0x43

    .line 4000
    iput-char v2, v1, Lcom/google/android/gms/measurement/internal/do;->a:C

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    const/16 v2, 0x63

    .line 11000
    iput-char v2, v1, Lcom/google/android/gms/measurement/internal/do;->a:C

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    .line 5000
    iget-wide v1, v1, Lcom/google/android/gms/measurement/internal/do;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    const-wide/32 v2, 0x9899

    .line 7000
    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/do;->b:J

    .line 10
    :cond_2
    iget v1, p0, Lcom/google/android/gms/measurement/internal/dl;->a:I

    const-string v2, "01VDIWEA?"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    .line 8000
    iget-char v2, v2, Lcom/google/android/gms/measurement/internal/do;->a:C

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    .line 9000
    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/do;->b:J

    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/dl;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/dl;->c:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/dl;->d:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/dl;->e:Ljava/lang/Object;

    .line 12
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/do;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/ee;->c:Lcom/google/android/gms/measurement/internal/eb;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/eb;->a(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x6

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/dl;->f:Lcom/google/android/gms/measurement/internal/do;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/do;->ag_()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
