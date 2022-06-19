.class final synthetic Lcom/google/android/gms/internal/ads/cdq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cgy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cdr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cdq;->a:Lcom/google/android/gms/internal/ads/cdr;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cdq;->a:Lcom/google/android/gms/internal/ads/cdr;

    check-cast p1, Landroid/os/Bundle;

    .line 1010
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cdr;->a:Lcom/google/android/gms/internal/ads/clq;

    .line 2004
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/clq;->a:Ljava/lang/String;

    const-string v1, "key_schema"

    .line 1010
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
