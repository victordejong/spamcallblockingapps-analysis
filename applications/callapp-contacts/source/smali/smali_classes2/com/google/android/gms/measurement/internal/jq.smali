.class public final Lcom/google/android/gms/measurement/internal/jq;
.super Lcom/google/android/gms/measurement/internal/je;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/je;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/measurement/cd;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/cd;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/cd;->c(I)Lcom/google/android/gms/internal/measurement/cp;

    move-result-object v1

    .line 51056
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method static final a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;
    .locals 2

    .line 51058
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ca;

    .line 51059
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Lcom/google/android/gms/internal/measurement/hn;[B)Lcom/google/android/gms/internal/measurement/hn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Builder::",
            "Lcom/google/android/gms/internal/measurement/hn;",
            ">(TBuilder;[B)TBuilder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzib;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->b()Lcom/google/android/gms/internal/measurement/fy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/hn;->a([BLcom/google/android/gms/internal/measurement/fy;)Lcom/google/android/gms/internal/measurement/hn;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/measurement/hn;->a([B)Lcom/google/android/gms/internal/measurement/hn;

    move-result-object p0

    return-object p0
.end method

.method private static final a(ZZZ)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    const-string p0, "Dynamic "

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Sequence "

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p0, "Session-Scoped "

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/BitSet;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x40

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_2

    mul-int/lit8 v8, v4, 0x40

    add-int/2addr v8, v7

    .line 3
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v9

    if-lt v8, v9, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    or-long/2addr v5, v8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5
    :cond_2
    :goto_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private static a([Landroid/os/Bundle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/ca;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v4

    .line 4
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    .line 6
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 7
    instance-of v8, v6, Ljava/lang/Long;

    if-eqz v8, :cond_2

    .line 8
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    goto :goto_2

    .line 9
    :cond_2
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 10
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/measurement/bz;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    goto :goto_2

    .line 11
    :cond_3
    instance-of v8, v6, Ljava/lang/Double;

    if-eqz v8, :cond_1

    .line 12
    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/bz;->a(D)Lcom/google/android/gms/internal/measurement/bz;

    .line 13
    :goto_2
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/bz;->a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bz;

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bz;->d()I

    move-result v3

    if-lez v3, :cond_5

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ca;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method static final a(Lcom/google/android/gms/internal/measurement/bv;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/bv;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ca;

    .line 51057
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 4
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    .line 5
    instance-of p1, p2, Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    goto :goto_2

    .line 7
    :cond_2
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 8
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/bz;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    goto :goto_2

    .line 9
    :cond_3
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_4

    .line 10
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bz;->a(D)Lcom/google/android/gms/internal/measurement/bz;

    goto :goto_2

    .line 11
    :cond_4
    instance-of p1, p2, [Landroid/os/Bundle;

    if-eqz p1, :cond_5

    .line 12
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jq;->a([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/bz;

    :cond_5
    :goto_2
    if-ltz v1, :cond_6

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/bv;->a(ILcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;

    return-void

    .line 14
    :cond_6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;

    return-void
.end method

.method private static final a(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, "  "

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/ar;)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, "filter {\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ar;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51043
    iget-boolean v0, p3, Lcom/google/android/gms/internal/measurement/ar;->zzg:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "complement"

    invoke-static {p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51044
    :cond_1
    iget v0, p3, Lcom/google/android/gms/internal/measurement/ar;->zza:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v0

    .line 51045
    iget-object v3, p3, Lcom/google/android/gms/internal/measurement/ar;->zzh:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "param_name"

    .line 6
    invoke-static {p1, p2, v3, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ar;->a()Z

    move-result v0

    const-string v3, "}\n"

    if-eqz v0, :cond_b

    add-int/lit8 v0, p2, 0x1

    .line 7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ar;->b()Lcom/google/android/gms/internal/measurement/be;

    move-result-object v4

    if-nez v4, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v5, "string_filter {\n"

    .line 9
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/be;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/be;->b()Lcom/google/android/gms/internal/measurement/bd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/bd;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "match_type"

    invoke-static {p1, v0, v6, v5}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/be;->c()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 51046
    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/be;->zzf:Ljava/lang/String;

    const-string v6, "expression"

    .line 11
    invoke-static {p1, v0, v6, v5}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51047
    :cond_6
    iget v5, v4, Lcom/google/android/gms/internal/measurement/be;->zza:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 51048
    iget-boolean v1, v4, Lcom/google/android/gms/internal/measurement/be;->zzg:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "case_sensitive"

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/be;->d()I

    move-result v1

    if-lez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 14
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, "expression_list {\n"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51049
    iget-object v1, v4, Lcom/google/android/gms/internal/measurement/be;->zzh:Lcom/google/android/gms/internal/measurement/gs;

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    .line 17
    invoke-static {p1, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 20
    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_a
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 22
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_b
    :goto_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ar;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 v0, p2, 0x1

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ar;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object p3

    const-string v1, "number_filter"

    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ax;)V

    .line 24
    :cond_c
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 25
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ax;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {\n"

    .line 3
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ax;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ax;->b()Lcom/google/android/gms/internal/measurement/aw;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/aw;->name()Ljava/lang/String;

    move-result-object p2

    const-string v0, "comparison_type"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ax;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 51080
    iget-boolean p2, p3, Lcom/google/android/gms/internal/measurement/ax;->zzf:Z

    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "match_as_float"

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ax;->d()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 51081
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/ax;->zzg:Ljava/lang/String;

    const-string v0, "comparison_value"

    .line 6
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ax;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 51082
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/ax;->zzh:Ljava/lang/String;

    const-string v0, "min_comparison_value"

    .line 7
    invoke-static {p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/ax;->f()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 51083
    iget-object p2, p3, Lcom/google/android/gms/internal/measurement/ax;->zzi:Ljava/lang/String;

    const-string p3, "max_comparison_value"

    .line 8
    invoke-static {p0, p1, p3, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 9
    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n"

    .line 10
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/ca;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p2, v0

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v1, :cond_1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, "param {\n"

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51037
    iget v2, v1, Lcom/google/android/gms/internal/measurement/ca;->zza:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v2

    .line 51038
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/dj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    const-string v4, "name"

    .line 6
    invoke-static {p1, p2, v4, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ca;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51039
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    const-string v4, "string_value"

    .line 7
    invoke-static {p1, p2, v4, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51040
    iget-wide v4, v1, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    const-string v4, "int_value"

    invoke-static {p1, p2, v4, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ca;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 51041
    iget-wide v2, v1, Lcom/google/android/gms/internal/measurement/ca;->zzi:D

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_6
    const-string v2, "double_value"

    .line 10
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ca;->d()I

    move-result v2

    if-lez v2, :cond_7

    .line 51042
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ca;->zzj:Lcom/google/android/gms/internal/measurement/gs;

    .line 12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 13
    :cond_7
    invoke-static {p1, p2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, "}\n"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static final a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/cl;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {\n"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    .line 51060
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/gr;->size()I

    move-result p1

    const/16 v1, 0xa

    const/4 v2, 0x4

    const-string v3, ", "

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 5
    invoke-static {p0, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "results: "

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51061
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/cl;->zze:Lcom/google/android/gms/internal/measurement/gr;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/cl;->a()I

    move-result p1

    if-eqz p1, :cond_6

    .line 12
    invoke-static {p0, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "status: "

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51062
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/cl;->zza:Lcom/google/android/gms/internal/measurement/gr;

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    add-int/lit8 v7, v5, 0x1

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_1

    .line 17
    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/cl;->b()I

    move-result p1

    const/4 v1, 0x0

    const-string v5, "}\n"

    if-eqz p1, :cond_b

    .line 19
    invoke-static {p0, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "dynamic_filter_timestamps: {"

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51063
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/cl;->zzf:Lcom/google/android/gms/internal/measurement/gs;

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v6, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/bu;

    add-int/lit8 v8, v6, 0x1

    if-eqz v6, :cond_7

    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/bu;->a()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 51064
    iget v6, v7, Lcom/google/android/gms/internal/measurement/bu;->zze:I

    .line 23
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_8
    move-object v6, v1

    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    .line 24
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/bu;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 51065
    iget-wide v6, v7, Lcom/google/android/gms/internal/measurement/bu;->zzf:J

    .line 25
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_4

    :cond_9
    move-object v6, v1

    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v6, v8

    goto :goto_2

    .line 26
    :cond_a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_b
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/cl;->c()I

    move-result p1

    if-eqz p1, :cond_11

    .line 28
    invoke-static {p0, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "sequence_filter_timestamps: {"

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51066
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/cl;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/cn;

    add-int/lit8 v6, p2, 0x1

    if-eqz p2, :cond_c

    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/cn;->a()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 51067
    iget p2, v2, Lcom/google/android/gms/internal/measurement/cn;->zze:I

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_6

    :cond_d
    move-object p2, v1

    :goto_6
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51068
    iget-object p2, v2, Lcom/google/android/gms/internal/measurement/cn;->zzf:Lcom/google/android/gms/internal/measurement/gr;

    .line 33
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-int/lit8 v9, v2, 0x1

    if-eqz v2, :cond_e

    .line 34
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_e
    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v2, v9

    goto :goto_7

    :cond_f
    const-string p2, "]"

    .line 36
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v6

    goto :goto_5

    .line 37
    :cond_10
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_11
    invoke-static {p0, v0}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 39
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static final a(Lcom/google/android/gms/measurement/internal/zzas;Lcom/google/android/gms/measurement/internal/zzp;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzp;->zzq:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x136

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static a(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x40

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, p1, 0x40

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    rem-int/lit8 p1, p1, 0x40

    shl-long p0, v2, p1

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static final b(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bw;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/ca;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ca;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51069
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51070
    iget-wide p0, p0, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ca;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51071
    iget-wide p0, p0, Lcom/google/android/gms/internal/measurement/ca;->zzi:D

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/ca;->d()I

    move-result p1

    if-lez p1, :cond_9

    .line 51072
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/ca;->zzj:Lcom/google/android/gms/internal/measurement/gs;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ca;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51073
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ca;->zzj:Lcom/google/android/gms/internal/measurement/gs;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/ca;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ca;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51074
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 51075
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/ca;->zzf:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ca;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 51076
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 51077
    iget-wide v4, v2, Lcom/google/android/gms/internal/measurement/ca;->zzg:J

    .line 12
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 13
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ca;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51078
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/ca;->zze:Ljava/lang/String;

    .line 51079
    iget-wide v4, v2, Lcom/google/android/gms/internal/measurement/ca;->zzi:D

    .line 14
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 15
    :cond_7
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Landroid/os/Bundle;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/Bundle;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final a([B)J
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->g()Lcom/google/android/gms/measurement/internal/ju;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/ju;->m()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51054
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Failed to get MD5"

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/ju;->a([B)J

    move-result-wide v0

    return-wide v0
.end method

.method final a([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 51050
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string p2, "Failed to load parcelable from buffer"

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8
    throw p1
.end method

.method final a(Lcom/google/android/gms/measurement/internal/n;)Lcom/google/android/gms/internal/measurement/bw;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bw;->c()Lcom/google/android/gms/internal/measurement/bv;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/measurement/internal/n;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/bv;->b(J)Lcom/google/android/gms/internal/measurement/bv;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    new-instance v2, Lcom/google/android/gms/measurement/internal/p;

    .line 2
    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/internal/p;-><init>(Lcom/google/android/gms/measurement/internal/zzaq;)V

    .line 3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ca;->e()Lcom/google/android/gms/internal/measurement/bz;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/n;->f:Lcom/google/android/gms/measurement/internal/zzaq;

    .line 6
    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Lcom/google/android/gms/internal/measurement/bz;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/bv;->a(Lcom/google/android/gms/internal/measurement/bz;)Lcom/google/android/gms/internal/measurement/bv;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/bw;

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/ap;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nevent_filter {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ap;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 51026
    iget v1, p1, Lcom/google/android/gms/internal/measurement/ap;->zze:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v1

    .line 51027
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/ap;->zzf:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event_name"

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51028
    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/ap;->zzj:Z

    .line 51029
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/ap;->zzk:Z

    .line 51030
    iget-boolean v4, p1, Lcom/google/android/gms/internal/measurement/ap;->zzl:Z

    .line 7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ap;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ap;->d()Lcom/google/android/gms/internal/measurement/ax;

    move-result-object v1

    const-string v3, "event_count_filter"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Lcom/google/android/gms/internal/measurement/ax;)V

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ap;->b()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "  filters {\n"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51031
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/ap;->zzg:Lcom/google/android/gms/internal/measurement/gs;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/ar;

    .line 14
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/ar;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string p1, "}\n}\n"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/az;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nproperty_filter {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/az;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 51032
    iget v1, p1, Lcom/google/android/gms/internal/measurement/az;->zze:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "filter_id"

    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v1

    .line 51033
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/az;->zzf:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "property_name"

    .line 6
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51034
    iget-boolean v1, p1, Lcom/google/android/gms/internal/measurement/az;->zzh:Z

    .line 51035
    iget-boolean v3, p1, Lcom/google/android/gms/internal/measurement/az;->zzi:Z

    .line 51036
    iget-boolean v4, p1, Lcom/google/android/gms/internal/measurement/az;->zzj:Z

    .line 7
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(ZZZ)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "filter_type"

    .line 9
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/az;->b()Lcom/google/android/gms/internal/measurement/ar;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILcom/google/android/gms/internal/measurement/ar;)V

    const-string p1, "}\n"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/cc;)Ljava/lang/String;
    .locals 13

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nbatch {\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/cc;->zza:Lcom/google/android/gms/internal/measurement/gs;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "}\n"

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/ce;

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, "bundle {\n"

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    and-int/2addr v4, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_3

    .line 5000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzg:I

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "protocol_version"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 6000
    :cond_3
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzo:Ljava/lang/String;

    const-string v6, "platform"

    .line 7
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 7000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 8000
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/ce;->zzw:J

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "gmp_version"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 9000
    :cond_5
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const v6, 0x8000

    and-int/2addr v4, v6

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_7

    .line 10000
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/ce;->zzx:J

    .line 9
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "uploading_gmp_version"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 11000
    :cond_7
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzf:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    .line 12000
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/ce;->zzU:J

    .line 10
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "dynamite_version"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 13000
    :cond_9
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_b

    .line 14000
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/ce;->zzM:J

    .line 11
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "config_version"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 15000
    :cond_b
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzE:Ljava/lang/String;

    const-string v6, "gmp_app_id"

    .line 12
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 16000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzR:Ljava/lang/String;

    const-string v6, "admob_app_id"

    .line 13
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 17000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzu:Ljava/lang/String;

    const-string v6, "app_id"

    .line 14
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 18000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzv:Ljava/lang/String;

    const-string v6, "app_version"

    .line 15
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 19000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v6, 0x2000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_d

    .line 20000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzI:I

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "app_version_major"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 21000
    :cond_d
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzH:Ljava/lang/String;

    const-string v6, "firebase_instance_id"

    .line 17
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 22000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v6, 0x80000

    and-int/2addr v4, v6

    if-eqz v4, :cond_e

    const/4 v4, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_f

    .line 23000
    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/ce;->zzB:J

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "dev_cert_hash"

    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 24000
    :cond_f
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzt:Ljava/lang/String;

    const-string v6, "app_store"

    .line 19
    invoke-static {v0, v3, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 25000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_11

    .line 26000
    iget-wide v7, v1, Lcom/google/android/gms/internal/measurement/ce;->zzj:J

    .line 20
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "upload_timestamp_millis"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 27000
    :cond_11
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    goto :goto_9

    :cond_12
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_13

    .line 28000
    iget-wide v7, v1, Lcom/google/android/gms/internal/measurement/ce;->zzk:J

    .line 21
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "start_timestamp_millis"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ce;->a()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 29000
    iget-wide v7, v1, Lcom/google/android/gms/internal/measurement/ce;->zzl:J

    .line 22
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "end_timestamp_millis"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 30000
    :cond_14
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_a

    :cond_15
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_16

    .line 31000
    iget-wide v7, v1, Lcom/google/android/gms/internal/measurement/ce;->zzm:J

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "previous_bundle_start_timestamp_millis"

    .line 24
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 32000
    :cond_16
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_18

    .line 33000
    iget-wide v7, v1, Lcom/google/android/gms/internal/measurement/ce;->zzn:J

    .line 25
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "previous_bundle_end_timestamp_millis"

    .line 26
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 34000
    :cond_18
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzA:Ljava/lang/String;

    const-string v7, "app_instance_id"

    .line 27
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 35000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzy:Ljava/lang/String;

    const-string v7, "resettable_device_id"

    .line 28
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 36000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzO:Ljava/lang/String;

    const-string v7, "ds_id"

    .line 29
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 37000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v7, 0x20000

    and-int/2addr v4, v7

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_c

    :cond_19
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_1a

    .line 38000
    iget-boolean v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzz:Z

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "limited_ad_tracking"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 39000
    :cond_1a
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzp:Ljava/lang/String;

    const-string v7, "os_version"

    .line 31
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 40000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzq:Ljava/lang/String;

    const-string v7, "device_model"

    .line 32
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 41000
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzr:Ljava/lang/String;

    const-string v7, "user_default_language"

    .line 33
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 42000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_d

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_1c

    .line 43000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzs:I

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "time_zone_offset_minutes"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 44000
    :cond_1c
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v7, 0x100000

    and-int/2addr v4, v7

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_e

    :cond_1d
    const/4 v4, 0x0

    :goto_e
    if-eqz v4, :cond_1e

    .line 45000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzC:I

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "bundle_sequential_index"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 46000
    :cond_1e
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v7, 0x800000

    and-int/2addr v4, v7

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_f

    :cond_1f
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_20

    .line 47000
    iget-boolean v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzF:Z

    .line 36
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v7, "service_upload"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 48000
    :cond_20
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzD:Ljava/lang/String;

    const-string v7, "health_monitor"

    .line 37
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 49000
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/es;->g:Lcom/google/android/gms/measurement/internal/e;

    .line 39
    sget-object v7, Lcom/google/android/gms/measurement/internal/dc;->at:Lcom/google/android/gms/measurement/internal/da;

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Lcom/google/android/gms/measurement/internal/e;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/da;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 50000
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zze:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v4, v7

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    goto :goto_10

    :cond_21
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_22

    .line 51000
    iget-wide v9, v1, Lcom/google/android/gms/internal/measurement/ce;->zzN:J

    const-wide/16 v11, 0x0

    cmp-long v4, v9, v11

    if-eqz v4, :cond_22

    .line 51001
    iget-wide v9, v1, Lcom/google/android/gms/internal/measurement/ce;->zzN:J

    .line 40
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v7, "android_id"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ce;->b()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 51002
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzQ:I

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "retry_counter"

    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51003
    :cond_23
    iget v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzf:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_24

    const/4 v4, 0x1

    goto :goto_11

    :cond_24
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_25

    .line 51004
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzX:Ljava/lang/String;

    const-string v7, "consent_signals"

    .line 42
    invoke-static {v0, v3, v7, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51005
    :cond_25
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzi:Lcom/google/android/gms/internal/measurement/gs;

    const-string v7, "name"

    if-nez v4, :cond_26

    goto/16 :goto_16

    .line 43
    :cond_26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/cp;

    if-eqz v9, :cond_27

    .line 44
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v10, "user_property {\n"

    .line 45
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/cp;->a()Z

    move-result v10

    if-eqz v10, :cond_28

    .line 51021
    iget-wide v10, v9, Lcom/google/android/gms/internal/measurement/cp;->zze:J

    .line 46
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_13

    :cond_28
    move-object v10, v8

    :goto_13
    const-string v11, "set_timestamp_millis"

    .line 47
    invoke-static {v0, v6, v11, v10}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 48
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v10

    .line 51022
    iget-object v11, v9, Lcom/google/android/gms/internal/measurement/cp;->zzf:Ljava/lang/String;

    .line 49
    invoke-virtual {v10, v11}, Lcom/google/android/gms/measurement/internal/dj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-static {v0, v6, v7, v10}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51023
    iget-object v10, v9, Lcom/google/android/gms/internal/measurement/cp;->zzg:Ljava/lang/String;

    const-string v11, "string_value"

    .line 51
    invoke-static {v0, v6, v11, v10}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/cp;->b()Z

    move-result v10

    if-eqz v10, :cond_29

    .line 51024
    iget-wide v10, v9, Lcom/google/android/gms/internal/measurement/cp;->zzh:J

    .line 52
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_14

    :cond_29
    move-object v10, v8

    :goto_14
    const-string v11, "int_value"

    invoke-static {v0, v6, v11, v10}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/cp;->c()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 51025
    iget-wide v9, v9, Lcom/google/android/gms/internal/measurement/cp;->zzj:D

    .line 53
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_15

    :cond_2a
    move-object v9, v8

    :goto_15
    const-string v10, "double_value"

    .line 54
    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 55
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 51006
    :cond_2b
    :goto_16
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/ce;->zzG:Lcom/google/android/gms/internal/measurement/gs;

    if-nez v4, :cond_2c

    goto/16 :goto_1b

    .line 57
    :cond_2c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/br;

    if-eqz v8, :cond_2d

    .line 58
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v9, "audience_membership {\n"

    .line 59
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51015
    iget v9, v8, Lcom/google/android/gms/internal/measurement/br;->zza:I

    and-int/2addr v9, v3

    if-eqz v9, :cond_2e

    const/4 v9, 0x1

    goto :goto_18

    :cond_2e
    const/4 v9, 0x0

    :goto_18
    if-eqz v9, :cond_2f

    .line 51016
    iget v9, v8, Lcom/google/android/gms/internal/measurement/br;->zze:I

    .line 60
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "audience_id"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51017
    :cond_2f
    iget v9, v8, Lcom/google/android/gms/internal/measurement/br;->zza:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_30

    const/4 v9, 0x1

    goto :goto_19

    :cond_30
    const/4 v9, 0x0

    :goto_19
    if-eqz v9, :cond_31

    .line 51018
    iget-boolean v9, v8, Lcom/google/android/gms/internal/measurement/br;->zzh:Z

    .line 61
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "new_audience"

    invoke-static {v0, v6, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_31
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/br;->a()Lcom/google/android/gms/internal/measurement/cl;

    move-result-object v9

    const-string v10, "current_data"

    invoke-static {v0, v10, v9}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/cl;)V

    .line 51019
    iget v9, v8, Lcom/google/android/gms/internal/measurement/br;->zza:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_32

    const/4 v9, 0x1

    goto :goto_1a

    :cond_32
    const/4 v9, 0x0

    :goto_1a
    if-eqz v9, :cond_34

    .line 63
    iget-object v8, v8, Lcom/google/android/gms/internal/measurement/br;->zzg:Lcom/google/android/gms/internal/measurement/cl;

    if-nez v8, :cond_33

    .line 51020
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cl;->e()Lcom/google/android/gms/internal/measurement/cl;

    move-result-object v8

    :cond_33
    const-string v9, "previous_data"

    .line 63
    invoke-static {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/cl;)V

    .line 64
    :cond_34
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 51007
    :cond_35
    :goto_1b
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ce;->zzh:Lcom/google/android/gms/internal/measurement/gs;

    if-nez v1, :cond_36

    goto/16 :goto_1f

    .line 66
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/bw;

    if-eqz v4, :cond_37

    .line 67
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    const-string v8, "event {\n"

    .line 68
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 69
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/es;->h()Lcom/google/android/gms/measurement/internal/dj;

    move-result-object v8

    .line 51008
    iget-object v9, v4, Lcom/google/android/gms/internal/measurement/bw;->zzf:Ljava/lang/String;

    .line 70
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/dj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bw;->b()Z

    move-result v8

    if-eqz v8, :cond_38

    .line 51009
    iget-wide v8, v4, Lcom/google/android/gms/internal/measurement/bw;->zzg:J

    .line 71
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "timestamp_millis"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51010
    :cond_38
    iget v8, v4, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_39

    const/4 v8, 0x1

    goto :goto_1d

    :cond_39
    const/4 v8, 0x0

    :goto_1d
    if-eqz v8, :cond_3a

    .line 51011
    iget-wide v8, v4, Lcom/google/android/gms/internal/measurement/bw;->zzh:J

    .line 72
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "previous_timestamp_millis"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 51012
    :cond_3a
    iget v8, v4, Lcom/google/android/gms/internal/measurement/bw;->zza:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_3b

    const/4 v8, 0x1

    goto :goto_1e

    :cond_3b
    const/4 v8, 0x0

    :goto_1e
    if-eqz v8, :cond_3c

    .line 51013
    iget v8, v4, Lcom/google/android/gms/internal/measurement/bw;->zzi:I

    .line 73
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    invoke-static {v0, v6, v9, v8}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_3c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/bw;->a()I

    move-result v8

    if-eqz v8, :cond_3d

    .line 51014
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/bw;->zze:Lcom/google/android/gms/internal/measurement/gs;

    .line 75
    invoke-direct {p0, v0, v6, v4}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;ILjava/util/List;)V

    .line 76
    :cond_3d
    invoke-static {v0, v6}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 78
    :cond_3e
    :goto_1f
    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/jq;->a(Ljava/lang/StringBuilder;I)V

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 80
    :cond_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51051
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    const-string v2, "Ignoring negative bit index to be cleared"

    .line 5
    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v1

    .line 51052
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/do;->f:Lcom/google/android/gms/measurement/internal/dm;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Ignoring bit index greater than bitSet size"

    invoke-virtual {v1, v3, p2, v2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rem-int/lit8 p2, p2, 0x40

    shl-long/2addr v4, p2

    not-long v4, v4

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    move v6, p2

    move p2, p1

    move p1, v6

    if-ltz p1, :cond_4

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/google/android/gms/internal/measurement/bz;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/bz;->a()Lcom/google/android/gms/internal/measurement/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/bz;->b()Lcom/google/android/gms/internal/measurement/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/bz;->c()Lcom/google/android/gms/internal/measurement/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/bz;->e()Lcom/google/android/gms/internal/measurement/bz;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/bz;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/bz;

    return-void

    .line 5
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/bz;->a(J)Lcom/google/android/gms/internal/measurement/bz;

    return-void

    .line 7
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 8
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/bz;->a(D)Lcom/google/android/gms/internal/measurement/bz;

    return-void

    .line 9
    :cond_2
    instance-of v0, p2, [Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 12
    check-cast p2, [Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/jq;->a([Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/bz;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/bz;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 2000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Ignoring invalid (type) event param value"

    .line 11
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/measurement/co;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/co;->a()Lcom/google/android/gms/internal/measurement/co;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/co;->b()Lcom/google/android/gms/internal/measurement/co;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/co;->c()Lcom/google/android/gms/internal/measurement/co;

    .line 3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/co;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/co;

    return-void

    .line 5
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 6
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/co;->b(J)Lcom/google/android/gms/internal/measurement/co;

    return-void

    .line 7
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 10
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/co;->a(D)Lcom/google/android/gms/internal/measurement/co;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object p1

    .line 1000
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v0, "Ignoring invalid (type) user attribute value"

    .line 9
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final a(JJ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    cmp-long v2, p3, v0

    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 51053
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final b([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->c()Lcom/google/android/gms/measurement/internal/do;

    move-result-object v0

    .line 51055
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/do;->c:Lcom/google/android/gms/measurement/internal/dm;

    const-string v1, "Failed to gzip content"

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/dm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    throw p1
.end method
