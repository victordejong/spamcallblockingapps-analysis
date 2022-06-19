.class final Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/m;
.implements Lcom/google/api/client/http/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->c:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/api/client/http/q;Lcom/google/api/client/http/t;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2292
    :try_start_0
    iget p1, p2, Lcom/google/api/client/http/t;->c:I

    const/16 p2, 0x191

    if-ne p1, p2, :cond_0

    .line 298
    iget-boolean p1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->a:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->a:Z

    .line 300
    iget-object p2, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->c:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    iget-object p2, p2, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/google/android/gms/auth/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 304
    new-instance p2, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;

    invoke-direct {p2, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;-><init>(Lcom/google/android/gms/auth/GoogleAuthException;)V

    throw p2
.end method

.method public final intercept(Lcom/google/api/client/http/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->c:Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->b:Ljava/lang/String;

    .line 1498
    iget-object p1, p1, Lcom/google/api/client/http/q;->d:Lcom/google/api/client/http/n;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bearer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;)Lcom/google/api/client/http/n;
    :try_end_0
    .catch Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 290
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;-><init>(Lcom/google/android/gms/auth/GoogleAuthException;)V

    throw v0

    :catch_1
    move-exception p1

    .line 288
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;-><init>(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    throw v0

    :catch_2
    move-exception p1

    .line 286
    new-instance v0, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GooglePlayServicesAvailabilityIOException;

    invoke-direct {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GooglePlayServicesAvailabilityIOException;-><init>(Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;)V

    throw v0
.end method
