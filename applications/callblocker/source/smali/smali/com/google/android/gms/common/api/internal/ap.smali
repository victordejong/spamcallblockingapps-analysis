.class final Lcom/google/android/gms/common/api/internal/ap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/b/a/l;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/an;Lcom/google/android/gms/b/a/l;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ap;->b:Lcom/google/android/gms/common/api/internal/an;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/ap;->a:Lcom/google/android/gms/b/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ap;->b:Lcom/google/android/gms/common/api/internal/an;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/ap;->a:Lcom/google/android/gms/b/a/l;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/an;->a(Lcom/google/android/gms/common/api/internal/an;Lcom/google/android/gms/b/a/l;)V

    .line 3
    return-void
.end method
