.class final synthetic Lcom/google/android/gms/internal/ads/aef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aef;->a:Lcom/google/android/gms/dynamic/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aef;->a:Lcom/google/android/gms/dynamic/b;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbft;->b(Lcom/google/android/gms/dynamic/b;)V

    return-void
.end method
