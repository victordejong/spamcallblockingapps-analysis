.class public final Lcom/dropbox/core/oauth/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/oauth/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/dropbox/core/json/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonWriter<",
            "Lcom/dropbox/core/oauth/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Lcom/dropbox/core/oauth/DbxCredential$2;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxCredential$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/a;->d:Lcom/dropbox/core/json/JsonReader;

    .line 317
    new-instance v0, Lcom/dropbox/core/oauth/DbxCredential$3;

    invoke-direct {v0}, Lcom/dropbox/core/oauth/DbxCredential$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/oauth/a;->e:Lcom/dropbox/core/json/JsonWriter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/oauth/a;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/oauth/a;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t refresh without app Key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing expireAt."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/dropbox/core/oauth/a;->a:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/dropbox/core/oauth/a;->b:Ljava/lang/Long;

    .line 100
    iput-object p3, p0, Lcom/dropbox/core/oauth/a;->c:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/dropbox/core/oauth/a;->f:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/dropbox/core/oauth/a;->g:Ljava/lang/String;

    return-void

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing access token."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/dropbox/core/oauth/a;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/dropbox/core/oauth/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/dropbox/core/oauth/a;)Ljava/lang/Long;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/dropbox/core/oauth/a;->b:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic c(Lcom/dropbox/core/oauth/a;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/dropbox/core/oauth/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/dropbox/core/oauth/a;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/dropbox/core/oauth/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/dropbox/core/oauth/a;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/dropbox/core/oauth/a;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/h;Lcom/dropbox/core/e;)Lcom/dropbox/core/oauth/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/h;",
            "Lcom/dropbox/core/e;",
            ")",
            "Lcom/dropbox/core/oauth/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/dropbox/core/oauth/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/dropbox/core/oauth/a;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "refresh_token"

    .line 178
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "refresh_token"

    .line 179
    iget-object v2, p0, Lcom/dropbox/core/oauth/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locale"

    .line 1110
    iget-object v2, p1, Lcom/dropbox/core/h;->b:Ljava/lang/String;

    .line 180
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/dropbox/core/oauth/a;->g:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "client_id"

    .line 186
    iget-object v2, p0, Lcom/dropbox/core/oauth/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/oauth/a;->f:Ljava/lang/String;

    invoke-static {v8, v2, v1}, Lcom/dropbox/core/i;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    :goto_0
    const-string v4, "OfficialDropboxJavaSDKv2"

    .line 2057
    iget-object v5, p2, Lcom/dropbox/core/e;->b:Ljava/lang/String;

    const-string v6, "oauth2/token"

    .line 201
    invoke-static {v0}, Lcom/dropbox/core/i;->a(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/dropbox/core/oauth/a$1;

    invoke-direct {v9, p0}, Lcom/dropbox/core/oauth/a$1;-><init>(Lcom/dropbox/core/oauth/a;)V

    move-object v3, p1

    .line 196
    invoke-static/range {v3 .. v9}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/i$b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dropbox/core/oauth/c;

    .line 218
    monitor-enter p0

    .line 3057
    :try_start_0
    iget-object p2, p1, Lcom/dropbox/core/oauth/c;->a:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/dropbox/core/oauth/a;->a:Ljava/lang/String;

    .line 3067
    iget-wide v0, p1, Lcom/dropbox/core/oauth/c;->c:J

    iget-wide v2, p1, Lcom/dropbox/core/oauth/c;->b:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 220
    iput-object p2, p0, Lcom/dropbox/core/oauth/a;->b:Ljava/lang/Long;

    .line 221
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DbxCredential\'s constructor should always guarantee appKey is not null if refreshToken is not null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_2
    new-instance p1, Lcom/dropbox/core/oauth/DbxOAuthException;

    const/4 p2, 0x0

    new-instance v0, Lcom/dropbox/core/oauth/b;

    const-string v1, "invalid_request"

    const-string v2, "Cannot refresh becasue there is no refresh token"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/oauth/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lcom/dropbox/core/oauth/DbxOAuthException;-><init>(Ljava/lang/String;Lcom/dropbox/core/oauth/b;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 262
    sget-object v0, Lcom/dropbox/core/oauth/a;->e:Lcom/dropbox/core/json/JsonWriter;

    invoke-virtual {v0, p0}, Lcom/dropbox/core/json/JsonWriter;->writeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
