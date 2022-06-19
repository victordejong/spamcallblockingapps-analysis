.class final Lcom/google/android/gms/internal/ads/cvl;
.super Lcom/google/android/gms/internal/ads/csz;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csz",
        "<",
        "Lcom/google/android/gms/internal/ads/ctd;",
        "Lcom/google/android/gms/internal/ads/cxp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/csz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/cxp;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxp;->b()Lcom/google/android/gms/internal/ads/cxt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxt;->a()Lcom/google/android/gms/internal/ads/cxm;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxp;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dbi;->d()[B

    move-result-object v1

    .line 5
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxp;->b()Lcom/google/android/gms/internal/ads/cxt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cxt;->b()I

    move-result v1

    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/cvo;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxm;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown hash"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/dah;

    const-string/jumbo v3, "HMACSHA1"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/dah;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    .line 10
    :goto_0
    return-object v0

    .line 9
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dah;

    const-string/jumbo v3, "HMACSHA256"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/dah;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    .line 10
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dah;

    const-string/jumbo v3, "HMACSHA512"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/dah;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    .line 7
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
