.class public final Lcom/google/android/gms/internal/ads/dfi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/dcz;)Lcom/google/android/gms/internal/ads/dcq;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dfh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dfh;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddh;)V

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/dcq;

    .line 1011
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1013
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v1, "No wrapper found for "

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1016
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dcz;->a:Lcom/google/android/gms/internal/ads/dip;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ddq;->b(Lcom/google/android/gms/internal/ads/dip;)V

    .line 2006
    new-instance v2, Lcom/google/android/gms/internal/ads/ddd;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/ddd;-><init>(Ljava/lang/Class;)V

    .line 1018
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dcz;->a:Lcom/google/android/gms/internal/ads/dip;

    .line 3005
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dip;->zziku:Lcom/google/android/gms/internal/ads/dnr;

    .line 1018
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dip$b;

    .line 1019
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dip$b;->b()Lcom/google/android/gms/internal/ads/dii;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/dii;->zzikh:Lcom/google/android/gms/internal/ads/dii;

    if-ne v5, v6, :cond_2

    .line 1020
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dip$b;->a()Lcom/google/android/gms/internal/ads/dih;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/dih;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 3018
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dip$b;->b()Lcom/google/android/gms/internal/ads/dii;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/dii;->zzikh:Lcom/google/android/gms/internal/ads/dii;

    if-ne v5, v6, :cond_a

    .line 3020
    new-instance v5, Lcom/google/android/gms/internal/ads/ddf;

    .line 3022
    sget-object v6, Lcom/google/android/gms/internal/ads/dco;->a:[I

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dip$b;->c()Lcom/google/android/gms/internal/ads/djb;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/djb;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eq v6, v9, :cond_5

    const/4 v10, 0x2

    if-eq v6, v10, :cond_5

    const/4 v10, 0x3

    if-eq v6, v10, :cond_4

    const/4 v8, 0x4

    if-ne v6, v8, :cond_3

    .line 3033
    sget-object v6, Lcom/google/android/gms/internal/ads/dcp;->a:[B

    goto :goto_2

    .line 3034
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3028
    :cond_4
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 3029
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 5007
    iget v8, v4, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 3030
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 3031
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_2

    .line 3023
    :cond_5
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v8, 0x0

    .line 3024
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 4007
    iget v8, v4, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 3025
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 3026
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    :goto_2
    move-object v8, v6

    .line 3036
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dip$b;->b()Lcom/google/android/gms/internal/ads/dii;

    move-result-object v9

    .line 3037
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dip$b;->c()Lcom/google/android/gms/internal/ads/djb;

    move-result-object v10

    .line 6007
    iget v11, v4, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    move-object v6, v5

    .line 3038
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/ddf;-><init>(Ljava/lang/Object;[BLcom/google/android/gms/internal/ads/dii;Lcom/google/android/gms/internal/ads/djb;I)V

    .line 3039
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3040
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3041
    new-instance v7, Lcom/google/android/gms/internal/ads/ddi;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ddf;->a()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/ads/ddi;-><init>([BLcom/google/android/gms/internal/ads/ddg;)V

    .line 3042
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/ddd;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v8, v7, v6}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_6

    .line 3044
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3045
    invoke-interface {v8, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3046
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3047
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/ddd;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7007
    :cond_6
    iget v4, v4, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 1022
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dcz;->a:Lcom/google/android/gms/internal/ads/dip;

    .line 8004
    iget v6, v6, Lcom/google/android/gms/internal/ads/dip;->zzikt:I

    if-ne v4, v6, :cond_2

    .line 9009
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/ddf;->b:Lcom/google/android/gms/internal/ads/dii;

    .line 8009
    sget-object v6, Lcom/google/android/gms/internal/ads/dii;->zzikh:Lcom/google/android/gms/internal/ads/dii;

    if-ne v4, v6, :cond_9

    .line 8011
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ddf;->a()[B

    move-result-object v4

    .line 8012
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/ddd;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Lcom/google/android/gms/internal/ads/ddi;

    invoke-direct {v7, v4, v9}, Lcom/google/android/gms/internal/ads/ddi;-><init>([BLcom/google/android/gms/internal/ads/ddg;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7

    goto :goto_3

    .line 8013
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 8014
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 8016
    iput-object v5, v2, Lcom/google/android/gms/internal/ads/ddd;->b:Lcom/google/android/gms/internal/ads/ddf;

    goto/16 :goto_1

    .line 8015
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8010
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry has to be ENABLED"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3019
    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "only ENABLED key is allowed"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1025
    :cond_b
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/ddm;->a(Lcom/google/android/gms/internal/ads/ddd;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    check-cast p0, Lcom/google/android/gms/internal/ads/dcq;

    return-object p0
.end method
