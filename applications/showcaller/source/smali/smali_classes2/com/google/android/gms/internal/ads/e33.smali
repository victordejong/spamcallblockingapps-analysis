.class public final Lcom/google/android/gms/internal/ads/e33;
.super Lcom/google/android/gms/internal/ads/w13;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/w13<",
        "Lcom/google/android/gms/internal/ads/j63;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/v13;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/b33;

    const-class v2, Lcom/google/android/gms/internal/ads/i13;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/b33;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/ads/j63;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/w13;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/v13;)V

    return-void
.end method

.method static synthetic k(III)Lcom/google/android/gms/internal/ads/t13;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/google/android/gms/internal/ads/t13<",
            "Lcom/google/android/gms/internal/ads/m63;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/m63;->F()Lcom/google/android/gms/internal/ads/l63;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/l63;->r(I)Lcom/google/android/gms/internal/ads/l63;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/p63;->D()Lcom/google/android/gms/internal/ads/o63;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/o63;->q(I)Lcom/google/android/gms/internal/ads/o63;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/p63;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/l63;->q(Lcom/google/android/gms/internal/ads/p63;)Lcom/google/android/gms/internal/ads/l63;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/m63;

    new-instance p1, Lcom/google/android/gms/internal/ads/t13;

    .line 5
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/t13;-><init>(Ljava/lang/Object;I)V

    return-object p1
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
.end method

.method public final bridge synthetic c(Lcom/google/android/gms/internal/ads/zzgex;)Lcom/google/android/gms/internal/ads/mf3;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/j63;->F(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/j63;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/ads/mf3;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/j63;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j63;->C()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/gc3;->b(II)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j63;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgex;->zzc()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gc3;->a(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j63;->D()Lcom/google/android/gms/internal/ads/p63;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p63;->C()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/j63;->D()Lcom/google/android/gms/internal/ads/p63;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/p63;->C()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final h()Lcom/google/android/gms/internal/ads/u13;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/u13<",
            "Lcom/google/android/gms/internal/ads/m63;",
            "Lcom/google/android/gms/internal/ads/j63;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/c33;

    const-class v1, Lcom/google/android/gms/internal/ads/m63;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/c33;-><init>(Lcom/google/android/gms/internal/ads/e33;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final i()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
