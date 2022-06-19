.class public Lcom/google/android/gms/common/internal/r;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/r$b;,
        Lcom/google/android/gms/common/internal/r$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/r$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/google/android/gms/common/internal/ab;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ab;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/r$b;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/h;",
            ">(",
            "Lcom/google/android/gms/common/api/e",
            "<TR;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    new-instance v0, Lcom/google/android/gms/common/internal/ad;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ad;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/r;->a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/internal/r$a;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/internal/r$a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/h;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/e",
            "<TR;>;",
            "Lcom/google/android/gms/common/internal/r$a",
            "<TR;TT;>;)",
            "Lcom/google/android/gms/tasks/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2
    sget-object v0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/r$b;

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/h;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 4
    new-instance v2, Lcom/google/android/gms/common/internal/ac;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/ac;-><init>(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/common/internal/r$a;Lcom/google/android/gms/common/internal/r$b;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/e;->a(Lcom/google/android/gms/common/api/e$a;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 6
    return-object v0
.end method
