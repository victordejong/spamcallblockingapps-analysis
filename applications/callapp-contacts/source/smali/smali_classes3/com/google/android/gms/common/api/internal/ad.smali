.class final Lcom/google/android/gms/common/api/internal/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/ae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ad;->a:Lcom/google/android/gms/common/api/internal/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ad;->a:Lcom/google/android/gms/common/api/internal/ae;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ae;->a:Lcom/google/android/gms/common/api/internal/af;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ad;->a:Lcom/google/android/gms/common/api/internal/ae;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ae;->a:Lcom/google/android/gms/common/api/internal/af;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$f;->disconnect(Ljava/lang/String;)V

    return-void
.end method
