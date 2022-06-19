.class public final synthetic Li2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Li2/k;->a:I

    iput-object p1, p0, Li2/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Li2/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Li2/k;->b:Ljava/lang/Object;

    check-cast v0, Li2/m;

    .line 2
    iget-object v1, v0, Li2/m;->d:Lcom/android/billingclient/api/b;

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lcom/android/billingclient/api/b;->a:I

    .line 4
    iget-object v1, v0, Li2/m;->d:Lcom/android/billingclient/api/b;

    const/4 v2, 0x0

    .line 5
    iput-object v2, v1, Lcom/android/billingclient/api/b;->f:Lcom/google/android/gms/internal/play_billing/zze;

    .line 6
    sget-object v1, Li2/n;->m:Li2/c;

    invoke-virtual {v0, v1}, Li2/m;->a(Li2/c;)V

    return-void

    .line 7
    :goto_0
    iget-object v0, p0, Li2/k;->b:Ljava/lang/Object;

    check-cast v0, Li2/g;

    sget-object v1, Li2/n;->m:Li2/c;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzu;->zzh()Lcom/google/android/gms/internal/play_billing/zzu;

    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Li2/g;->b(Li2/c;Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
