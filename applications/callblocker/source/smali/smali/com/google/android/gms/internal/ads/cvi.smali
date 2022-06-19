.class public final Lcom/google/android/gms/internal/ads/cvi;
.super Lcom/google/android/gms/internal/ads/csx;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/csx",
        "<",
        "Lcom/google/android/gms/internal/ads/cxp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/cxp;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/csz;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/internal/ads/cvl;

    const-class v4, Lcom/google/android/gms/internal/ads/ctd;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/cvl;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/csx;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/ads/csz;)V

    .line 2
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/cxt;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cvi;->b(Lcom/google/android/gms/internal/ads/cxt;)V

    return-void
.end method

.method private static b(Lcom/google/android/gms/internal/ads/cxt;)V
    .locals 2

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxt;->b()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too small"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cvo;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxt;->a()Lcom/google/android/gms/internal/ads/cxm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/cxm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 14
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "unknown hash type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxt;->b()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxt;->b()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    .line 11
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/cxt;->b()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 13
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "tag size too big"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_1
    return-void

    .line 7
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/deg;
    .locals 1

    .prologue
    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->a()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/cxp;->a(Lcom/google/android/gms/internal/ads/dbi;Lcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/cxp;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/deg;)V
    .locals 2

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/gms/internal/ads/cxp;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxp;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dao;->a(II)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxp;->c()Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dbi;->b()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 20
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v1, "key too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/cxp;->b()Lcom/google/android/gms/internal/ads/cxt;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/cvi;->b(Lcom/google/android/gms/internal/ads/cxt;)V

    .line 22
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.HmacKey"

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
            "Lcom/google/android/gms/internal/ads/cxq;",
            "Lcom/google/android/gms/internal/ads/cxp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/cvk;

    const-class v1, Lcom/google/android/gms/internal/ads/cxq;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/cvk;-><init>(Lcom/google/android/gms/internal/ads/cvi;Ljava/lang/Class;)V

    return-object v0
.end method
