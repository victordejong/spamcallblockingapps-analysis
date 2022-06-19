.class public final Lcom/facebook/ads/redexgen/X/Gd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QF;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8d;

.field public A01:Ljava/util/concurrent/Executor;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/QK;

.field public A04:Lcom/facebook/ads/redexgen/X/QV;

.field public final A05:Lcom/facebook/ads/redexgen/X/QP;

.field public final A06:Lcom/facebook/ads/redexgen/X/QU;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 34709
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gd;->A0B()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gd;->A0A()V

    const-class v0, Lcom/facebook/ads/redexgen/X/QF;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gd;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QK;Lcom/facebook/ads/redexgen/X/8d;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 34710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34711
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gy;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gy;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A05:Lcom/facebook/ads/redexgen/X/QP;

    .line 34712
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Gc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    .line 34713
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gd;->A0C()V

    .line 34714
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    .line 34715
    new-instance v0, Lcom/facebook/ads/redexgen/X/4g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4g;-><init>(Lcom/facebook/ads/redexgen/X/Gd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    .line 34716
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gd;->A01:Ljava/util/concurrent/Executor;

    .line 34717
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 34718
    return-void
.end method

.method private final A00(Ljava/net/HttpURLConnection;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34719
    const/4 v1, 0x0

    .line 34720
    .local p0, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QU;->ACH(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    .line 34721
    if-eqz v1, :cond_0

    .line 34722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/QU;->AEq(Ljava/io/OutputStream;[B)V

    .line 34723
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 34724
    if-eqz v1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34725
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34726
    :catch_0
    :cond_1
    return v0

    .line 34727
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 34728
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34729
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/QS;
        }
    .end annotation

    .line 34730
    const/16 v2, 0xcf

    const/4 v1, 0x7

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    .line 34731
    .local p1, "uc":Ljava/net/HttpURLConnection;
    const/4 v2, 0x0

    .line 34732
    .local v2, "httpResponse":Lcom/facebook/ads/redexgen/X/QE;
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Gd;->A02:Z

    .line 34733
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L1;->A04()Z

    move-result v0

    .line 34734
    .local v0, "isE2E":Z
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gd;->A09()Ljava/net/Proxy;

    move-result-object v1

    .line 34735
    .local v6, "proxy":Ljava/net/Proxy;
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 34736
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Gd;->A0I(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QR;)V

    .line 34737
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Gd;->A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QR;)V

    .line 34738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34739
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A07()[B

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/QV;->A8l(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 34740
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 34741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A02:Z

    .line 34742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A01()Ljava/util/Set;

    move-result-object v5

    .line 34743
    .local v2, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A02()Ljava/util/Set;

    move-result-object v4

    .line 34744
    .local v7, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 34745
    :cond_1
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0

    .line 34746
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    const/4 v1, 0x1

    .line 34747
    .local v0, "pinCerts":Z
    :goto_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x1

    .line 34748
    .local v1, "pinKeys":Z
    :cond_3
    instance-of v0, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    if-eqz v7, :cond_5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34749
    :cond_4
    :try_start_1
    move-object v0, v3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/QW;->A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_4
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34750
    :catch_0
    move-exception v5

    goto :goto_3

    .line 34751
    .end local v3
    :catch_1
    :try_start_2
    move-exception v5

    .line 34752
    .local v3, "e":Ljava/security/cert/CertificateException;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1i:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_4

    .line 34753
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1h:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 34754
    :cond_5
    :goto_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A07()[B

    move-result-object v0

    if-eqz v0, :cond_6

    .line 34755
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A07()[B

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A00(Ljava/net/HttpURLConnection;[B)I

    .line 34756
    :cond_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34757
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Gd;->A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v1

    .end local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p0, "httpResponse":Lcom/facebook/ads/redexgen/X/QE;
    goto :goto_5

    .line 34758
    :cond_7
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ge;

    invoke-direct {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Ge;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34759
    .end local v2
    .end local v1    # "pinKeys":Z
    .end local v0    # "pinCerts":Z
    .end local v6    # "proxy":Ljava/net/Proxy;
    .end local v2
    .end local v7    # "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v0
    .restart local p0    # "httpResponse":Lcom/facebook/ads/redexgen/X/QE;
    :goto_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/QV;->A8m(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 34761
    :cond_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34762
    return-object v1

    .line 34763
    :catch_2
    move-exception v1

    .line 34764
    .local p0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Gd;->A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v2

    .line 34765
    if-eqz v2, :cond_12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v0

    if-lez v0, :cond_12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_b

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    const-string v1, "5gTc2vt1J3D6llCgnQfsLExV7BLlBa3r"

    const/4 v0, 0x1

    aput-object v1, v4, v0

    if-eqz v5, :cond_9

    .line 34767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QV;->A8m(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 34768
    :cond_9
    if-eqz v3, :cond_a

    .line 34769
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34770
    :cond_a
    return-object v2

    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34771
    .local v1, "ee":Ljava/lang/Exception;
    :catch_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34772
    .restart local p1    # "uc":Ljava/net/HttpURLConnection;
    .restart local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "pinCerts":Z
    :catchall_0
    if-eqz v2, :cond_e

    :try_start_6
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v0

    if-lez v0, :cond_e
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 34773
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 34774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QV;->A8m(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 34775
    :cond_c
    if-eqz v3, :cond_d

    .line 34776
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34777
    :cond_d
    return-object v2

    .line 34778
    :cond_e
    :try_start_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/QS;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QE;)V

    goto :goto_7

    .line 34779
    .end local v1    # "ee":Ljava/lang/Exception;
    :goto_6
    if-eqz v2, :cond_11

    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v0

    if-lez v0, :cond_11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 34780
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QV;->A8m(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 34782
    :cond_f
    if-eqz v3, :cond_10

    .line 34783
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34784
    :cond_10
    return-object v2

    .line 34785
    :cond_11
    :try_start_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/QS;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QE;)V

    goto :goto_7

    :cond_12
    new-instance v0, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/QS;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QE;)V

    .end local p1    # "uc":Ljava/net/HttpURLConnection;
    .end local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v0    # "pinCerts":Z
    :goto_7
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 34786
    .end local p0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    .end local p0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 34787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QV;->A8m(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 34788
    :cond_13
    if-eqz v3, :cond_14

    .line 34789
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34790
    :cond_14
    throw v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34792
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gd;->A0D(Lcom/facebook/ads/redexgen/X/QR;)V

    .line 34793
    :cond_0
    const/4 v3, 0x0

    .line 34794
    .local p0, "httpResponse":Lcom/facebook/ads/redexgen/X/QE;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gd;->A01(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/QS; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34795
    :catch_0
    move-exception v2

    .line 34796
    .local p1, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QS;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/QS;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QE;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/QU;->AA8(Lcom/facebook/ads/redexgen/X/QS;)Z

    goto :goto_0

    .line 34797
    .end local p1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 34798
    .local p1, "hre":Lcom/facebook/ads/redexgen/X/QS;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/QU;->AA8(Lcom/facebook/ads/redexgen/X/QS;)Z

    .line 34799
    .end local p1    # "hre":Lcom/facebook/ads/redexgen/X/QS;
    :goto_0
    return-object v3
.end method

.method private final A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QT;Lcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34800
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gi;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QT;Lcom/facebook/ads/redexgen/X/QN;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A02(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34801
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gh;

    const/4 v2, 0x0

    move-object v5, p4

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gh;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QT;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QN;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A02(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34802
    const/4 v2, 0x0

    .line 34803
    .local p0, "err":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 34804
    .local p1, "responseBody":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 34805
    if-eqz v2, :cond_0

    .line 34806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QU;->ACr(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 34807
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ge;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ge;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 34808
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34809
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34810
    :catch_0
    :cond_1
    return-object v0

    .line 34811
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 34812
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34813
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34814
    const/4 v2, 0x0

    .line 34815
    .local p0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 34816
    .local p1, "responseBody":[B
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QU;->ACG(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 34817
    if-eqz v2, :cond_0

    .line 34818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QU;->ACr(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 34819
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ge;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ge;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 34820
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34821
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34822
    :catch_0
    :cond_1
    return-object v0

    .line 34823
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 34824
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34825
    :catch_1
    :cond_2
    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gd;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A08(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34826
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34827
    const v0, 0xf00d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 34828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QU;->ACF(Ljava/lang/String;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 34829
    :catch_0
    move-exception v4

    .line 34830
    .local p0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x13

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A09()Ljava/net/Proxy;
    .locals 5

    .line 34831
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 34832
    .local v0, "proxy":Ljava/net/Proxy;
    const/16 v3, 0xb3

    const/16 v2, 0xe

    const/16 v1, 0x2b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34833
    .local v3, "proxyAddress":Ljava/lang/String;
    const/16 v3, 0xc1

    const/16 v2, 0xe

    const/4 v1, 0x1

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34834
    .local v2, "portStr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 34835
    .local v1, "port":I
    if-eqz v1, :cond_0

    .line 34836
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34837
    .local v1, "e":Ljava/lang/NumberFormatException;
    :catch_0
    return-object v0

    .line 34838
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez v3, :cond_1

    const v1, 0xffff

    if-gt v3, v1, :cond_1

    .line 34839
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 34840
    :cond_1
    return-object v0
.end method

.method public static A0A()V
    .locals 1

    const/16 v0, 0xd6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gd;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x3bt
        0x39t
        0x66t
        0x6bt
        0xet
        0x66t
        0x64t
        0x4dt
        0x40t
        0x9t
        0x4dt
        0x4ft
        0x1et
        0x5dt
        0x4bt
        0x4ct
        0x52t
        0x1et
        0x2at
        0x63t
        0x79t
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6bt
        0x2at
        0x7ct
        0x6bt
        0x66t
        0x63t
        0x6et
        0x2at
        0x5ft
        0x58t
        0x46t
        0x50t
        0x1ft
        0x16t
        0x50t
        0x4bt
        0x78t
        0x74t
        0x17t
        0x0t
        0x74t
        0x69t
        0x74t
        0x37t
        0x3bt
        0x49t
        0x4ft
        0x3bt
        0x26t
        0x3bt
        0x26t
        0x2at
        0x7et
        0x78t
        0x73t
        0x63t
        0x64t
        0x6dt
        0x2at
        0x5et
        0x4t
        0x22t
        0x2bt
        0x26t
        0x37t
        0x34t
        0x22t
        0x23t
        0x47t
        0x33t
        0x2et
        0x2at
        0x22t
        0x47t
        0x5at
        0x47t
        0x47t
        0x65t
        0x74t
        0x74t
        0x69t
        0x6et
        0x67t
        0x20t
        0x74t
        0x68t
        0x65t
        0x20t
        0x68t
        0x74t
        0x74t
        0x70t
        0x20t
        0x72t
        0x65t
        0x73t
        0x70t
        0x6ft
        0x6et
        0x73t
        0x65t
        0x20t
        0x74t
        0x69t
        0x6dt
        0x65t
        0x64t
        0x20t
        0x6ft
        0x75t
        0x74t
        0x26t
        0x27t
        0x35t
        0x5et
        0x4bt
        0x23t
        0x32t
        0x32t
        0x2et
        0x2bt
        0x21t
        0x23t
        0x36t
        0x2bt
        0x2dt
        0x2ct
        0x6dt
        0x3at
        0x6ft
        0x35t
        0x35t
        0x35t
        0x6ft
        0x24t
        0x2dt
        0x30t
        0x2ft
        0x6ft
        0x37t
        0x30t
        0x2et
        0x27t
        0x2ct
        0x21t
        0x2dt
        0x26t
        0x27t
        0x26t
        0x79t
        0x21t
        0x2at
        0x23t
        0x30t
        0x31t
        0x27t
        0x36t
        0x7ft
        0x17t
        0x16t
        0x4t
        0x6ft
        0x7at
        0x14t
        0x2t
        0x5t
        0x1bt
        0x57t
        0x5at
        0x1ct
        0x57t
        0x5at
        0x1et
        0x52t
        0x4et
        0x4et
        0x4at
        0x14t
        0x4at
        0x48t
        0x55t
        0x42t
        0x43t
        0x72t
        0x55t
        0x49t
        0x4et
        0x78t
        0x64t
        0x64t
        0x60t
        0x3et
        0x60t
        0x62t
        0x7ft
        0x68t
        0x69t
        0x40t
        0x7ft
        0x62t
        0x64t
        0x1dt
        0x16t
        0x7t
        0x4t
        0x1ct
        0x1t
        0x18t
    .end array-data
.end method

.method public static A0B()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QhNFYJC9gEUd0JRpeTZcIYaCPwaofmcY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H7lFuH2c6lRKE1KzrEc8woYXA3m4qwgD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VasthUCsKtAfJQ49O69n9k2VDB8sk6Ry"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CLNAbcda3kskZ9l1P61KK9o7E81JDy0P"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FTSbac7VR6oRDuoXxASKkUBG2ay4Jl1O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oDWQMCtwqliv6oQHoqRk4BTd2HTxQUcC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "maa7C87UpzAlS2qduOc8uqrscl2NkhxH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized A0C()V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Gd;

    monitor-enter v1

    .line 34841
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34842
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34843
    :cond_0
    monitor-exit v1

    return-void

    .line 34844
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/QR;)V
    .locals 7

    .line 34845
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34846
    .local p0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A04()Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QQ;->A06:Lcom/facebook/ads/redexgen/X/QQ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QQ;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v2, 0x29

    const/4 v1, 0x1

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A07()[B

    move-result-object v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    const-string v1, "MgpsgMtpOSh21D9UNcI3ZUtvoefc4JIC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_0

    .line 34847
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34848
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A07()[B

    move-result-object v5

    const/16 v2, 0x75

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34849
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34850
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QN;->A06()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 34851
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34852
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34853
    const/16 v2, 0x42

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34854
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34855
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34856
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 34857
    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34858
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QR;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34859
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34860
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34861
    .local p1, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A0F(Ljava/lang/String;II)V

    .line 34862
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/QR;Lcom/facebook/ads/redexgen/X/QG;)V
    .locals 2

    .line 34863
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gd;->A05:Lcom/facebook/ads/redexgen/X/QP;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/QP;->A5d(Lcom/facebook/ads/redexgen/X/Gd;Lcom/facebook/ads/redexgen/X/QG;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    .line 34864
    .local p0, "executor":Lcom/facebook/ads/redexgen/X/QO;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QO;->A5C(Lcom/facebook/ads/redexgen/X/QR;)V

    .line 34865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34866
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gd;->A0D(Lcom/facebook/ads/redexgen/X/QR;)V

    .line 34867
    :cond_0
    return-void
.end method

.method private A0F(Ljava/lang/String;II)V
    .locals 4

    .line 34868
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gd;->A09:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34869
    .local p0, "tagWithCount":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    .line 34870
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34871
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Gd;->A0F(Ljava/lang/String;II)V

    .line 34872
    :cond_0
    return-void
.end method

.method private A0G(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QG;Lcom/facebook/ads/redexgen/X/QN;)V
    .locals 6

    .line 34873
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gh;

    const/4 v2, 0x0

    move-object v5, p5

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gh;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QT;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QN;)V

    .line 34874
    .local p0, "req":Lcom/facebook/ads/redexgen/X/Gh;
    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/Gd;->A0E(Lcom/facebook/ads/redexgen/X/QR;Lcom/facebook/ads/redexgen/X/QG;)V

    .line 34875
    return-void
.end method

.method private A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QR;)V
    .locals 5

    .line 34876
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QN;->A06()Ljava/util/Map;

    move-result-object v4

    .line 34877
    .local p0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QN;->A05()Lcom/facebook/ads/redexgen/X/QD;

    move-result-object v3

    .line 34878
    .local p1, "commonRequestHeadersFactory":Lcom/facebook/ads/redexgen/X/QD;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34879
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34880
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34881
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 34882
    :cond_0
    if-eqz v3, :cond_1

    .line 34883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    .line 34884
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A03()Z

    move-result v0

    .line 34885
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/QD;->A5Q(Z)Ljava/util/Map;

    move-result-object v3

    .line 34886
    .local p2, "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34887
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 34888
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 34889
    .end local v4    # "name":Ljava/lang/String;
    .end local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 34890
    .end local p2    # "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private final A0I(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QR;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34891
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v1

    .line 34892
    .local p0, "configuration":Lcom/facebook/ads/redexgen/X/QN;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QN;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34893
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QN;->A02()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 34894
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    .line 34895
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QR;->A04()Lcom/facebook/ads/redexgen/X/QQ;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QR;->A05()Ljava/lang/String;

    move-result-object v0

    .line 34896
    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QU;->ACX(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QQ;Ljava/lang/String;)V

    .line 34897
    return-void
.end method

.method private final A0J(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/QR;)Z
    .locals 8

    .line 34898
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v7

    .line 34899
    .local p0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/QN;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, p2

    const-wide/16 v0, 0xa

    add-long/2addr v3, v0

    .line 34900
    .local p1, "elapsedTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34901
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x43

    const/16 v1, 0xf

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    const/4 v1, 0x7

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34902
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/QN;->A00()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x31

    const/4 v1, 0x7

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34903
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/QN;->A02()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34904
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/QV;->A8O(Ljava/lang/String;)V

    .line 34905
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A02:Z

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 34906
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/QN;->A02()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gd;->A08:[Ljava/lang/String;

    const-string v1, "tgQXMymp9cIZW"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ltz v5, :cond_1

    :goto_0
    return v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34907
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/QN;->A00()I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_4

    :goto_1
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final A0K(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/QS;
        }
    .end annotation

    .line 34908
    move-object/from16 v5, p0

    move-object v5, v5

    const/4 v6, 0x0

    .line 34909
    .local v5, "numTries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 34910
    .local v0, "startTime":J
    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QN;->A01()I

    move-result v4

    .line 34911
    .local v14, "maxRetries":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QN;->A03()I

    move-result v1

    int-to-long v7, v1

    .line 34912
    .local v6, "throttleTimeMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QR;->A03()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QN;->A04()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v11, v1

    .line 34913
    .end local v5    # "numTries":I
    .local v0, "numTries":I
    .local v4, "endTimeMillis":J
    .local v14, "startTime":J
    :goto_0
    if-ge v6, v4, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v1, v11, v2

    if-lez v1, :cond_a

    .line 34914
    :try_start_0
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/QV;->A88()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34915
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/Gd;->A04:Lcom/facebook/ads/redexgen/X/QV;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    const/4 v2, 0x4

    const/16 v1, 0x61

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x38

    const/16 v2, 0x9

    const/16 v1, 0x1b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34916
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QR;->A06()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34917
    invoke-interface {v9, v1}, Lcom/facebook/ads/redexgen/X/QV;->A8O(Ljava/lang/String;)V

    .line 34918
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/QS; {:try_start_0 .. :try_end_0} :catch_0

    .line 34919
    .end local v14    # "startTime":J
    .local v12, "startTime":J
    :try_start_1
    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A01(Lcom/facebook/ads/redexgen/X/QR;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v3

    .line 34920
    .local v5, "res":Lcom/facebook/ads/redexgen/X/QE;
    if-eqz v3, :cond_2

    .line 34921
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 34922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    .line 34923
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QE;->A5h()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v9, v1

    .line 34924
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    array-length v1, v1

    int-to-long v1, v1

    .line 34925
    :goto_1
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v22

    const/16 v23, 0x0

    .line 34926
    move-wide/from16 v18, v9

    move-wide/from16 v20, v1

    invoke-interface/range {v13 .. v23}, Lcom/facebook/ads/redexgen/X/8d;->A8f(JJJJILjava/lang/Exception;)V

    goto :goto_4
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/QS; {:try_start_1 .. :try_end_1} :catch_1

    .line 34927
    .end local v12    # "startTime":J
    .restart local v14    # "startTime":J
    :catch_0
    move-exception v3

    goto :goto_2

    .end local v5    # "res":Lcom/facebook/ads/redexgen/X/QE;
    :catch_1
    move-exception v3

    .line 34928
    .end local v14    # "startTime":J
    .restart local v12    # "startTime":J
    .local v6, "e":Lcom/facebook/ads/redexgen/X/QS;
    :goto_2
    invoke-direct {v5, v3, v14, v15, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A0J(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/QR;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v4, -0x1

    if-ge v6, v1, :cond_3

    .line 34929
    .end local v12    # "startTime":J
    .restart local v14    # "startTime":J
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 34930
    :cond_3
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Gd;->A06:Lcom/facebook/ads/redexgen/X/QU;

    invoke-interface {v1, v3}, Lcom/facebook/ads/redexgen/X/QU;->AA8(Lcom/facebook/ads/redexgen/X/QS;)Z

    move-result v1

    .line 34931
    .local v1, "isRecoverable":Z
    if-eqz v1, :cond_5

    add-int/lit8 v1, v4, -0x1

    if-ge v6, v1, :cond_5

    .line 34932
    const-wide/16 v1, 0x0

    cmp-long v9, v7, v1

    if-lez v9, :cond_2

    .line 34933
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 34934
    :goto_4
    return-object v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 34935
    :catch_2
    move-exception v23

    .line 34936
    .local v1, "ie":Ljava/lang/InterruptedException;
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 34937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x0

    .line 34938
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    if-nez v4, :cond_4

    :goto_5
    const/16 v22, 0x0

    .line 34939
    move-wide/from16 v20, v1

    invoke-interface/range {v13 .. v23}, Lcom/facebook/ads/redexgen/X/8d;->A8f(JJJJILjava/lang/Exception;)V

    .line 34940
    throw v3

    .line 34941
    :cond_4
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    array-length v0, v0

    int-to-long v1, v0

    goto :goto_5

    .line 34942
    .end local v14    # "startTime":J
    .restart local v6    # "e":Lcom/facebook/ads/redexgen/X/QS;
    .restart local v1    # "ie":Ljava/lang/InterruptedException;
    .restart local v12    # "startTime":J
    :cond_5
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QS;->A00()Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v7

    .line 34943
    .local v5, "response":Lcom/facebook/ads/redexgen/X/QE;
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 34944
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v14

    .line 34945
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A5h()[B

    move-result-object v1

    if-nez v1, :cond_9

    .line 34946
    :cond_6
    const-wide/16 v1, 0x0

    .line 34947
    :goto_6
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    if-nez v4, :cond_8

    const-wide/16 v4, 0x0

    .line 34948
    :goto_7
    if-nez v7, :cond_7

    const/16 v16, 0x0

    .line 34949
    :goto_8
    move-object v7, v6

    move-wide v8, v14

    move-wide v12, v1

    move-wide v14, v4

    move-object/from16 v17, v3

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/8d;->A8f(JJJJILjava/lang/Exception;)V

    .line 34950
    throw v3

    .line 34951
    :cond_7
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A7L()I

    move-result v16

    goto :goto_8

    .line 34952
    :cond_8
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    array-length v0, v0

    int-to-long v4, v0

    goto :goto_7

    .line 34953
    :cond_9
    invoke-interface {v7}, Lcom/facebook/ads/redexgen/X/QE;->A5h()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_6

    .line 34954
    .end local v5    # "response":Lcom/facebook/ads/redexgen/X/QE;
    .end local v6    # "e":Lcom/facebook/ads/redexgen/X/QS;
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    .end local v12    # "startTime":J
    .restart local v14    # "startTime":J
    :cond_a
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/Gd;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 34955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x0

    .line 34956
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    if-nez v1, :cond_b

    const-wide/16 v0, 0x0

    :goto_9
    const/16 v22, 0x0

    const/16 v4, 0x52

    const/16 v3, 0x23

    const/16 v2, 0x11

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 34957
    move-wide/from16 v20, v0

    move-object/from16 v23, v2

    invoke-interface/range {v13 .. v23}, Lcom/facebook/ads/redexgen/X/8d;->A8f(JJJJILjava/lang/Exception;)V

    .line 34958
    const/4 v0, 0x0

    return-object v0

    .line 34959
    :cond_b
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QR;->A04:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_9
.end method

.method public final ACP(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/QE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34960
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/QT;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/QT;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    .line 34961
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A00()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    .line 34962
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QT;Lcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    return-object v0
.end method

.method public final ACQ(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/QE;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    .line 34964
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A00()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v3

    .line 34965
    const/16 v2, 0x7a

    const/16 v1, 0x2f

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Gd;->A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QE;

    move-result-object v0

    return-object v0
.end method

.method public final ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QG;)V
    .locals 6

    .line 34966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gd;->A03:Lcom/facebook/ads/redexgen/X/QK;

    .line 34967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A00()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v5

    .line 34968
    const/16 v2, 0x7a

    const/16 v1, 0x2f

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gd;->A07(III)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, p3

    move-object v3, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gd;->A0G(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QG;Lcom/facebook/ads/redexgen/X/QN;)V

    .line 34969
    return-void
.end method
