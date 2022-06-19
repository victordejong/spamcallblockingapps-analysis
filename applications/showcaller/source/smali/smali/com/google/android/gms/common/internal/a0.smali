.class final Lcom/google/android/gms/common/internal/a0;
.super Lcom/google/android/gms/common/internal/c0;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Landroid/app/Activity;

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a0;->d:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/a0;->e:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/a0;->f:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a0;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/a0;->e:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/common/internal/a0;->f:I

    .line 1
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
