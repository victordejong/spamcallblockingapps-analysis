.class final Lcom/google/android/gms/internal/ads/aei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/aeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/aeh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aei;->a:Lcom/google/android/gms/internal/ads/aeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aei;->a:Lcom/google/android/gms/internal/ads/aeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aeh;->b(Lcom/google/android/gms/internal/ads/aeh;)V

    return-void
.end method
