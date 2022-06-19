.class final Lcom/google/android/gms/wearable/x;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a<",
        "Lcom/google/android/gms/wearable/internal/db;",
        "Lcom/google/android/gms/wearable/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    .line 2
    check-cast p4, Lcom/google/android/gms/wearable/p$a;

    if-nez p4, :cond_0

    .line 4
    new-instance p4, Lcom/google/android/gms/wearable/p$a;

    new-instance v0, Lcom/google/android/gms/wearable/p$a$a;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/p$a$a;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1}, Lcom/google/android/gms/wearable/p$a;-><init>(Lcom/google/android/gms/wearable/p$a$a;Lcom/google/android/gms/wearable/x;)V

    .line 5
    :cond_0
    new-instance p4, Lcom/google/android/gms/wearable/internal/db;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/wearable/internal/db;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/g$a;Lcom/google/android/gms/common/api/g$b;Lcom/google/android/gms/common/internal/e;)V

    return-object p4
.end method
