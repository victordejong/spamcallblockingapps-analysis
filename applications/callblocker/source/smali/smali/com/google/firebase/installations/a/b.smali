.class public Lcom/google/firebase/installations/a/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "FCM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "GCM"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/firebase/installations/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/b;)V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/google/firebase/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.appid"

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    .line 63
    invoke-static {p1}, Lcom/google/firebase/installations/a/b;->a(Lcom/google/firebase/b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/a/b;->c:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private static a(Lcom/google/firebase/b;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/b;->c()Lcom/google/firebase/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string/jumbo v2, "1:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "2:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :cond_2
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 86
    array-length v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    move-object v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 91
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 119
    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "|T|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 179
    :try_start_0
    const-string/jumbo v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 182
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    .line 183
    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, 0x70

    .line 184
    const/4 v2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 185
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string/jumbo v0, "ContentValues"

    const-string/jumbo v1, "Unexpected error, device missing required algorithms"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4

    .prologue
    .line 198
    const/16 v0, 0x8

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 199
    const-string/jumbo v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    :goto_1
    const-string/jumbo v1, "ContentValues"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid key stored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "|S|id"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v1, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "|S||P|"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    if-nez v2, :cond_0

    .line 158
    monitor-exit v1

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/firebase/installations/a/b;->b(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 162
    if-nez v2, :cond_1

    .line 163
    monitor-exit v1

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/google/firebase/installations/a/b;->a(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v3, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    monitor-enter v3

    .line 103
    :try_start_0
    sget-object v4, Lcom/google/firebase/installations/a/b;->a:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v1, v4, v2

    .line 104
    iget-object v6, p0, Lcom/google/firebase/installations/a/b;->c:Ljava/lang/String;

    invoke-direct {p0, v6, v1}, Lcom/google/firebase/installations/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v6, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 107
    const-string/jumbo v0, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/google/firebase/installations/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    monitor-exit v3

    .line 111
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 107
    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 111
    :cond_2
    monitor-exit v3

    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/firebase/installations/a/b;->b:Landroid/content/SharedPreferences;

    monitor-enter v1

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/google/firebase/installations/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    .line 137
    monitor-exit v1

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/installations/a/b;->d()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
