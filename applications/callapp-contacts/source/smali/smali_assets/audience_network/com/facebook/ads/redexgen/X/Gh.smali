.class public final Lcom/facebook/ads/redexgen/X/Gh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QK;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8d;

.field public A01:Ljava/util/concurrent/Executor;

.field public A02:Z

.field public A03:Lcom/facebook/ads/redexgen/X/QP;

.field public A04:Lcom/facebook/ads/redexgen/X/Qa;

.field public final A05:Lcom/facebook/ads/redexgen/X/QU;

.field public final A06:Lcom/facebook/ads/redexgen/X/QZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 34887
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gh;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gh;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/QK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gh;->A09:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QP;Lcom/facebook/ads/redexgen/X/8d;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 34888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34889
    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HK;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:Lcom/facebook/ads/redexgen/X/QU;

    .line 34890
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ge;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ge;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    .line 34891
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Gh;->A0B()V

    .line 34892
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    .line 34893
    new-instance v0, Lcom/facebook/ads/redexgen/X/4g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4g;-><init>(Lcom/facebook/ads/redexgen/X/Gh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    .line 34894
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Ljava/util/concurrent/Executor;

    .line 34895
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 34896
    return-void
.end method

.method private final A00(Ljava/net/HttpURLConnection;[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34897
    const/4 v1, 0x0

    .line 34898
    .local p0, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QZ;->ACH(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    .line 34899
    if-eqz v1, :cond_0

    .line 34900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/QZ;->AEn(Ljava/io/OutputStream;[B)V

    .line 34901
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 34902
    if-eqz v1, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34903
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34904
    :catch_0
    :cond_1
    return v0

    .line 34905
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 34906
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34907
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/QX;
        }
    .end annotation

    .line 34908
    const/16 v2, 0xb3

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    .line 34909
    .local p1, "uc":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    .line 34910
    .local v2, "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:Z

    .line 34911
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A08(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    .line 34912
    invoke-direct {p0, v4, p1}, Lcom/facebook/ads/redexgen/X/Gh;->A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QW;)V

    .line 34913
    invoke-direct {p0, v4, p1}, Lcom/facebook/ads/redexgen/X/Gh;->A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QW;)V

    .line 34914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A06()[B

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Qa;->A8j(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    .line 34916
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 34917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:Z

    .line 34918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A01()Ljava/util/Set;

    move-result-object v5

    .line 34919
    .local v6, "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A02()Ljava/util/Set;

    move-result-object v2

    .line 34920
    .local v4, "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, 0x1

    .line 34921
    .local v3, "pinCerts":Z
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v7, 0x1

    .line 34922
    .local v1, "pinKeys":Z
    :cond_2
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    if-eqz v7, :cond_4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34923
    :cond_3
    :try_start_1
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/Qb;->A03(Ljavax/net/ssl/HttpsURLConnection;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_3
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34924
    :catch_0
    move-exception v5

    goto :goto_2

    .line 34925
    .end local v0
    :catch_1
    :try_start_2
    move-exception v5

    .line 34926
    .local v0, "e":Ljava/security/cert/CertificateException;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1h:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_3

    .line 34927
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    sget v1, Lcom/facebook/ads/redexgen/X/8e;->A1g:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/8d;->A8l(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 34928
    :cond_4
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_5

    .line 34929
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A06()[B

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A00(Ljava/net/HttpURLConnection;[B)I

    .line 34930
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34931
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Gh;->A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v1

    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    .local p0, "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    goto :goto_4

    .line 34932
    :cond_6
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Gi;-><init>(Ljava/net/HttpURLConnection;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34933
    .end local v2
    .end local v1    # "pinKeys":Z
    .end local v6    # "pinnedCertificates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "pinnedPublicKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "pinCerts":Z
    .restart local p0    # "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    :goto_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Qa;->A8k(Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 34935
    :cond_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34936
    return-object v1

    .line 34937
    :catch_2
    move-exception v1

    .line 34938
    .local p0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Gh;->A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v3

    .line 34939
    if-eqz v3, :cond_11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QJ;->A7J()I

    move-result v0

    if-lez v0, :cond_11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Qa;->A8k(Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 34942
    :cond_8
    if-eqz v4, :cond_9

    .line 34943
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34944
    :cond_9
    return-object v3

    .line 34945
    .local v1, "ee":Ljava/lang/Exception;
    :catch_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 34946
    .restart local p1    # "uc":Ljava/net/HttpURLConnection;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    .restart local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    if-eqz v3, :cond_c

    :try_start_6
    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QJ;->A7J()I

    move-result v0

    if-lez v0, :cond_c
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 34947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Qa;->A8k(Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 34949
    :cond_a
    if-eqz v4, :cond_b

    .line 34950
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34951
    :cond_b
    return-object v3

    .line 34952
    :cond_c
    :try_start_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/QX;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/QX;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QJ;)V

    goto :goto_6

    .line 34953
    .end local v1    # "ee":Ljava/lang/Exception;
    :goto_5
    if-eqz v3, :cond_10

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/QJ;->A7J()I

    move-result v0

    if-lez v0, :cond_10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 34954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34955
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v1, "yaq9HQ3M3BI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lkFDbfWlXmK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Lcom/facebook/ads/redexgen/X/Qa;->A8k(Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 34956
    :cond_d
    if-eqz v4, :cond_e

    .line 34957
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34958
    :cond_e
    return-object v3

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34959
    :cond_10
    :try_start_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/QX;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/QX;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QJ;)V

    goto :goto_6

    :cond_11
    new-instance v0, Lcom/facebook/ads/redexgen/X/QX;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/QX;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QJ;)V

    .end local p1    # "uc":Ljava/net/HttpURLConnection;
    .end local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 34960
    .end local p0    # "e":Ljava/lang/Exception;
    .restart local v2    # "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    :catchall_1
    move-exception v1

    .end local p0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 34961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/Qa;->A8k(Lcom/facebook/ads/redexgen/X/QJ;)V

    .line 34962
    :cond_12
    if-eqz v4, :cond_13

    .line 34963
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34964
    :cond_13
    throw v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34966
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gh;->A0C(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 34967
    :cond_0
    const/4 v3, 0x0

    .line 34968
    .local p0, "httpResponse":Lcom/facebook/ads/redexgen/X/QJ;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gh;->A01(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v3

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/QX; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34969
    :catch_0
    move-exception v2

    .line 34970
    .local p1, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QX;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/QX;-><init>(Ljava/lang/Exception;Lcom/facebook/ads/redexgen/X/QJ;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->AA9(Lcom/facebook/ads/redexgen/X/QX;)Z

    goto :goto_0

    .line 34971
    .end local p1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 34972
    .local p1, "hre":Lcom/facebook/ads/redexgen/X/QX;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/QZ;->AA9(Lcom/facebook/ads/redexgen/X/QX;)Z

    .line 34973
    .end local p1    # "hre":Lcom/facebook/ads/redexgen/X/QX;
    :goto_0
    return-object v3
.end method

.method private final A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QY;Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34974
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gt;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gt;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QY;Lcom/facebook/ads/redexgen/X/QS;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A02(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    return-object v0
.end method

.method private final A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 34975
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gj;

    const/4 v2, 0x0

    move-object v3, p2

    move-object v1, p1

    move-object v5, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gj;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QY;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QS;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A02(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    return-object v0
.end method

.method private final A05(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34976
    const/4 v2, 0x0

    .line 34977
    .local p0, "err":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 34978
    .local p1, "responseBody":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 34979
    if-eqz v2, :cond_0

    .line 34980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QZ;->ACr(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 34981
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Gi;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 34982
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34983
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34984
    :catch_0
    :cond_1
    return-object v0

    .line 34985
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 34986
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34987
    :catch_1
    :cond_2
    throw v0
.end method

.method private final A06(Ljava/net/HttpURLConnection;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34988
    const/4 v2, 0x0

    .line 34989
    .local p0, "in":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 34990
    .local p1, "responseBody":[B
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QZ;->ACG(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 34991
    if-eqz v2, :cond_0

    .line 34992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/QZ;->ACr(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 34993
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Gi;-><init>(Ljava/net/HttpURLConnection;[B)V

    .line 34994
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34995
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34996
    :catch_0
    :cond_1
    return-object v0

    .line 34997
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 34998
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 34999
    :catch_1
    :cond_2
    throw v0
.end method

.method public static A07(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Gh;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private final A08(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35000
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35001
    const v0, 0xf00d

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 35002
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QZ;->ACF(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    .line 35003
    :catch_0
    move-exception v4

    .line 35004
    .local p0, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x12

    const/16 v1, 0x13

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0xba

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Gh;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x12t
        0x37t
        0x3at
        0x5ft
        0x37t
        0x35t
        0x4at
        0x47t
        0xet
        0x4at
        0x48t
        0xft
        0x4ct
        0x5at
        0x5dt
        0x43t
        0xft
        0xet
        0x47t
        0x5dt
        0xet
        0x40t
        0x41t
        0x5at
        0xet
        0x4ft
        0xet
        0x58t
        0x4ft
        0x42t
        0x47t
        0x4at
        0xet
        0x7bt
        0x7ct
        0x62t
        0xet
        0x41t
        0x48t
        0xet
        0x5et
        0x66t
        0x6at
        0x9t
        0x1et
        0x6at
        0x77t
        0x6at
        0x1ct
        0x10t
        0x62t
        0x64t
        0x10t
        0xdt
        0x10t
        0x37t
        0x3bt
        0x6ft
        0x69t
        0x62t
        0x72t
        0x75t
        0x7ct
        0x3bt
        0x51t
        0x11t
        0x3bt
        0x32t
        0x3ft
        0x2et
        0x2dt
        0x3bt
        0x3at
        0x5et
        0x2at
        0x37t
        0x33t
        0x3bt
        0x5et
        0x43t
        0x5et
        0x1t
        0x23t
        0x32t
        0x32t
        0x2ft
        0x28t
        0x21t
        0x66t
        0x32t
        0x2et
        0x23t
        0x66t
        0x2et
        0x32t
        0x32t
        0x36t
        0x66t
        0x34t
        0x23t
        0x35t
        0x36t
        0x29t
        0x28t
        0x35t
        0x23t
        0x66t
        0x32t
        0x2ft
        0x2bt
        0x23t
        0x22t
        0x66t
        0x29t
        0x33t
        0x32t
        0x3dt
        0x3ct
        0x2et
        0x45t
        0x50t
        0x16t
        0x7t
        0x7t
        0x1bt
        0x1et
        0x14t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x58t
        0xft
        0x5at
        0x0t
        0x0t
        0x0t
        0x5at
        0x11t
        0x18t
        0x5t
        0x1at
        0x5at
        0x2t
        0x5t
        0x1bt
        0x12t
        0x19t
        0x14t
        0x18t
        0x13t
        0x12t
        0x13t
        0x4ct
        0x14t
        0x1ft
        0x16t
        0x5t
        0x4t
        0x12t
        0x3t
        0x4at
        0x22t
        0x23t
        0x31t
        0x5at
        0x4ft
        0x78t
        0x6et
        0x69t
        0x77t
        0x3bt
        0x36t
        0x70t
        0x3bt
        0x36t
        0x72t
        0x22t
        0x29t
        0x38t
        0x3bt
        0x23t
        0x3et
        0x27t
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Z3ZBH3trhaxMswGoeO0i3WMhBsCqcWgs"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "P814sFImmOC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "INcscN3Z5kcfIuBeknVxelrdNm8ANoXs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RvJjsajerkLdUat3TDI8NPR3DDSWtO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZLSXhw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wxtWSqUF9a7Aw2d1StIocmcoa4QX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "58xAXbC3p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Zj1UZNXOzFX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized A0B()V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Gh;

    monitor-enter v1

    .line 35005
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 35006
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35007
    :cond_0
    monitor-exit v1

    return-void

    .line 35008
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 7

    .line 35009
    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35010
    .local p0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A03()Lcom/facebook/ads/redexgen/X/QV;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QV;->A06:Lcom/facebook/ads/redexgen/X/QV;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QV;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v2, 0x29

    const/4 v1, 0x1

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A06()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35011
    const/4 v2, 0x7

    const/4 v1, 0x5

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35012
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A06()[B

    move-result-object v5

    const/16 v2, 0x75

    const/4 v1, 0x5

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35013
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35014
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QS;->A06()Ljava/util/Map;

    move-result-object v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v1, "s0c02ga9sXqOOqZgqzjFkG4II3gfLx"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "iECV1gT3x"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 35015
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    const/4 v1, 0x5

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35016
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35017
    const/16 v2, 0x42

    const/4 v1, 0x1

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35018
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35019
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35020
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 35021
    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35022
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/QW;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35023
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35024
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35025
    .local p1, "result":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0xfa0

    const/4 v0, 0x1

    add-int/2addr v1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Gh;->A0E(Ljava/lang/String;II)V

    .line 35026
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/QL;)V
    .locals 2

    .line 35027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gh;->A05:Lcom/facebook/ads/redexgen/X/QU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/QU;->A5d(Lcom/facebook/ads/redexgen/X/Gh;Lcom/facebook/ads/redexgen/X/QL;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/QT;

    move-result-object v0

    .line 35028
    .local p0, "executor":Lcom/facebook/ads/redexgen/X/QT;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/QT;->A5E(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 35029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35030
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gh;->A0C(Lcom/facebook/ads/redexgen/X/QW;)V

    .line 35031
    :cond_0
    return-void
.end method

.method private A0E(Ljava/lang/String;II)V
    .locals 4

    .line 35032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Gh;->A09:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    const/4 v1, 0x1

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35033
    .local p0, "tagWithCount":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    .line 35034
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35035
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Gh;->A0E(Ljava/lang/String;II)V

    .line 35036
    :cond_0
    return-void
.end method

.method private A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QL;Lcom/facebook/ads/redexgen/X/QS;)V
    .locals 6

    .line 35037
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gj;

    const/4 v2, 0x0

    move-object v3, p2

    move-object v1, p1

    move-object v5, p5

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gj;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QY;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QS;)V

    .line 35038
    .local p0, "req":Lcom/facebook/ads/redexgen/X/Gj;
    invoke-direct {p0, v0, p4}, Lcom/facebook/ads/redexgen/X/Gh;->A0D(Lcom/facebook/ads/redexgen/X/QW;Lcom/facebook/ads/redexgen/X/QL;)V

    .line 35039
    return-void
.end method

.method private A0G(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 5

    .line 35040
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QS;->A06()Ljava/util/Map;

    move-result-object v4

    .line 35041
    .local p0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QS;->A05()Lcom/facebook/ads/redexgen/X/QI;

    move-result-object v3

    .line 35042
    .local p1, "commonRequestHeadersFactory":Lcom/facebook/ads/redexgen/X/QI;
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

    .line 35043
    .local v0, "name":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35044
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35045
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    goto :goto_0

    .line 35046
    :cond_0
    if-eqz v3, :cond_1

    .line 35047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    .line 35048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A03()Z

    move-result v0

    .line 35049
    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/QI;->A5Q(Z)Ljava/util/Map;

    move-result-object v3

    .line 35050
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

    .line 35051
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35052
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35053
    .end local v4    # "name":Ljava/lang/String;
    .end local v0    # "value":Ljava/lang/String;
    goto :goto_1

    .line 35054
    .end local p2    # "commonHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private final A0H(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QW;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35055
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v1

    .line 35056
    .local p0, "configuration":Lcom/facebook/ads/redexgen/X/QS;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QS;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 35057
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QS;->A02()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 35058
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    .line 35059
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QW;->A03()Lcom/facebook/ads/redexgen/X/QV;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/QW;->A04()Ljava/lang/String;

    move-result-object v0

    .line 35060
    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->ACX(Ljava/net/HttpURLConnection;Lcom/facebook/ads/redexgen/X/QV;Ljava/lang/String;)V

    .line 35061
    return-void
.end method

.method private final A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/QW;)Z
    .locals 9

    .line 35062
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v8

    .line 35063
    .local p0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/QS;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 v3, 0xa

    add-long/2addr v1, v3

    .line 35064
    .local p1, "elapsedTime":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35065
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x43

    const/16 v3, 0xf

    const/16 v0, 0x23

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    const/4 v3, 0x7

    const/16 v0, 0x17

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35066
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/QS;->A00()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x31

    const/4 v3, 0x7

    const/16 v0, 0x6d

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35067
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/QS;->A02()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35068
    invoke-interface {v5, v0}, Lcom/facebook/ads/redexgen/X/Qa;->A8M(Ljava/lang/String;)V

    .line 35069
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A02:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 35070
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/QS;->A02()I

    move-result v0

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    :goto_0
    return v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 35071
    :cond_2
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/QS;->A00()I

    move-result v0

    int-to-long v4, v0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x1c

    if-eq v3, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v6, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v3, "UT6xnSlzbr9JaeC9T1uoRQiwoDXC3Y"

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const-string v3, "g5URFCrsk"

    const/4 v0, 0x6

    aput-object v3, v6, v0

    cmp-long v0, v1, v4

    if-ltz v0, :cond_4

    :goto_1
    return v7

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final A0J(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/QX;
        }
    .end annotation

    .line 35072
    move-object/from16 v8, p0

    move-object v8, v8

    const/4 v7, 0x0

    .line 35073
    .local v8, "numTries":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 35074
    .local v0, "startTime":J
    move-object/from16 v0, p1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QS;->A01()I

    move-result v6

    .line 35075
    .local v1, "maxRetries":I
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QS;->A03()I

    move-result v3

    int-to-long v9, v3

    .line 35076
    .local v6, "throttleTimeMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QW;->A02()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/QS;->A04()I

    move-result v3

    int-to-long v3, v3

    add-long v17, v17, v3

    .line 35077
    .end local v8    # "numTries":I
    .local v0, "numTries":I
    .local v6, "endTimeMillis":J
    .local v1, "startTime":J
    :goto_0
    if-ge v7, v6, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x1c

    if-eq v4, v3, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v5, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v4, "w7CndVwumsN"

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const-string v4, "Wx3tR5uVNB4"

    const/4 v3, 0x7

    aput-object v4, v5, v3

    cmp-long v3, v17, v11

    if-lez v3, :cond_10

    .line 35078
    :try_start_0
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/Qa;->A86()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35079
    iget-object v11, v8, Lcom/facebook/ads/redexgen/X/Gh;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    const/4 v4, 0x4

    const/16 v3, 0x73

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x38

    const/16 v4, 0x9

    const/16 v3, 0x46

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35080
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QW;->A05()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35081
    invoke-interface {v11, v3}, Lcom/facebook/ads/redexgen/X/Qa;->A8M(Ljava/lang/String;)V

    .line 35082
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/QX; {:try_start_0 .. :try_end_0} :catch_0

    .line 35083
    .end local v1    # "startTime":J
    .local v12, "startTime":J
    :try_start_1
    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A01(Lcom/facebook/ads/redexgen/X/QW;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v16

    .line 35084
    .local v8, "res":Lcom/facebook/ads/redexgen/X/QJ;
    if-eqz v16, :cond_5

    .line 35085
    iget-object v14, v8, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 35086
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v1

    .line 35087
    invoke-interface/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/QJ;->A5h()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v11, v3

    .line 35088
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    if-nez v3, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    array-length v3, v3
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/QX; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v3, v3

    sget-object v13, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v13, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v5, 0x1c

    if-eq v13, v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v15, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v13, "MaIX15CFtbyRTCgSwX4E1qAS9DeU"

    const/4 v5, 0x5

    aput-object v13, v15, v5

    .line 35089
    :goto_1
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lcom/facebook/ads/redexgen/X/QJ;->A7J()I

    move-result v28

    const/16 v29, 0x0

    .line 35090
    move-wide/from16 v24, v11

    move-wide/from16 v26, v3

    move-object/from16 v19, v14

    move-wide/from16 v20, v1

    invoke-interface/range {v19 .. v29}, Lcom/facebook/ads/redexgen/X/8d;->A8d(JJJJILjava/lang/Exception;)V

    goto/16 :goto_4
    :try_end_2
    .catch Lcom/facebook/ads/redexgen/X/QX; {:try_start_2 .. :try_end_2} :catch_1

    .line 35091
    .end local v12    # "startTime":J
    .restart local v1    # "startTime":J
    :catch_0
    move-exception v5

    sget-object v11, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, v11, v3

    const/4 v3, 0x7

    aget-object v3, v11, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v11, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v4, "zjCcSqcqQCV1DKlppK5B8d9XgS0n"

    const/4 v3, 0x5

    aput-object v4, v11, v3

    goto :goto_2

    .end local v8    # "res":Lcom/facebook/ads/redexgen/X/QJ;
    :catch_1
    move-exception v5

    .line 35092
    .end local v1    # "startTime":J
    .restart local v12    # "startTime":J
    .local v7, "e":Lcom/facebook/ads/redexgen/X/QX;
    :goto_2
    invoke-direct {v8, v5, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A0I(Ljava/lang/Throwable;JLcom/facebook/ads/redexgen/X/QW;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v12, v6, -0x1

    sget-object v11, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v4, v11, v3

    const/4 v3, 0x6

    aget-object v3, v11, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v4, v3, :cond_6

    sget-object v11, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v4, "5zGihRv0GXktBIsysHbk9bX5FynZ"

    const/4 v3, 0x5

    aput-object v4, v11, v3

    if-ge v7, v12, :cond_7

    .line 35093
    .end local v12    # "startTime":J
    .restart local v1    # "startTime":J
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_6
    sget-object v11, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v4, "fqIjKwbeYbDMXnQaOc49X5RkZCGi"

    const/4 v3, 0x5

    aput-object v4, v11, v3

    if-ge v7, v12, :cond_7

    goto :goto_3

    .line 35094
    :cond_7
    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/Gh;->A06:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-interface {v3, v5}, Lcom/facebook/ads/redexgen/X/QZ;->AA9(Lcom/facebook/ads/redexgen/X/QX;)Z

    move-result v3

    .line 35095
    .local v3, "isRecoverable":Z
    if-eqz v3, :cond_a

    add-int/lit8 v12, v6, -0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x1c

    if-eq v4, v3, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v11, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v4, "l1qtzOEwA58"

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const-string v4, "YwbiT1tGtPK"

    const/4 v3, 0x7

    aput-object v4, v11, v3

    if-ge v7, v12, :cond_a

    .line 35096
    const-wide/16 v3, 0x0

    cmp-long v11, v9, v3

    if-lez v11, :cond_5

    .line 35097
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 35098
    :goto_4
    return-object v16
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 35099
    :catch_2
    move-exception v17

    .line 35100
    .local v3, "ie":Ljava/lang/InterruptedException;
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 35101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    const-wide/16 v12, 0x0

    .line 35102
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    if-nez v6, :cond_9

    :goto_5
    const/16 v16, 0x0

    .line 35103
    move-wide v14, v3

    move-wide v8, v1

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/8d;->A8d(JJJJILjava/lang/Exception;)V

    .line 35104
    throw v5

    .line 35105
    :cond_9
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    array-length v0, v0

    int-to-long v3, v0

    goto :goto_5

    .line 35106
    .end local v1    # "startTime":J
    .restart local v7    # "e":Lcom/facebook/ads/redexgen/X/QX;
    .restart local v3    # "ie":Ljava/lang/InterruptedException;
    .restart local v12    # "startTime":J
    :cond_a
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QX;->A00()Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v9

    .line 35107
    .local v8, "response":Lcom/facebook/ads/redexgen/X/QJ;
    iget-object v8, v8, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 35108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    .line 35109
    if-eqz v9, :cond_b

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/QJ;->A5h()[B

    move-result-object v7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0xa

    if-eq v4, v3, :cond_f

    sget-object v6, Lcom/facebook/ads/redexgen/X/Gh;->A08:[Ljava/lang/String;

    const-string v4, "TEyoiCytVC1tTBwzPYE"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    if-nez v7, :cond_e

    .line 35110
    :cond_b
    const-wide/16 v3, 0x0

    .line 35111
    :goto_6
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    if-nez v6, :cond_d

    const-wide/16 v6, 0x0

    .line 35112
    :goto_7
    if-nez v9, :cond_c

    const/16 v17, 0x0

    .line 35113
    :goto_8
    move-object v8, v8

    move-wide v9, v1

    move-wide v13, v3

    move-wide v15, v6

    move-object/from16 v18, v5

    invoke-interface/range {v8 .. v18}, Lcom/facebook/ads/redexgen/X/8d;->A8d(JJJJILjava/lang/Exception;)V

    .line 35114
    throw v5

    .line 35115
    :cond_c
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/QJ;->A7J()I

    move-result v17

    goto :goto_8

    .line 35116
    :cond_d
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    array-length v0, v0

    int-to-long v6, v0

    goto :goto_7

    .line 35117
    :cond_e
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/QJ;->A5h()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 35118
    .end local v8    # "response":Lcom/facebook/ads/redexgen/X/QJ;
    .end local v7    # "e":Lcom/facebook/ads/redexgen/X/QX;
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    .end local v12    # "startTime":J
    .restart local v1    # "startTime":J
    :cond_10
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/Gh;->A00:Lcom/facebook/ads/redexgen/X/8d;

    .line 35119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    const-wide/16 v12, 0x0

    .line 35120
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    if-nez v3, :cond_11

    const-wide/16 v3, 0x0

    :goto_9
    const/16 v16, 0x0

    const/16 v6, 0x52

    const/16 v5, 0x23

    const/16 v0, 0x1b

    invoke-static {v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0, v5}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .line 35121
    move-wide v14, v3

    move-object/from16 v17, v0

    move-wide v8, v1

    invoke-interface/range {v7 .. v17}, Lcom/facebook/ads/redexgen/X/8d;->A8d(JJJJILjava/lang/Exception;)V

    .line 35122
    const/4 v0, 0x0

    return-object v0

    .line 35123
    :cond_11
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/QW;->A04:[B

    array-length v0, v0

    int-to-long v3, v0

    goto :goto_9
.end method

.method public final ACP(Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QJ;
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
            "Lcom/facebook/ads/redexgen/X/QJ;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35124
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/QY;

    invoke-direct {v1, p2}, Lcom/facebook/ads/redexgen/X/QY;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    .line 35125
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A00()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v0

    .line 35126
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A03(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QY;Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    return-object v0
.end method

.method public final ACQ(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/QJ;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    .line 35128
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A00()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v3

    .line 35129
    const/16 v2, 0x7a

    const/16 v1, 0x2f

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/Gh;->A04(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    return-object v0
.end method

.method public final ACR(Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QL;)V
    .locals 6

    .line 35130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gh;->A03:Lcom/facebook/ads/redexgen/X/QP;

    .line 35131
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QP;->A00()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v5

    .line 35132
    const/16 v2, 0x7a

    const/16 v1, 0x2f

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gh;->A07(III)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Gh;->A0F(Ljava/lang/String;Ljava/lang/String;[BLcom/facebook/ads/redexgen/X/QL;Lcom/facebook/ads/redexgen/X/QS;)V

    .line 35133
    return-void
.end method
