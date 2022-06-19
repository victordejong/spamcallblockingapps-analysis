.class final synthetic Lcom/google/android/gms/common/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/o;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/j;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/j;->c:Lcom/google/android/gms/common/o;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/j;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/common/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/j;->c:Lcom/google/android/gms/common/o;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/s;->e(ZLjava/lang/String;Lcom/google/android/gms/common/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
