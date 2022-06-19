.class public Lcom/google/android/gms/common/internal/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/n$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/i0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/i0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/l0;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .param p0    # Lcom/google/android/gms/common/api/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/internal/n$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/n$a<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/tasks/g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/l0;

    .line 1
    new-instance v1, Lcom/google/android/gms/tasks/h;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/h;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/j0;

    .line 2
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/j0;-><init>(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/common/internal/n$a;Lcom/google/android/gms/common/internal/l0;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/f$a;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .param p0    # Lcom/google/android/gms/common/api/f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/i;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TR;>;)",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/k0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/k0;-><init>()V

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method
