.class public final Lcom/google/android/gms/tasks/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/ag;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/tasks/ag;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/j;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/af;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/j;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
