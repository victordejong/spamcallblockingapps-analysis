.class final Lcom/google/android/gms/b/b;
.super Lcom/google/android/gms/common/api/a$a;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/b/a/a;",
        "Lcom/google/android/gms/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/d;Ljava/lang/Object;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)Lcom/google/android/gms/common/api/a$f;
    .locals 8

    .prologue
    .line 2
    check-cast p4, Lcom/google/android/gms/b/a;

    .line 3
    if-nez p4, :cond_0

    .line 4
    sget-object v5, Lcom/google/android/gms/b/a;->a:Lcom/google/android/gms/b/a;

    .line 5
    :goto_0
    new-instance v0, Lcom/google/android/gms/b/a/a;

    const/4 v3, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/a/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Lcom/google/android/gms/b/a;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 6
    return-object v0

    :cond_0
    move-object v5, p4

    goto :goto_0
.end method
