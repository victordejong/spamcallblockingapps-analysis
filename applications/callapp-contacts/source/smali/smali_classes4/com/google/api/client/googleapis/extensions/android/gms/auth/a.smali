.class public final Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/String;

.field private final c:Lcom/google/api/client/googleapis/extensions/android/a/a;

.field private d:Ljava/lang/String;

.field private e:Landroid/accounts/Account;

.field private f:Lcom/google/api/client/a/ac;

.field private g:Lcom/google/api/client/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/google/api/client/a/ac;->a:Lcom/google/api/client/a/ac;

    iput-object v0, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->f:Lcom/google/api/client/a/ac;

    .line 95
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/a/a;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->c:Lcom/google/api/client/googleapis/extensions/android/a/a;

    .line 96
    iput-object p1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1035
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->a(Z)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "oauth2: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/api/client/a/p;->a()Lcom/google/api/client/a/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/api/client/a/p;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    invoke-direct {v0, p0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->e:Landroid/accounts/Account;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 258
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 262
    :try_start_1
    iget-object v1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->g:Lcom/google/api/client/a/c;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->f:Lcom/google/api/client/a/ac;

    .line 2044
    invoke-interface {v1}, Lcom/google/api/client/a/c;->a()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 2048
    :cond_0
    invoke-interface {v2, v3, v4}, Lcom/google/api/client/a/ac;->a(J)V

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public final a(Lcom/google/api/client/http/q;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;

    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;-><init>(Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;)V

    .line 1563
    iput-object v0, p1, Lcom/google/api/client/http/q;->c:Lcom/google/api/client/http/m;

    .line 1583
    iput-object v0, p1, Lcom/google/api/client/http/q;->m:Lcom/google/api/client/http/x;

    return-void
.end method
