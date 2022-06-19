.class public final Lp9/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lp9/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lp9/h;

.field public static final e:Lp9/h;

.field public static final f:Lp9/h;

.field public static final g:Lp9/h;

.field public static final h:Lp9/h;

.field public static final i:Lp9/h;

.field public static final j:Lp9/h;

.field public static final k:Lp9/h;

.field public static final l:Lp9/h;

.field public static final m:Lp9/h;

.field public static final n:Lp9/h;

.field public static final o:Lp9/h;

.field public static final p:Lp9/h;

.field public static final q:Lp9/h;

.field public static final r:Lp9/h;

.field public static final s:Lp9/h;

.field public static final t:Lp9/h;

.field public static final u:Lp9/h;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp9/h$a;

    invoke-direct {v0}, Lp9/h$a;-><init>()V

    sput-object v0, Lp9/h;->b:Ljava/util/Comparator;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lp9/h;->c:Ljava/util/Map;

    .line 3
    new-instance v1, Lp9/h;

    const-string v2, "SSL_RSA_WITH_NULL_MD5"

    invoke-direct {v1, v2}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    .line 5
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    .line 7
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    .line 9
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    .line 11
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 13
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    .line 15
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 17
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sput-object v2, Lp9/h;->d:Lp9/h;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    .line 20
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    .line 22
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    .line 24
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    .line 26
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    .line 28
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 30
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    .line 32
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    .line 34
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    .line 36
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    .line 38
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 40
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    .line 42
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    .line 44
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    .line 46
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    .line 48
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    .line 50
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    .line 52
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    .line 54
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    .line 56
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    .line 58
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    .line 60
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    .line 62
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sput-object v2, Lp9/h;->e:Lp9/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    .line 65
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    .line 67
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    .line 69
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    .line 71
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sput-object v2, Lp9/h;->f:Lp9/h;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    .line 74
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    .line 76
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    .line 78
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    .line 80
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    .line 82
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    .line 84
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    .line 86
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    .line 88
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    .line 90
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    .line 92
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 94
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    .line 96
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    .line 98
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    .line 100
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    .line 102
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    .line 104
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    .line 106
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    .line 108
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    .line 110
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    .line 112
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    .line 114
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    .line 116
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    .line 118
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    .line 120
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sput-object v2, Lp9/h;->g:Lp9/h;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    .line 123
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sput-object v2, Lp9/h;->h:Lp9/h;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 126
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 128
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    .line 130
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    .line 132
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    .line 134
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    .line 136
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    .line 138
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_FALLBACK_SCSV"

    .line 140
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    .line 142
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    .line 144
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 146
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    .line 148
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    .line 150
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    .line 152
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    .line 154
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    .line 156
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    .line 158
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    .line 160
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    .line 162
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    .line 164
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 166
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    .line 168
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    .line 170
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    .line 172
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    .line 174
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 176
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    .line 178
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sput-object v2, Lp9/h;->i:Lp9/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    .line 181
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sput-object v2, Lp9/h;->j:Lp9/h;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    .line 184
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    .line 186
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    .line 188
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    .line 190
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    .line 192
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 194
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 196
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    .line 198
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    .line 200
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    .line 202
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    .line 204
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    .line 206
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    .line 208
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 210
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sput-object v2, Lp9/h;->k:Lp9/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 213
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sput-object v2, Lp9/h;->l:Lp9/h;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    .line 216
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    .line 218
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    .line 220
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sput-object v2, Lp9/h;->m:Lp9/h;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    .line 223
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sput-object v2, Lp9/h;->n:Lp9/h;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    .line 226
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    .line 228
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    .line 230
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    .line 232
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 234
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sput-object v2, Lp9/h;->o:Lp9/h;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 237
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sput-object v2, Lp9/h;->p:Lp9/h;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    .line 240
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    .line 242
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    .line 244
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sput-object v2, Lp9/h;->q:Lp9/h;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    .line 247
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sput-object v2, Lp9/h;->r:Lp9/h;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    .line 250
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sput-object v2, Lp9/h;->s:Lp9/h;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    .line 253
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sput-object v2, Lp9/h;->t:Lp9/h;

    const-string v1, "TLS_AES_256_CCM_8_SHA256"

    .line 256
    new-instance v2, Lp9/h;

    invoke-direct {v2, v1}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sput-object v2, Lp9/h;->u:Lp9/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lp9/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lp9/h;
    .locals 4

    const-class v0, Lp9/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lp9/h;->c:Ljava/util/Map;

    move-object v2, v1

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp9/h;

    if-nez v2, :cond_1

    .line 2
    invoke-static {p0}, Lp9/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp9/h;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lp9/h;

    invoke-direct {v2, p0}, Lp9/h;-><init>(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "TLS_"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "SSL_"

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp9/h;->a:Ljava/lang/String;

    return-object v0
.end method
