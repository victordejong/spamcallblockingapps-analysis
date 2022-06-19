.class public final Lcom/google/android/gms/wearable/internal/dp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;I)Lcom/google/android/gms/common/api/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/wearable/a$b;",
            ">;"
        }
    .end annotation

    const/4 p3, 0x1

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/o;->b(Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/wearable/internal/dq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/wearable/internal/dq;-><init>(Lcom/google/android/gms/wearable/internal/dp;Lcom/google/android/gms/common/api/g;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method
