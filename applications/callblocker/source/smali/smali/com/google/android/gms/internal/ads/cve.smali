.class final Lcom/google/android/gms/internal/ads/cve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/czk;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/ads/cwo;

.field private d:Lcom/google/android/gms/internal/ads/cvy;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cya;)V
    .locals 4

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cya;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cya;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cwp;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwp;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cti;->b(Lcom/google/android/gms/internal/ads/cya;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->c:Lcom/google/android/gms/internal/ads/cwo;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cwp;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cve;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cya;->b()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cvz;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cvz;

    move-result-object v1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cti;->b(Lcom/google/android/gms/internal/ads/cya;)Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cvy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->d:Lcom/google/android/gms/internal/ads/cvy;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cvz;->a()Lcom/google/android/gms/internal/ads/cwd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwd;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/cve;->e:I

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cvz;->b()Lcom/google/android/gms/internal/ads/cxq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxq;->b()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/ads/cve;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/cve;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 21
    :catch_1
    move-exception v0

    .line 22
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    invoke-direct {v1, v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 23
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "unsupported AEAD DEM key type: "

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/cve;->b:I

    return v0
.end method

.method public final a([B)Lcom/google/android/gms/internal/ads/csm;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 25
    array-length v0, p1

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/ads/cve;->b:I

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "Symmetric key has incorrect length"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwo;->c()Lcom/google/android/gms/internal/ads/cwo$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cve;->c:Lcom/google/android/gms/internal/ads/cwo;

    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwo$a;

    iget v1, p0, Lcom/google/android/gms/internal/ads/cve;->b:I

    .line 32
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/ads/dbi;->a([BII)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwo$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cwo$a;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cwo;

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/csm;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/deg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/csm;

    .line 51
    :goto_0
    return-object v0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/ctp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/cve;->e:I

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/cve;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/cve;->b:I

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwc;->d()Lcom/google/android/gms/internal/ads/cwc$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cve;->d:Lcom/google/android/gms/internal/ads/cvy;

    .line 39
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cvy;->b()Lcom/google/android/gms/internal/ads/cwc;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cwc$a;

    .line 40
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwc$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cwc$a;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cwc;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/cxp;->d()Lcom/google/android/gms/internal/ads/cxp$a;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cve;->d:Lcom/google/android/gms/internal/ads/cvy;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cvy;->c()Lcom/google/android/gms/internal/ads/cxp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/dcw$a;->a(Lcom/google/android/gms/internal/ads/dcw;)Lcom/google/android/gms/internal/ads/dcw$a;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/cxp$a;

    .line 44
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxp$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxp$a;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/cxp;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/cvy;->d()Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cve;->d:Lcom/google/android/gms/internal/ads/cvy;

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/cvy;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/cvy$a;->a(I)Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v2

    .line 48
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/cvy$a;->a(Lcom/google/android/gms/internal/ads/cwc;)Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvy$a;->a(Lcom/google/android/gms/internal/ads/cxp;)Lcom/google/android/gms/internal/ads/cvy$a;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cvy;

    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cve;->a:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/ads/csm;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/cti;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/deg;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/csm;

    goto/16 :goto_0

    .line 52
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown DEM key type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
