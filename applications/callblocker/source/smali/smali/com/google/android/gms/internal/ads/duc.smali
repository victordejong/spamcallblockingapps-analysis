.class public final Lcom/google/android/gms/internal/ads/duc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:Lcom/google/android/gms/internal/ads/dur;

.field private final f:Lcom/google/android/gms/internal/ads/duy;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ads/dup;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIIIIZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->h:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->i:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->j:Ljava/util/ArrayList;

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/ads/duc;->l:I

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    .line 9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->p:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->q:Ljava/lang/String;

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/duc;->a:I

    .line 13
    iput p2, p0, Lcom/google/android/gms/internal/ads/duc;->b:I

    .line 14
    iput p3, p0, Lcom/google/android/gms/internal/ads/duc;->c:I

    .line 15
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/duc;->d:Z

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dur;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/dur;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->e:Lcom/google/android/gms/internal/ads/dur;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/duy;

    invoke-direct {v0, p5, p6, p7}, Lcom/google/android/gms/internal/ads/duy;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->f:Lcom/google/android/gms/internal/ads/duy;

    .line 18
    return-void
.end method

.method private final a(II)I
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/duc;->d:Z

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->b:I

    .line 71
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->a:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/duc;->b:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x64

    .line 75
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string/jumbo v0, ""

    .line 86
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :cond_2
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 82
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 86
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final c(Ljava/lang/String;ZFFFF)V
    .locals 8

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/duc;->c:I

    if-ge v0, v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v6

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    .line 47
    if-eqz p2, :cond_2

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/duc;->j:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/ads/dup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->i:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dup;-><init>(FFFFI)V

    .line 51
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/google/android/gms/internal/ads/duc;->l:I

    .line 74
    return-void
.end method

.method public final a(Ljava/lang/String;ZFFFF)V
    .locals 2

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/duc;->c(Ljava/lang/String;ZFFFF)V

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    if-gez v0, :cond_0

    .line 37
    const-string/jumbo v0, "ActivityContent: negative number of WebViews."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/duc;->i()V

    .line 39
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;ZFFFF)V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/duc;->c(Ljava/lang/String;ZFFFF)V

    .line 41
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    add-int/lit8 v0, v0, -0x64

    iput v0, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    .line 27
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/duc;

    if-nez v2, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/duc;

    .line 98
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    .line 99
    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    .line 30
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/duc;->m:I

    .line 33
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/duc;->l:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/duc;->a(II)I

    move-result v0

    .line 55
    iget v2, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    if-le v0, v2, :cond_0

    .line 56
    iput v0, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    .line 57
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 4

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/duc;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/duc;->l:I

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/ads/duc;->a(II)I

    move-result v0

    .line 60
    iget v2, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    if-le v0, v2, :cond_1

    .line 61
    iput v0, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->e:Lcom/google/android/gms/internal/ads/dur;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duc;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dur;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->e:Lcom/google/android/gms/internal/ads/dur;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duc;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dur;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->p:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ug;->h()Lcom/google/android/gms/internal/ads/uw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->f:Lcom/google/android/gms/internal/ads/duy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/duc;->i:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/duc;->j:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/duy;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/duc;->q:Ljava/lang/String;

    .line 68
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    return v0
.end method

.method final k()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v5, 0x64

    .line 87
    iget v0, p0, Lcom/google/android/gms/internal/ads/duc;->l:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/duc;->n:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/duc;->k:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/duc;->h:Ljava/util/ArrayList;

    .line 88
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/duc;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/duc;->i:Ljava/util/ArrayList;

    .line 89
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/duc;->a(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/duc;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/duc;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/duc;->q:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0xa5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v8, "ActivityContent fetchId: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, " score:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " total_length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n viewableText"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n signture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n viewableSignture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n viewableSignatureForVertical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method
