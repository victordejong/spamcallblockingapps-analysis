.class public final Lcom/google/api/client/googleapis/auth/oauth2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Lcom/google/api/client/json/JsonFactory;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private final e:Lcom/google/api/client/http/w;

.field private final f:Ljava/util/concurrent/locks/Lock;

.field private final g:Lcom/google/api/client/a/i;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*max-age\\s*=\\s*(\\d+)\\s*"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/auth/oauth2/b;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/googleapis/auth/oauth2/b$a;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    .line 100
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->b:Lcom/google/api/client/http/w;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->e:Lcom/google/api/client/http/w;

    .line 101
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->c:Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->b:Lcom/google/api/client/json/JsonFactory;

    .line 102
    iget-object v0, p1, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->a:Lcom/google/api/client/a/i;

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->g:Lcom/google/api/client/a/i;

    .line 103
    iget-object p1, p1, Lcom/google/api/client/googleapis/auth/oauth2/b$a;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/b$a;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/b$a;-><init>(Lcom/google/api/client/http/w;Lcom/google/api/client/json/JsonFactory;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/b;-><init>(Lcom/google/api/client/googleapis/auth/oauth2/b$a;)V

    return-void
.end method

.method private static a(Lcom/google/api/client/http/n;)J
    .locals 7

    .line 210
    invoke-virtual {p0}, Lcom/google/api/client/http/n;->b()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/google/api/client/http/n;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 212
    sget-object v6, Lcom/google/api/client/googleapis/auth/oauth2/b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 213
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v0, 0x1

    .line 214
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 219
    :goto_1
    invoke-virtual {p0}, Lcom/google/api/client/http/n;->l()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/google/api/client/http/n;->l()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 222
    :cond_2
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Lcom/google/api/client/googleapis/auth/oauth2/b;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 168
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->c:Ljava/util/List;

    .line 170
    invoke-static {}, Lcom/google/api/client/a/ab;->a()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->e:Lcom/google/api/client/http/w;

    invoke-virtual {v1}, Lcom/google/api/client/http/w;->createRequestFactory()Lcom/google/api/client/http/r;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/http/i;

    iget-object v3, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->h:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/api/client/http/i;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v1, v2}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->g:Lcom/google/api/client/a/i;

    .line 174
    invoke-interface {v2}, Lcom/google/api/client/a/i;->a()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/api/client/http/t;->c()Lcom/google/api/client/http/n;

    move-result-object v4

    invoke-static {v4}, Lcom/google/api/client/googleapis/auth/oauth2/b;->a(Lcom/google/api/client/http/n;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->d:J

    .line 176
    iget-object v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->b:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lcom/google/api/client/json/JsonParser;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    if-nez v2, :cond_0

    .line 180
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    .line 182
    :cond_0
    sget-object v3, Lcom/google/api/client/json/JsonToken;->START_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/api/client/a/aa;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v2, v3, :cond_2

    .line 185
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->nextToken()Lcom/google/api/client/json/JsonToken;

    .line 186
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 187
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 188
    invoke-static {v2}, Lcom/google/api/client/a/ae;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 187
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 189
    iget-object v3, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->c:Ljava/util/List;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->c:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p0

    :catchall_0
    move-exception v0

    .line 193
    :try_start_3
    invoke-virtual {v1}, Lcom/google/api/client/json/JsonParser;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 197
    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->g:Lcom/google/api/client/a/i;

    .line 139
    invoke-interface {v0}, Lcom/google/api/client/a/i;->a()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->d:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/b;->b()Lcom/google/api/client/googleapis/auth/oauth2/b;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/b;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
