.class final Lcom/google/android/gms/internal/ads/cua;
.super Lcom/google/android/gms/internal/ads/csw;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csw",
        "<",
        "Lcom/google/android/gms/internal/ads/cwk;",
        "Lcom/google/android/gms/internal/ads/cwh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/cty;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cty;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cua;->a:Lcom/google/android/gms/internal/ads/cty;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/csw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cwk;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cwk;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/cwk;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwk;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dao;->a(I)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwk;->a()Lcom/google/android/gms/internal/ads/cwl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwl;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwk;->a()Lcom/google/android/gms/internal/ads/cwl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwl;->a()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 15
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/ads/deg;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cwk;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/cwh;->d()Lcom/google/android/gms/internal/ads/cwh$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwk;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/daj;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwh$a;->a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cwh$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cwk;->a()Lcom/google/android/gms/internal/ads/cwl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwh$a;->a(Lcom/google/android/gms/internal/ads/cwl;)Lcom/google/android/gms/internal/ads/cwh$a;

    move-result-object v0

    .line 6
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cwh$a;->a(I)Lcom/google/android/gms/internal/ads/cwh$a;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cwh;

    .line 8
    return-object v0
.end method
