.class final synthetic Lcom/google/android/gms/internal/ads/mt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mt;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mt;->b:Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/qt;->B:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/r;->h()Lcom/google/android/gms/internal/ads/zn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zn;->a()Lcom/google/android/gms/internal/ads/r3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/r3;->e(Ljava/lang/String;)V

    return-void
.end method
