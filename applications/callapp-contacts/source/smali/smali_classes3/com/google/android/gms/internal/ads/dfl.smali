.class final Lcom/google/android/gms/internal/ads/dfl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/djv;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/ads/dgv;

.field private d:Lcom/google/android/gms/internal/ads/dgf;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dik;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dik;->zzijv:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dfl;->a:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/dds;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1006
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dik;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dgy;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgy;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ddm;->b(Lcom/google/android/gms/internal/ads/dik;)Lcom/google/android/gms/internal/ads/dot;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dgv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfl;->c:Lcom/google/android/gms/internal/ads/dgv;

    .line 2003
    iget p1, v0, Lcom/google/android/gms/internal/ads/dgy;->zzihg:I

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/dfl;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/dds;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2006
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dik;->zzijw:Lcom/google/android/gms/internal/ads/dlw;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dgi;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dgi;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ddm;->b(Lcom/google/android/gms/internal/ads/dik;)Lcom/google/android/gms/internal/ads/dot;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dgf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dfl;->d:Lcom/google/android/gms/internal/ads/dgf;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgi;->a()Lcom/google/android/gms/internal/ads/dgm;

    move-result-object p1

    .line 3004
    iget p1, p1, Lcom/google/android/gms/internal/ads/dgm;->zzihg:I

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/ads/dfl;->e:I

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dgi;->b()Lcom/google/android/gms/internal/ads/dic;

    move-result-object p1

    .line 4004
    iget p1, p1, Lcom/google/android/gms/internal/ads/dic;->zzihg:I

    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/dfl;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dfl;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzenn; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 22
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 23
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/dfl;->b:I

    return v0
.end method

.method public final a([B)Lcom/google/android/gms/internal/ads/dcn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 25
    array-length v0, p1

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/dfl;->b:I

    if-ne v0, v1, :cond_2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfl;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/dds;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgv;->a()Lcom/google/android/gms/internal/ads/dgv$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dfl;->c:Lcom/google/android/gms/internal/ads/dgv;

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dgv$a;

    iget v2, p0, Lcom/google/android/gms/internal/ads/dfl;->b:I

    .line 32
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/dlw;->a([BII)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dgv$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dgv$a;

    move-result-object p1

    .line 4067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 33
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dgv;

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfl;->a:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/dcn;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ddm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dot;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dcn;

    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfl;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/dds;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/dfl;->e:I

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/google/android/gms/internal/ads/dfl;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dfl;->b:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgj;->b()Lcom/google/android/gms/internal/ads/dgj$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dfl;->d:Lcom/google/android/gms/internal/ads/dgf;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dgf;->a()Lcom/google/android/gms/internal/ads/dgj;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dgj$a;

    .line 40
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgj$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dgj$a;

    move-result-object v0

    .line 5067
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    .line 41
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/dgj;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/dhy;->b()Lcom/google/android/gms/internal/ads/dhy$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dfl;->d:Lcom/google/android/gms/internal/ads/dgf;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dgf;->b()Lcom/google/android/gms/internal/ads/dhy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dnh$b;->a(Lcom/google/android/gms/internal/ads/dnh;)Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dhy$a;

    .line 44
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dlw;->a([B)Lcom/google/android/gms/internal/ads/dlw;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dhy$a;->a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dhy$a;

    move-result-object p1

    .line 6067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dhy;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/dgf;->c()Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dfl;->d:Lcom/google/android/gms/internal/ads/dgf;

    .line 7003
    iget v2, v2, Lcom/google/android/gms/internal/ads/dgf;->zzihc:I

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dgf$a;->a(I)Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dgf$a;->a(Lcom/google/android/gms/internal/ads/dgj;)Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dgf$a;->a(Lcom/google/android/gms/internal/ads/dhy;)Lcom/google/android/gms/internal/ads/dgf$a;

    move-result-object p1

    .line 7067
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/dgf;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dfl;->a:Ljava/lang/String;

    const-class v1, Lcom/google/android/gms/internal/ads/dcn;

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ddm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/dot;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dcn;

    return-object p1

    .line 52
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
