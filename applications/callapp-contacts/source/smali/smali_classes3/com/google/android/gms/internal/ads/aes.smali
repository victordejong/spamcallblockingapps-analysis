.class final synthetic Lcom/google/android/gms/internal/ads/aes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aeq;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aeq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aes;->a:Lcom/google/android/gms/internal/ads/aeq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aes;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aes;->a:Lcom/google/android/gms/internal/ads/aeq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aes;->b:Ljava/lang/String;

    .line 1027
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aeq;->a:Lcom/google/android/gms/internal/ads/aer;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/aer;->a(Landroid/net/Uri;)V

    return-void
.end method
