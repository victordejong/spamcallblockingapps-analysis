.class public final Lcom/google/android/gms/wearable/internal/br;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/common/api/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/g;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Lcom/google/android/gms/common/api/j<",
            "Lcom/google/android/gms/wearable/k$b;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lcom/google/android/gms/wearable/internal/bs;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/bs;-><init>(Lcom/google/android/gms/wearable/internal/br;Lcom/google/android/gms/common/api/g;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p1, v6}, Lcom/google/android/gms/common/api/g;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p1

    return-object p1
.end method
