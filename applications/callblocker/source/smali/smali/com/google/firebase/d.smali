.class public final Lcom/google/firebase/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@19.3.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/util/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/s;->a(ZLjava/lang/Object;)V

    .line 140
    iput-object p1, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/google/firebase/d;->a:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/google/firebase/d;->c:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/google/firebase/d;->d:Ljava/lang/String;

    .line 144
    iput-object p5, p0, Lcom/google/firebase/d;->e:Ljava/lang/String;

    .line 145
    iput-object p6, p0, Lcom/google/firebase/d;->f:Ljava/lang/String;

    .line 146
    iput-object p7, p0, Lcom/google/firebase/d;->g:Ljava/lang/String;

    .line 147
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/firebase/d;
    .locals 9

    .prologue
    .line 156
    new-instance v7, Lcom/google/android/gms/common/internal/w;

    invoke-direct {v7, p0}, Lcom/google/android/gms/common/internal/w;-><init>(Landroid/content/Context;)V

    .line 157
    const-string/jumbo v0, "google_app_id"

    invoke-virtual {v7, v0}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/d;

    const-string/jumbo v2, "google_api_key"

    .line 163
    invoke-virtual {v7, v2}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "firebase_database_url"

    .line 164
    invoke-virtual {v7, v3}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ga_trackingId"

    .line 165
    invoke-virtual {v7, v4}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gcm_defaultSenderId"

    .line 166
    invoke-virtual {v7, v5}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "google_storage_bucket"

    .line 167
    invoke-virtual {v7, v6}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "project_id"

    .line 168
    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/firebase/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/firebase/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/firebase/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 227
    instance-of v1, p1, Lcom/google/firebase/d;

    if-nez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 230
    :cond_1
    check-cast p1, Lcom/google/firebase/d;

    .line 231
    iget-object v1, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/d;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->a:Ljava/lang/String;

    .line 232
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/d;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->c:Ljava/lang/String;

    .line 233
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/d;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->d:Ljava/lang/String;

    .line 234
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/d;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->e:Ljava/lang/String;

    .line 235
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/d;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->f:Ljava/lang/String;

    .line 236
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/d;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/d;->g:Ljava/lang/String;

    .line 237
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 242
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/d;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/d;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/firebase/d;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/d;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/firebase/d;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/firebase/d;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 248
    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "applicationId"

    iget-object v2, p0, Lcom/google/firebase/d;->b:Ljava/lang/String;

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "apiKey"

    iget-object v2, p0, Lcom/google/firebase/d;->a:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "databaseUrl"

    iget-object v2, p0, Lcom/google/firebase/d;->c:Ljava/lang/String;

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "gcmSenderId"

    iget-object v2, p0, Lcom/google/firebase/d;->e:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "storageBucket"

    iget-object v2, p0, Lcom/google/firebase/d;->f:Ljava/lang/String;

    .line 253
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string/jumbo v1, "projectId"

    iget-object v2, p0, Lcom/google/firebase/d;->g:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    return-object v0
.end method
