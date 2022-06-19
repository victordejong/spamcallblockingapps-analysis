.class final Lcom/google/android/gms/common/api/internal/e1;
.super Lcom/google/android/gms/common/api/internal/h0;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/f1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/f1;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/f1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/e1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e1;->b:Lcom/google/android/gms/common/api/internal/f1;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/f1;->e:Lcom/google/android/gms/common/api/internal/g1;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/g1;->r(Lcom/google/android/gms/common/api/internal/g1;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e1;->a:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/e1;->a:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
