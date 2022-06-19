.class public final Lcom/google/android/gms/internal/ads/c53;
.super Lcom/google/android/gms/internal/ads/w13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/w13<",
        "Lcom/google/android/gms/internal/ads/r83;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/v13;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/a53;

    const-class v2, Lcom/google/android/gms/internal/ads/a23;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/a53;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/r83;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/w13;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/v13;)V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/x83;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c53;->n(Lcom/google/android/gms/internal/ads/x83;)V

    return-void
.end method

.method public static final l(Lcom/google/android/gms/internal/ads/r83;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/r83;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gc3;->b(II)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/r83;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/r83;->D()Lcom/google/android/gms/internal/ads/x83;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/c53;->n(Lcom/google/android/gms/internal/ads/x83;)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic m(IIII)Lcom/google/android/gms/internal/ads/t13;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/u83;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/t13;

    invoke-static {}, Lcom/google/android/gms/internal/ads/u83;->F()Lcom/google/android/gms/internal/ads/t83;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/x83;->D()Lcom/google/android/gms/internal/ads/w83;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/w83;->r(I)Lcom/google/android/gms/internal/ads/w83;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/w83;->q(I)Lcom/google/android/gms/internal/ads/w83;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/x83;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/t83;->q(Lcom/google/android/gms/internal/ads/x83;)Lcom/google/android/gms/internal/ads/t83;

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/t83;->r(I)Lcom/google/android/gms/internal/ads/t83;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/u83;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static n(Lcom/google/android/gms/internal/ads/x83;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_a

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->H()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    const-string v2, "tag size too big"

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p0

    const/16 v0, 0x1c

    if-gt p0, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_5

    goto :goto_0

    .line 9
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p0

    const/16 v0, 0x30

    if-gt p0, v0, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/x83;->C()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_9

    :goto_0
    return-void

    .line 13
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/r83;->F(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/r83;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/r83;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/c53;->l(Lcom/google/android/gms/internal/ads/r83;)V

    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/u13;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/u13<",
            "Lcom/google/android/gms/internal/ads/u83;",
            "Lcom/google/android/gms/internal/ads/r83;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/b53;

    const-class v1, Lcom/google/android/gms/internal/ads/u83;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/b53;-><init>(Lcom/google/android/gms/internal/ads/c53;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
