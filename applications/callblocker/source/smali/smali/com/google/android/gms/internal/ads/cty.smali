.class public final Lcom/google/android/gms/internal/ads/cty;
.super Lcom/google/android/gms/internal/ads/csx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csx",
        "<",
        "Lcom/google/android/gms/internal/ads/cwh;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/cwh;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/csz;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/internal/ads/cub;

    const-class v4, Lcom/google/android/gms/internal/ads/csm;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/cub;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/csx;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cwh;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwh;

    move-result-object v0

    .line 14
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/cwh;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwh;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dao;->a(II)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwh;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwh;->b()Lcom/google/android/gms/internal/ads/cwl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwl;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwh;->b()Lcom/google/android/gms/internal/ads/cwl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwl;->a()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 10
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/cxu$b;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/cxu$b;->b:Lcom/google/android/gms/internal/ads/cxu$b;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/csw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/csw",
            "<",
            "Lcom/google/android/gms/internal/ads/cwk;",
            "Lcom/google/android/gms/internal/ads/cwh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/cua;

    const-class v1, Lcom/google/android/gms/internal/ads/cwk;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cua;-><init>(Lcom/google/android/gms/internal/ads/cty;Ljava/lang/Class;)V

    return-object v0
.end method
