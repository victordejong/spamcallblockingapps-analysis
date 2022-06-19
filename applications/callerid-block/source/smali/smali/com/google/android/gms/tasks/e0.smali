.class final synthetic Lcom/google/android/gms/tasks/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/tasks/d0;


# static fields
.field static final a:Lcom/google/android/gms/tasks/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/e0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/e0;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/e0;->a:Lcom/google/android/gms/tasks/d0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/tasks/c0;->b(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    return-object p1
.end method
