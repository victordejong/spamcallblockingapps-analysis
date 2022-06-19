.class final Lcom/google/android/gms/common/internal/y;
.super Lcom/google/android/gms/common/internal/f;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field private final synthetic a:Landroid/content/Intent;

.field private final synthetic b:Lcom/google/android/gms/common/api/internal/i;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/i;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/y;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/y;->b:Lcom/google/android/gms/common/api/internal/i;

    iput p3, p0, Lcom/google/android/gms/common/internal/y;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/y;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/internal/y;->b:Lcom/google/android/gms/common/api/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/y;->a:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/y;->c:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/i;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4
    :cond_0
    return-void
.end method
