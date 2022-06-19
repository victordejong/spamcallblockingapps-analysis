.class public final Lcom/google/android/gms/internal/gtm/zzor;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/gtm/zzi;",
            "[",
            "Lcom/google/android/gms/internal/gtm/zzl;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/gtm/zzl;"
        }
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Value cycle detected.  Current value reference: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".  Previous value references: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzcf(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    const-string v1, "values"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/gtm/zzor;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzl;

    aget-object v1, p2, p0

    if-eqz v1, :cond_1

    aget-object p0, p2, p0

    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/google/android/gms/internal/gtm/zzl;->type:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzl(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzg$zza;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqd:[I

    array-length v4, v2

    new-array v4, v4, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v4, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqu:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_5

    aget v6, v2, v3

    iget-object v7, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqu:[Lcom/google/android/gms/internal/gtm/zzl;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzor;->zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzl(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzg$zza;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqe:I

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzor;->zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzgj;->zzc(Lcom/google/android/gms/internal/gtm/zzl;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqq:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzl(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzg$zza;

    move-result-object v2

    iget-object v4, v2, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    array-length v5, v4

    iget-object v6, v2, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    array-length v7, v6

    if-eq v5, v7, :cond_2

    array-length v4, v4

    array-length v5, v6

    const/16 v6, 0x3a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Uneven map keys ("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and map values ("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzor;->zzcf(Ljava/lang/String;)V

    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqa:[I

    array-length v5, v4

    new-array v5, v5, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v5, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v5, v4

    new-array v5, v5, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v5, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqp:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget v8, v4, v6

    iget-object v9, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqo:[Lcom/google/android/gms/internal/gtm/zzl;

    add-int/lit8 v10, v7, 0x1

    invoke-static {v8, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzor;->zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v10

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzqb:[I

    array-length v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget v6, v2, v3

    iget-object v7, v1, Lcom/google/android/gms/internal/gtm/zzl;->zzqp:[Lcom/google/android/gms/internal/gtm/zzl;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzor;->zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v6

    aput-object v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_2

    :pswitch_3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzl(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzg$zza;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzor;->zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpz:[I

    array-length v4, v1

    new-array v4, v4, [Lcom/google/android/gms/internal/gtm/zzl;

    iput-object v4, v2, Lcom/google/android/gms/internal/gtm/zzl;->zzqn:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v3, v4, :cond_4

    aget v6, v1, v3

    iget-object v7, v2, Lcom/google/android/gms/internal/gtm/zzl;->zzqn:[Lcom/google/android/gms/internal/gtm/zzl;

    add-int/lit8 v8, v5, 0x1

    :try_start_0
    invoke-static {v6, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzor;->zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    aput-object v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v8

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_4

    :pswitch_4
    move-object v1, v0

    :cond_5
    :goto_4
    if-nez v1, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid value: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzor;->zzcf(Ljava/lang/String;)V

    :cond_6
    aput-object v1, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v1

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static zza(Lcom/google/android/gms/internal/gtm/zzc$zzb;Lcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;I)Lcom/google/android/gms/internal/gtm/zzot;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzot;->zzml()Lcom/google/android/gms/internal/gtm/zzou;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzc$zzb;->zze()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzi;->zzpk:[Lcom/google/android/gms/internal/gtm/zzc$zzd;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "properties"

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzor;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzc$zzd;

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzi;->zzpi:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzc$zzd;->zzl()I

    move-result v2

    const-string v3, "keys"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzor;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzc$zzd;->getValue()I

    move-result v0

    const-string v2, "values"

    invoke-static {p2, v0, v2}, Lcom/google/android/gms/internal/gtm/zzor;->zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzl;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzb;->zzks:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/gtm/zzou;->zzm(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzou;

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v1, v0}, Lcom/google/android/gms/internal/gtm/zzou;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzou;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gtm/zzou;->zzmm()Lcom/google/android/gms/internal/gtm/zzot;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/gtm/zzi;)Lcom/google/android/gms/internal/gtm/zzov;
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p0, v0, v3}, Lcom/google/android/gms/internal/gtm/zzor;->zza(ILcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;Ljava/util/Set;)Lcom/google/android/gms/internal/gtm/zzl;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzov;->zzmn()Lcom/google/android/gms/internal/gtm/zzow;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpm:[Lcom/google/android/gms/internal/gtm/zzc$zzb;

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-object v5, v5, v4

    invoke-static {v5, p0, v0, v4}, Lcom/google/android/gms/internal/gtm/zzor;->zza(Lcom/google/android/gms/internal/gtm/zzc$zzb;Lcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;I)Lcom/google/android/gms/internal/gtm/zzot;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpn:[Lcom/google/android/gms/internal/gtm/zzc$zzb;

    array-length v7, v6

    if-ge v5, v7, :cond_2

    aget-object v6, v6, v5

    invoke-static {v6, p0, v0, v5}, Lcom/google/android/gms/internal/gtm/zzor;->zza(Lcom/google/android/gms/internal/gtm/zzc$zzb;Lcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;I)Lcom/google/android/gms/internal/gtm/zzot;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpl:[Lcom/google/android/gms/internal/gtm/zzc$zzb;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aget-object v7, v7, v6

    invoke-static {v7, p0, v0, v6}, Lcom/google/android/gms/internal/gtm/zzor;->zza(Lcom/google/android/gms/internal/gtm/zzc$zzb;Lcom/google/android/gms/internal/gtm/zzi;[Lcom/google/android/gms/internal/gtm/zzl;I)Lcom/google/android/gms/internal/gtm/zzot;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/gtm/zzow;->zzc(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzow;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpo:[Lcom/google/android/gms/internal/gtm/zzc$zze;

    array-length v6, v0

    :goto_4
    if-ge v1, v6, :cond_e

    aget-object v7, v0, v1

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzoy;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/gtm/zzoy;-><init>(Lcom/google/android/gms/internal/gtm/zzos;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzn()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzd(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_5

    :cond_4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzo()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zze(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_6

    :cond_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzp()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzf(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_7

    :cond_6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzr()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v11, v10

    iget-object v10, v10, Lcom/google/android/gms/internal/gtm/zzl;->string:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzct(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_8

    :cond_7
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzq()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzg(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_9

    :cond_8
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzs()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v11, v10

    iget-object v10, v10, Lcom/google/android/gms/internal/gtm/zzl;->string:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzcu(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_a

    :cond_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzt()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzh(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_b

    :cond_a
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzv()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    iget-object v11, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v10, v11, v10

    iget-object v10, v10, Lcom/google/android/gms/internal/gtm/zzl;->string:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzcv(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_c

    :cond_b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzu()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/gtm/zzot;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/gtm/zzoy;->zzi(Lcom/google/android/gms/internal/gtm/zzot;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_d

    :cond_c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/gtm/zzc$zze;->zzw()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpj:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v10, v9

    iget-object v9, v9, Lcom/google/android/gms/internal/gtm/zzl;->string:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/gtm/zzoy;->zzcw(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzoy;

    goto :goto_e

    :cond_d
    invoke-virtual {v8}, Lcom/google/android/gms/internal/gtm/zzoy;->zzms()Lcom/google/android/gms/internal/gtm/zzox;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/gtm/zzow;->zzb(Lcom/google/android/gms/internal/gtm/zzox;)Lcom/google/android/gms/internal/gtm/zzow;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzi;->version:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/gtm/zzow;->zzcs(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzow;

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzi;->zzpw:I

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/gtm/zzow;->zzaf(I)Lcom/google/android/gms/internal/gtm/zzow;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzow;->zzmp()Lcom/google/android/gms/internal/gtm/zzov;

    move-result-object p0

    return-object p0
.end method

.method private static zza([Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Index out of bounds detected: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzor;->zzcf(Ljava/lang/String;)V

    :cond_1
    aget-object p0, p0, p1

    return-object p0
.end method

.method public static zza(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private static zzcf(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzdi;->zzav(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzoz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzoz;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzk(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzl;-><init>()V

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzl;->type:I

    iput v1, v0, Lcom/google/android/gms/internal/gtm/zzl;->type:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzl;->zzqv:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqv:[I

    iget-boolean p0, p0, Lcom/google/android/gms/internal/gtm/zzl;->zzqw:Z

    if-eqz p0, :cond_0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/gtm/zzl;->zzqw:Z

    :cond_0
    return-object v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/gtm/zzl;)Lcom/google/android/gms/internal/gtm/zzg$zza;
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzg$zza;->zzpx:Lcom/google/android/gms/internal/gtm/zzur;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzur;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzg$zza;

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected a ServingValue and didn\'t get one. Value is: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzor;->zzcf(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzur;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzg$zza;

    return-object p0
.end method
