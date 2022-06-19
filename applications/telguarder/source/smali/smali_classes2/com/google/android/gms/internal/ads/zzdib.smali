.class final Lcom/google/android/gms/internal/ads/zzdib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcze;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcze<",
        "Lcom/google/android/gms/internal/ads/zzblg;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdhx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzblg;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnt;->destroy()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzdhx;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzdhx;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzajr()Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzzd()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzaji()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzb(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcvw:Lcom/google/android/gms/internal/ads/zzaba;

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzdhx;Lcom/google/android/gms/internal/ads/zzblg;)Lcom/google/android/gms/ads/internal/overlay/zzp;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzd(Lcom/google/android/gms/internal/ads/zzblg;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzajs()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzblg;->zzajj()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzam(Z)V

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzdhx;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzb(Lcom/google/android/gms/internal/ads/zzdhx;Lcom/google/android/gms/internal/ads/zzblg;)V

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzdhx;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzc(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvs;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zza(Lcom/google/android/gms/internal/ads/zzdhx;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdhx;->zzc(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzvs;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdhx;->zzd(Lcom/google/android/gms/internal/ads/zzdhx;)Lcom/google/android/gms/internal/ads/zzdil;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzblr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzblr;-><init>(Lcom/google/android/gms/internal/ads/zzblg;Lcom/google/android/gms/internal/ads/zzxl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdil;->zzb(Lcom/google/android/gms/internal/ads/zzsk;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnt;->zzakb()V

    return-void
.end method

.method public final zzasi()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->zzhfi:Lcom/google/android/gms/internal/ads/zzdhx;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdhx;->zzhfg:Lcom/google/android/gms/internal/ads/zzblg;

    return-void
.end method
