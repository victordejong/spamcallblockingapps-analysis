.class final Lcom/google/android/gms/common/api/internal/bt;
.super Lcom/google/android/gms/common/api/internal/ak;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/bu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bu;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bt;->b:Lcom/google/android/gms/common/api/internal/bu;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bt;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->b:Lcom/google/android/gms/common/api/internal/bu;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/bv;->a(Lcom/google/android/gms/common/api/internal/bv;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->a:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bt;->a:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
