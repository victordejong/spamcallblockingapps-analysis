.class public final Lcom/google/android/gms/auth/api/signin/internal/e;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lcom/google/android/gms/common/a/a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "RevokeAccessOperation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/e;->a:Lcom/google/android/gms/common/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/e;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/internal/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/d;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/e;->c:Lcom/google/android/gms/common/api/internal/o;

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/common/api/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/e",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/h;Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/e;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/e;->c:Lcom/google/android/gms/common/api/internal/o;

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 5
    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    .line 6
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string/jumbo v0, "https://accounts.google.com/o/oauth2/revoke?token="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/e;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 8
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 10
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_1

    .line 11
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/gms/auth/api/signin/internal/e;->a:Lcom/google/android/gms/common/a/a;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Response Code: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 20
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/e;->c:Lcom/google/android/gms/common/api/internal/o;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/o;->b(Lcom/google/android/gms/common/api/h;)V

    .line 21
    return-void

    .line 6
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 16
    :goto_3
    sget-object v3, Lcom/google/android/gms/auth/api/signin/internal/e;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v4, "IOException when revoking access: "

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/common/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 17
    goto :goto_2

    .line 12
    :cond_1
    :try_start_3
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/e;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v3, "Unable to revoke access!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 19
    :goto_5
    sget-object v3, Lcom/google/android/gms/auth/api/signin/internal/e;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v4, "Exception when revoking access: "

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/common/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 18
    :catch_2
    move-exception v2

    move-object v1, v0

    goto :goto_5

    .line 15
    :catch_3
    move-exception v2

    move-object v1, v0

    goto :goto_3
.end method
