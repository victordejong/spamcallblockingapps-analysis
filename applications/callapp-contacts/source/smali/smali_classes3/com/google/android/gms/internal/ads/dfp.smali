.class public final Lcom/google/android/gms/internal/ads/dfp;
.super Lcom/google/android/gms/internal/ads/dcu;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcu<",
        "Lcom/google/android/gms/internal/ads/dhy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dhy;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/dcw;

    new-instance v2, Lcom/google/android/gms/internal/ads/dfs;

    const-class v3, Lcom/google/android/gms/internal/ads/ddb;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/dfs;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dcu;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/dcw;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dhy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1004
    iget v0, p0, Lcom/google/android/gms/internal/ads/dhy;->zzihc:I

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dla;->b(I)V

    .line 1011
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dhy;->zzihd:Lcom/google/android/gms/internal/ads/dlw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dlw;->b()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dhy;->a()Lcom/google/android/gms/internal/ads/did;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dfp;->a(Lcom/google/android/gms/internal/ads/did;)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Lcom/google/android/gms/internal/ads/did;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2005
    iget v0, p0, Lcom/google/android/gms/internal/ads/did;->zzihi:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/dfu;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/did;->a()Lcom/google/android/gms/internal/ads/dhw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dhw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 5005
    iget p0, p0, Lcom/google/android/gms/internal/ads/did;->zzihi:I

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4005
    :cond_2
    iget p0, p0, Lcom/google/android/gms/internal/ads/did;->zzihi:I

    const/16 v0, 0x20

    if-gt p0, v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3005
    :cond_4
    iget p0, p0, Lcom/google/android/gms/internal/ads/did;->zzihi:I

    const/16 v0, 0x14

    if-gt p0, v0, :cond_5

    :goto_0
    return-void

    .line 14
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dlw;)Lcom/google/android/gms/internal/ads/dot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzenn;
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dmt;->a()Lcom/google/android/gms/internal/ads/dmt;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dhy;->a(Lcom/google/android/gms/internal/ads/dlw;Lcom/google/android/gms/internal/ads/dmt;)Lcom/google/android/gms/internal/ads/dhy;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/google/android/gms/internal/ads/dhy;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dfp;->a(Lcom/google/android/gms/internal/ads/dhy;)V

    return-void
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dih$a;
    .locals 1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/dih$a;->zzika:Lcom/google/android/gms/internal/ads/dih$a;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/dcx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dcx<",
            "Lcom/google/android/gms/internal/ads/dic;",
            "Lcom/google/android/gms/internal/ads/dhy;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/dfr;

    const-class v1, Lcom/google/android/gms/internal/ads/dic;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/dfr;-><init>(Lcom/google/android/gms/internal/ads/dfp;Ljava/lang/Class;)V

    return-object v0
.end method
