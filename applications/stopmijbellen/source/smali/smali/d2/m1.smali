.class public Ld2/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/m1;->b:Ld2/f1;

    iput-object p2, p0, Ld2/m1;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/m1;->b:Ld2/f1;

    .line 2
    iget-object v0, v0, Ld2/f1;->p:Ld2/r;

    .line 3
    iget-object v1, p0, Ld2/m1;->a:Ld2/t0;

    .line 4
    iget-object v1, v1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "reward_amount"

    .line 5
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v2

    const-string v3, "reward_name"

    .line 6
    invoke-virtual {v1, v3}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "success"

    .line 7
    invoke-static {v1, v4}, Ld2/e4;->l(Ld2/f4;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "zone_id"

    .line 8
    invoke-virtual {v1, v5}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    check-cast v0, Lm2/c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v1}, Lm2/c;->N(Ljava/lang/String;)Lm2/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, v0, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoComplete()V

    if-eqz v4, :cond_0

    .line 13
    new-instance v1, Ll0/c;

    .line 14
    invoke-direct {v1, v3, v2}, Ll0/c;-><init>(Ljava/lang/Object;I)V

    .line 15
    iget-object v0, v0, Lm2/e;->a:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_0
    return-void
.end method
