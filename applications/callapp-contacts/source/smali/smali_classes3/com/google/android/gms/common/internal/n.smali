.class public final Lcom/google/android/gms/common/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/n$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/common/internal/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/ai;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ai;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/al;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            ">(",
            "Lcom/google/android/gms/common/api/j<",
            "TR;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/ak;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/ak;-><init>()V

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/m;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/j<",
            "TR;>;",
            "Lcom/google/android/gms/common/internal/n$a<",
            "TR;TT;>;)",
            "Lcom/google/android/gms/tasks/h<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/n;->a:Lcom/google/android/gms/common/internal/al;

    .line 1
    new-instance v1, Lcom/google/android/gms/tasks/i;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/i;-><init>()V

    new-instance v2, Lcom/google/android/gms/common/internal/aj;

    .line 2
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/aj;-><init>(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/common/internal/n$a;Lcom/google/android/gms/common/internal/al;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/j$a;)V

    .line 1000
    iget-object p0, v1, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-object p0
.end method
