.class final synthetic Lcom/google/android/gms/internal/ads/cmv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cmt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cmt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmv;->a:Lcom/google/android/gms/internal/ads/cmt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmv;->a:Lcom/google/android/gms/internal/ads/cmt;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cmt;->a:Lcom/google/android/gms/internal/ads/cmr;

    .line 1075
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cmr;->c:Lcom/google/android/gms/internal/ads/cnc;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cnc;->a()V

    return-void
.end method
