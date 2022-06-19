.class final Lcom/google/android/gms/common/b/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Lcom/google/android/gms/common/b/a$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .prologue
    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/e/e;->a()Lcom/google/android/gms/internal/e/f;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, Lcom/google/android/gms/internal/e/j;->a:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/e/f;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
