.class final Lcom/google/android/gms/common/api/internal/bb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/ba;

.field private final b:Lcom/google/android/gms/common/api/internal/bc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ba;Lcom/google/android/gms/common/api/internal/bc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bb;->b:Lcom/google/android/gms/common/api/internal/bc;

    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/ba;->b:Z

    if-nez v0, :cond_0

    .line 28
    :goto_0
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->b:Lcom/google/android/gms/common/api/internal/bc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bc;->b()Lcom/google/android/gms/common/b;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ba;->a:Lcom/google/android/gms/common/api/internal/i;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ba;->a()Landroid/app/Activity;

    move-result-object v1

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/bb;->b:Lcom/google/android/gms/common/api/internal/bc;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/bc;->a()I

    move-result v3

    const/4 v4, 0x0

    .line 13
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    .line 14
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/i;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ba;->d:Lcom/google/android/gms/common/e;

    invoke-virtual {v3}, Lcom/google/android/gms/common/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/e;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/ba;->d:Lcom/google/android/gms/common/e;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ba;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/ba;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/common/b;->c()I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/e;->a(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/i;IILandroid/content/DialogInterface$OnCancelListener;)Z

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/common/b;->c()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ba;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/e;->a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/ba;->d:Lcom/google/android/gms/common/e;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/ba;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/bd;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/bd;-><init>(Lcom/google/android/gms/common/api/internal/bb;Landroid/app/Dialog;)V

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/af;)Lcom/google/android/gms/common/api/internal/ag;

    goto :goto_0

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bb;->a:Lcom/google/android/gms/common/api/internal/ba;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bb;->b:Lcom/google/android/gms/common/api/internal/bc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/bc;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/common/api/internal/ba;->a(Lcom/google/android/gms/common/b;I)V

    goto/16 :goto_0
.end method
