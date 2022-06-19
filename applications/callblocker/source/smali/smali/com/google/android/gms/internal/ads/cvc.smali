.class final Lcom/google/android/gms/internal/ads/cvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/cxk;)Lcom/google/android/gms/internal/ads/czt;
    .locals 4

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/cvf;->b:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxk;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 16
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "unknown curve type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/czt;->a:Lcom/google/android/gms/internal/ads/czt;

    .line 15
    :goto_0
    return-object v0

    .line 14
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/czt;->b:Lcom/google/android/gms/internal/ads/czt;

    goto :goto_0

    .line 15
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/czt;->c:Lcom/google/android/gms/internal/ads/czt;

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cww;)Lcom/google/android/gms/internal/ads/czw;
    .locals 4

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/ads/cvf;->c:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cww;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 21
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "unknown point format: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/czw;->a:Lcom/google/android/gms/internal/ads/czw;

    .line 20
    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/czw;->c:Lcom/google/android/gms/internal/ads/czw;

    goto :goto_0

    .line 20
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/czw;->b:Lcom/google/android/gms/internal/ads/czw;

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cxm;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/cvf;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 11
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "hash unsupported for HMAC: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_0
    const-string/jumbo v0, "HmacSha1"

    .line 10
    :goto_0
    return-object v0

    .line 9
    :pswitch_1
    const-string/jumbo v0, "HmacSha256"

    goto :goto_0

    .line 10
    :pswitch_2
    const-string/jumbo v0, "HmacSha512"

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

.method public static a(Lcom/google/android/gms/internal/ads/cxc;)V
    .locals 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxc;->a()Lcom/google/android/gms/internal/ads/cxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxh;->a()Lcom/google/android/gms/internal/ads/cxk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxk;)Lcom/google/android/gms/internal/ads/czt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/czr;->a(Lcom/google/android/gms/internal/ads/czt;)Ljava/security/spec/ECParameterSpec;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxc;->a()Lcom/google/android/gms/internal/ads/cxh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cxh;->b()Lcom/google/android/gms/internal/ads/cxm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvc;->a(Lcom/google/android/gms/internal/ads/cxm;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxc;->c()Lcom/google/android/gms/internal/ads/cww;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/cww;->a:Lcom/google/android/gms/internal/ads/cww;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown EC point format"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxc;->b()Lcom/google/android/gms/internal/ads/cwy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cwy;->a()Lcom/google/android/gms/internal/ads/cya;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cti;->a(Lcom/google/android/gms/internal/ads/cya;)Lcom/google/android/gms/internal/ads/cxu;

    .line 6
    return-void
.end method
