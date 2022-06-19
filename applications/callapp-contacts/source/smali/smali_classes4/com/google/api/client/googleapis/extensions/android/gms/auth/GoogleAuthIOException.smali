.class public Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/GoogleAuthException;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/GoogleAuthException;
    .locals 1

    .line 44
    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/GoogleAuthException;

    return-object v0
.end method

.method public synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;->a()Lcom/google/android/gms/auth/GoogleAuthException;

    move-result-object v0

    return-object v0
.end method
