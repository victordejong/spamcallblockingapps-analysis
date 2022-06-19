.class public final Li2/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ls2/c;

.field public b:Z

.field public final synthetic c:Landroidx/appcompat/widget/z;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/z;Ls2/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li2/q;->c:Landroidx/appcompat/widget/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Li2/q;->a:Ls2/c;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzh(Landroid/content/Intent;Ljava/lang/String;)Li2/c;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Li2/q;->a:Ls2/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Ls2/c;->e(Li2/c;Ljava/util/List;)V

    return-void
.end method
