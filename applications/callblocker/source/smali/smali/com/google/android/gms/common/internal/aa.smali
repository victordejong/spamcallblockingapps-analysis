.class final Lcom/google/android/gms/common/internal/aa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/k;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/aa;->a:Lcom/google/android/gms/common/api/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aa;->a:Lcom/google/android/gms/common/api/internal/k;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/k;->b(Lcom/google/android/gms/common/b;)V

    .line 3
    return-void
.end method
