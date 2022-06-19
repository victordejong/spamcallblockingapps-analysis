.class final Lcom/google/android/gms/common/api/internal/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/bv;

.field private final b:Lcom/google/android/gms/common/api/internal/bs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/bv;Lcom/google/android/gms/common/api/internal/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bu;->b:Lcom/google/android/gms/common/api/internal/bs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/bv;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->b:Lcom/google/android/gms/common/api/internal/bs;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/bs;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/bv;->a:Lcom/google/android/gms/common/api/internal/h;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/bv;->a()Landroid/app/Activity;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/bu;->b:Lcom/google/android/gms/common/api/internal/bs;

    .line 2000
    iget v5, v5, Lcom/google/android/gms/common/api/internal/bs;->a:I

    .line 5
    invoke-static {v4, v0, v5, v3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/bv;->e:Lcom/google/android/gms/common/b;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/bv;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/4 v6, 0x0

    .line 7
    invoke-virtual {v4, v1, v5, v6}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/bv;->e:Lcom/google/android/gms/common/b;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/bv;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/bv;->a:Lcom/google/android/gms/common/api/internal/h;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    const-string v5, "d"

    .line 2001
    invoke-virtual {v2, v1, v0, v5}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/common/internal/ac;->a(Lcom/google/android/gms/common/api/internal/h;Landroid/content/Intent;)Lcom/google/android/gms/common/internal/ac;

    move-result-object v2

    .line 2002
    invoke-static {v1, v0, v2, v4}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/ac;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "GooglePlayServicesErrorDialog"

    .line 2003
    invoke-static {v1, v0, v2, v4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_2
    return-void

    .line 11
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v4, 0x12

    if-ne v1, v4, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bv;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    new-instance v5, Landroid/widget/ProgressBar;

    const v7, 0x101007a

    .line 3001
    invoke-direct {v5, v0, v6, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3002
    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3003
    invoke-virtual {v5, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3004
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3005
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3006
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/y;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 3007
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, ""

    .line 3008
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3009
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "GooglePlayServicesUpdatingDialog"

    .line 3010
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/bv;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/bt;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/common/api/internal/bt;-><init>(Lcom/google/android/gms/common/api/internal/bu;Landroid/app/Dialog;)V

    .line 14
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 4001
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    .line 4002
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/common/api/internal/zabr;

    .line 4003
    invoke-direct {v3, v1}, Lcom/google/android/gms/common/api/internal/zabr;-><init>(Lcom/google/android/gms/common/api/internal/ak;)V

    .line 4004
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5000
    iput-object v0, v3, Lcom/google/android/gms/common/api/internal/zabr;->a:Landroid/content/Context;

    const-string v2, "com.google.android.gms"

    .line 5001
    invoke-static {v0, v2}, Lcom/google/android/gms/common/d;->zza(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4007
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/ak;->a()V

    .line 4008
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabr;->a()V

    :cond_4
    return-void

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bu;->a:Lcom/google/android/gms/common/api/internal/bv;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bu;->b:Lcom/google/android/gms/common/api/internal/bs;

    .line 6000
    iget v2, v2, Lcom/google/android/gms/common/api/internal/bs;->a:I

    .line 15
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/bv;->a(Lcom/google/android/gms/common/api/internal/bv;Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
