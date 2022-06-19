.class final synthetic Lcom/google/android/gms/internal/ads/sa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zc;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sa;->a:Lcom/google/android/gms/internal/ads/zc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sa;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sa;->a:Lcom/google/android/gms/internal/ads/zc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sa;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/sb;->a(Lcom/google/android/gms/internal/ads/zc;Ljava/lang/String;)V

    return-void
.end method
