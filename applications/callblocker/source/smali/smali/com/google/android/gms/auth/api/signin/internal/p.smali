.class abstract Lcom/google/android/gms/auth/api/signin/internal/p;
.super Lcom/google/android/gms/common/api/internal/d$a;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/h;",
        ">",
        "Lcom/google/android/gms/common/api/internal/d$a",
        "<TR;",
        "Lcom/google/android/gms/auth/api/signin/internal/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/a;->e:Lcom/google/android/gms/common/api/a;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/d$a;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/d;)V

    .line 2
    return-void
.end method
