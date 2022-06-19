.class final Lcom/google/android/gms/common/internal/b0;
.super Lcom/google/android/gms/common/internal/c0;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lcom/google/android/gms/common/api/internal/h;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/h;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/b0;->d:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/b0;->e:Lcom/google/android/gms/common/api/internal/h;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/b0;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/b0;->e:Lcom/google/android/gms/common/api/internal/h;

    const/4 v2, 0x2

    .line 1
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/h;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
