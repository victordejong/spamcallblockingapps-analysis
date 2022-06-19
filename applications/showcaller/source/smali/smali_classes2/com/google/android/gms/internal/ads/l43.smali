.class public final Lcom/google/android/gms/internal/ads/l43;
.super Lcom/google/android/gms/internal/ads/j23;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/j23<",
        "Lcom/google/android/gms/internal/ads/c83;",
        "Lcom/google/android/gms/internal/ads/f83;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/l43;->d:[B

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/v13;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/j43;

    const-class v2, Lcom/google/android/gms/internal/ads/m13;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/j43;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/c83;

    const-class v2, Lcom/google/android/gms/internal/ads/f83;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/j23;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/v13;)V

    return-void
.end method

.method static synthetic k()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/l43;->d:[B

    return-object v0
.end method

.method static synthetic l(IIILcom/google/android/gms/internal/ads/r13;[BI)Lcom/google/android/gms/internal/ads/t13;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/google/android/gms/internal/ads/r13;",
            "[BI)",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/w73;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/google/android/gms/internal/ads/t13;

    invoke-static {}, Lcom/google/android/gms/internal/ads/w73;->E()Lcom/google/android/gms/internal/ads/v73;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/k83;->D()Lcom/google/android/gms/internal/ads/j83;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/j83;->r(I)Lcom/google/android/gms/internal/ads/j83;

    const/4 v2, 0x5

    .line 4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/j83;->s(I)Lcom/google/android/gms/internal/ads/j83;

    .line 5
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/j83;->q(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/j83;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/ads/k83;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/d93;->E()Lcom/google/android/gms/internal/ads/c93;

    move-result-object v0

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/r13;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c93;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/c93;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/r13;->b()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/c93;->r(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/c93;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/r13;->d()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/c93;->s(I)Lcom/google/android/gms/internal/ads/c93;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/d93;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/t73;->D()Lcom/google/android/gms/internal/ads/s73;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/s73;->q(Lcom/google/android/gms/internal/ads/d93;)Lcom/google/android/gms/internal/ads/s73;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/t73;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/z73;->E()Lcom/google/android/gms/internal/ads/y73;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/y73;->q(Lcom/google/android/gms/internal/ads/k83;)Lcom/google/android/gms/internal/ads/y73;

    .line 15
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/y73;->r(Lcom/google/android/gms/internal/ads/t73;)Lcom/google/android/gms/internal/ads/y73;

    .line 16
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/y73;->s(I)Lcom/google/android/gms/internal/ads/y73;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/z73;

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/v73;->q(Lcom/google/android/gms/internal/ads/z73;)Lcom/google/android/gms/internal/ads/v73;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/w73;

    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/c83;->F(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/c83;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/c83;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c83;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzr()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c83;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gc3;->b(II)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/c83;->D()Lcom/google/android/gms/internal/ads/f83;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f83;->D()Lcom/google/android/gms/internal/ads/z73;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/u43;->a(Lcom/google/android/gms/internal/ads/z73;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ECIES private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Lcom/google/android/gms/internal/ads/u13;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/u13<",
            "Lcom/google/android/gms/internal/ads/w73;",
            "Lcom/google/android/gms/internal/ads/c83;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/k43;

    const-class v1, Lcom/google/android/gms/internal/ads/w73;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/k43;-><init>(Lcom/google/android/gms/internal/ads/l43;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
