.class public final Lcom/google/android/gms/measurement/internal/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:J

.field final e:Lcom/google/android/gms/measurement/internal/m;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/String;

    .line 25
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    .line 26
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/k;->d:J

    .line 27
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/k;->d:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/k;->d:J

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Event created with reverse previous/current timestamps. appId"

    .line 31
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    :cond_1
    if-eqz p9, :cond_5

    invoke-virtual/range {p9 .. p9}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 35
    new-instance v3, Landroid/os/Bundle;

    move-object/from16 v0, p9

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 37
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    if-nez v2, :cond_2

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v5, "Param name can\'t be null"

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v5

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 45
    if-nez v5, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 48
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Param value can\'t be null"

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->j()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/google/android/gms/measurement/internal/dw;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->i()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    invoke-virtual {v6, v3, v2, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_4
    new-instance v2, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    .line 56
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    .line 57
    return-void

    .line 55
    :cond_5
    new-instance v2, Lcom/google/android/gms/measurement/internal/m;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/m;-><init>(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/m;)V
    .locals 5

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p9}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/String;

    .line 8
    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    .line 9
    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/k;->d:J

    .line 10
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/k;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/k;->d:J

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Event created with reverse previous/current timestamps. appId, name"

    .line 14
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    .line 18
    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/gms/measurement/internal/fd;J)Lcom/google/android/gms/measurement/internal/k;
    .locals 12

    .prologue
    .line 58
    new-instance v1, Lcom/google/android/gms/measurement/internal/k;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/k;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/k;->c:J

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    move-object v2, p1

    move-wide v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/k;-><init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/m;)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/k;->e:Lcom/google/android/gms/measurement/internal/m;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Event{appId=\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\', name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\', params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
