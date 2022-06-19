.class final Lcom/google/android/gms/common/api/internal/am;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/an;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/an;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/am;->a:Lcom/google/android/gms/common/api/internal/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/am;->a:Lcom/google/android/gms/common/api/internal/an;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/an;->a(Lcom/google/android/gms/common/api/internal/an;)Lcom/google/android/gms/common/api/internal/ao;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/b;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/ao;->b(Lcom/google/android/gms/common/b;)V

    .line 3
    return-void
.end method
