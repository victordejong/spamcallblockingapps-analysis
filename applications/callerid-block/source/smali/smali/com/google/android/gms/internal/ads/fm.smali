.class final synthetic Lcom/google/android/gms/internal/ads/fm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vm;


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fm;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/av;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fm;->a:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/av;->o0(Landroid/os/Bundle;)V

    return-void
.end method
