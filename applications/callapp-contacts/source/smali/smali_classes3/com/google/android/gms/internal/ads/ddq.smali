.class final Lcom/google/android/gms/internal/ads/ddq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 41
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/ddq;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dip;)Lcom/google/android/gms/internal/ads/dis;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dis;->a()Lcom/google/android/gms/internal/ads/dis$b;

    move-result-object v0

    .line 1004
    iget v1, p0, Lcom/google/android/gms/internal/ads/dip;->zzikt:I

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dis$b;->a(I)Lcom/google/android/gms/internal/ads/dis$b;

    move-result-object v0

    .line 1005
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dip;->zziku:Lcom/google/android/gms/internal/ads/dnr;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dip$b;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/dis$a;->a()Lcom/google/android/gms/internal/ads/dis$a$a;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dip$b;->a()Lcom/google/android/gms/internal/ads/dih;

    move-result-object v3

    .line 2005
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dih;->zzijv:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dis$a$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dis$a$a;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dip$b;->b()Lcom/google/android/gms/internal/ads/dii;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dis$a$a;->a(Lcom/google/android/gms/internal/ads/dii;)Lcom/google/android/gms/internal/ads/dis$a$a;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dip$b;->c()Lcom/google/android/gms/internal/ads/djb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/dis$a$a;->a(Lcom/google/android/gms/internal/ads/djb;)Lcom/google/android/gms/internal/ads/dis$a$a;

    move-result-object v2

    .line 2007
    iget v1, v1, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/dis$a$a;->a(I)Lcom/google/android/gms/internal/ads/dis$a$a;

    move-result-object v1

    .line 2067
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v1, Lcom/google/android/gms/internal/ads/dis$a;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dis$b;->a(Lcom/google/android/gms/internal/ads/dis$a;)Lcom/google/android/gms/internal/ads/dis$b;

    goto :goto_0

    .line 3067
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p0

    .line 12
    check-cast p0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p0, Lcom/google/android/gms/internal/ads/dis;

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/dip;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4004
    iget v0, p0, Lcom/google/android/gms/internal/ads/dip;->zzikt:I

    .line 4005
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/dip;->zziku:Lcom/google/android/gms/internal/ads/dnr;

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/dip$b;

    .line 18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dip$b;->b()Lcom/google/android/gms/internal/ads/dii;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/dii;->zzikh:Lcom/google/android/gms/internal/ads/dii;

    if-ne v7, v8, :cond_0

    .line 5003
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/dip$b;->zzikw:Lcom/google/android/gms/internal/ads/dih;

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_7

    .line 22
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dip$b;->c()Lcom/google/android/gms/internal/ads/djb;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/djb;->zzilm:Lcom/google/android/gms/internal/ads/djb;

    if-eq v7, v8, :cond_6

    .line 25
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dip$b;->b()Lcom/google/android/gms/internal/ads/dii;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/dii;->zzikg:Lcom/google/android/gms/internal/ads/dii;

    if-eq v7, v8, :cond_5

    .line 8007
    iget v7, v6, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    if-ne v7, v0, :cond_3

    if-nez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    .line 30
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dip$b;->a()Lcom/google/android/gms/internal/ads/dih;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dih;->a()Lcom/google/android/gms/internal/ads/dih$a;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/internal/ads/dih$a;->zzikc:Lcom/google/android/gms/internal/ads/dih$a;

    if-eq v6, v7, :cond_4

    const/4 v5, 0x0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    .line 7007
    iget v1, v6, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown status"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    .line 6007
    iget v1, v6, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has unknown prefix"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-array v0, v1, [Ljava/lang/Object;

    .line 5007
    iget v1, v6, Lcom/google/android/gms/internal/ads/dip$b;->zziky:I

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "key %d has no key data"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eqz v3, :cond_b

    if-nez v4, :cond_a

    if-eqz v5, :cond_9

    goto :goto_3

    .line 39
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    return-void

    .line 37
    :cond_b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
