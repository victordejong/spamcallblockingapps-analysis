.class public final Lcom/google/android/gms/tasks/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tasks/i$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/i$a;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/i;->a:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/aa;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/i;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
