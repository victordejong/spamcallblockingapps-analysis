.class public Lcom/google/android/gms/ads/internal/overlay/zzc;
.super Lcom/google/android/gms/internal/ads/zzarr;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzz;


# static fields
.field private static final zzdrk:I


# instance fields
.field protected final zzaas:Landroid/app/Activity;

.field private zzbpe:Z

.field zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

.field private zzdrn:Lcom/google/android/gms/ads/internal/overlay/zzp;

.field private zzdro:Z

.field private zzdrp:Landroid/widget/FrameLayout;

.field private zzdrq:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzdrr:Z

.field private zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

.field private zzdrt:Z

.field zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field private final zzdrv:Ljava/lang/Object;

.field private zzdrw:Ljava/lang/Runnable;

.field private zzdrx:Z

.field private zzdry:Z

.field private zzdrz:Z

.field private zzdsa:Z

.field private zzdsb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 372
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrk:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarr;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdro:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrr:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    .line 6
    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdso:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrv:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrz:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdsa:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdsb:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    return-void
.end method

.method private final zza(Landroid/content/res/Configuration;)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbpf:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 343
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    .line 346
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    .line 348
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzk;->zzbpk:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 350
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 351
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcpt:Lcom/google/android/gms/internal/ads/zzaba;

    .line 352
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    .line 354
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x100

    if-eqz v1, :cond_4

    const/16 v0, 0x1504

    if-eqz v2, :cond_4

    const/16 v0, 0x1706

    .line 360
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_5
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_6

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 364
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    if-eqz v2, :cond_7

    .line 367
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 369
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 370
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_7
    return-void
.end method

.method private final zzaj(Z)V
    .locals 4

    .line 139
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvf:Lcom/google/android/gms/internal/ads/zzaba;

    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>()V

    const/16 v2, 0x32

    .line 143
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 144
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    .line 145
    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingRight:I

    .line 146
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingTop:I

    .line 147
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzs;->paddingBottom:I

    .line 148
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzp;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzs;Lcom/google/android/gms/ads/internal/overlay/zzz;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrn:Lcom/google/android/gms/ads/internal/overlay/zzp;

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    .line 152
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsx:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V

    .line 154
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrn:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzak(Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzg;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 204
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdry:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 205
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 206
    :cond_0
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 209
    iget-object v2, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 210
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzadp()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 211
    :goto_1
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    if-eqz v2, :cond_6

    .line 213
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 214
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    .line 215
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    goto :goto_2

    .line 216
    :cond_4
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    .line 217
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    .line 218
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    .line 219
    :cond_6
    :goto_2
    iget-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    const/16 v5, 0x2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Delay onShow to next orientation change: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 220
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v9, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    const/high16 v4, 0x1000000

    .line 221
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 222
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdy(Ljava/lang/String;)V

    .line 223
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    if-nez v0, :cond_7

    .line 224
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzj;->setBackgroundColor(I)V

    goto :goto_3

    .line 225
    :cond_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    sget v4, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrk:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzj;->setBackgroundColor(I)V

    .line 226
    :goto_3
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 228
    iput-boolean v1, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdry:Z

    if-eqz p1, :cond_e

    .line 231
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzks()Lcom/google/android/gms/internal/ads/zzbej;

    iget-object v10, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    .line 232
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacv()Lcom/google/android/gms/internal/ads/zzbft;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_8
    move-object v11, v3

    .line 233
    :goto_4
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacw()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_9
    move-object v12, v3

    :goto_5
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 235
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 236
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v4, :cond_a

    .line 237
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->zzabf()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_6

    :cond_a
    move-object/from16 v20, v3

    .line 239
    :goto_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztu;->zznf()Lcom/google/android/gms/internal/ads/zztu;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move v14, v2

    move-object/from16 v17, v0

    .line 240
    invoke-static/range {v10 .. v23}, Lcom/google/android/gms/internal/ads/zzbej;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbft;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzei;Lcom/google/android/gms/internal/ads/zzacq;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzacc;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zztu;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdgz:Lcom/google/android/gms/internal/ads/zzahi;

    const/4 v13, 0x0

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdha:Lcom/google/android/gms/internal/ads/zzahk;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsz:Lcom/google/android/gms/ads/internal/overlay/zzv;

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 247
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_b

    .line 248
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzado()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v3

    :cond_b
    move-object/from16 v18, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 250
    invoke-interface/range {v10 .. v24}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzvc;Lcom/google/android/gms/internal/ads/zzahi;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/ads/zzahk;Lcom/google/android/gms/ads/internal/overlay/zzv;ZLcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqt;Lcom/google/android/gms/internal/ads/zzawz;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzdss;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;)V

    .line 251
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 252
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacx()Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzf;

    invoke-direct {v3, v9}, Lcom/google/android/gms/ads/internal/overlay/zzf;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    .line 253
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zza(Lcom/google/android/gms/internal/ads/zzbfq;)V

    .line 254
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 255
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbeb;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    .line 256
    :cond_c
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsy:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 257
    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsw:Ljava/lang/String;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsy:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbeb;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_f

    .line 260
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/zzbeb;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto :goto_8

    .line 258
    :cond_d
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Error obtaining webview."

    .line 243
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v1, "Could not obtain webview for the overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_e
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 262
    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzbeb;->zzbv(Landroid/content/Context;)V

    .line 263
    :cond_f
    :goto_8
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    .line 264
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_10

    .line 265
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 266
    :cond_10
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    .line 267
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 268
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_11

    .line 269
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 270
    :cond_11
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    if-eqz v0, :cond_12

    .line 271
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadj()V

    .line 272
    :cond_12
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 273
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 274
    invoke-virtual {v0, v4, v5, v5}, Lcom/google/android/gms/ads/internal/overlay/zzj;->addView(Landroid/view/View;II)V

    :cond_13
    if-nez p1, :cond_14

    .line 275
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    if-nez v0, :cond_14

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzwb()V

    .line 277
    :cond_14
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    if-eq v0, v3, :cond_16

    .line 278
    invoke-direct {v9, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(Z)V

    .line 279
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzacz()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 280
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V

    :cond_15
    return-void

    .line 282
    :cond_16
    iget-object v1, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdte:Lcom/google/android/gms/ads/internal/util/zzbg;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtd:Lcom/google/android/gms/internal/ads/zzcqr;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvs:Ljava/lang/String;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtf:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcrb;->zza(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/zzcqr;Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_17
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 325
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final zzvy()V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrz:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 286
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrz:Z

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzwf()I

    move-result v0

    .line 289
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzdu(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrv:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrx:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zze;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zze;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrw:Ljava/lang/Runnable;

    .line 293
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrw:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcpq:Lcom/google/android/gms/internal/ads/zzaba;

    .line 295
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 296
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 297
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdvl;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    monitor-exit v0

    return-void

    .line 299
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 300
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzvz()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzwb()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzwb()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 13
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdsq:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdso:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 50
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrr:Z

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_c

    .line 54
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    const v3, 0x7270e0

    if-le v2, v3, :cond_1

    .line 55
    sget-object v2, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdsr:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    .line 58
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shouldCallOnOverlayOpened"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdsb:Z

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    const/4 v3, 0x5

    if-eqz v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzk;->zzbpe:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    goto :goto_1

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    if-ne v2, v3, :cond_4

    .line 62
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    goto :goto_1

    .line 63
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    .line 64
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzbpe:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzk;->zzbpj:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 65
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzl;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzl;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/zzh;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zza;->zzye()Lcom/google/android/gms/internal/ads/zzdzw;

    :cond_5
    if-nez p1, :cond_7

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz p1, :cond_6

    .line 68
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdsb:Z

    if-eqz p1, :cond_6

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzvo()V

    .line 70
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz p1, :cond_7

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchd:Lcom/google/android/gms/internal/ads/zzvc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvc;->onAdClicked()V

    .line 72
    :cond_7
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    invoke-direct {p1, v2, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/16 v2, 0x3e8

    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzj;->setId(I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkt()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzi(Landroid/app/Activity;)V

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdta:I

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_8

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzak(Z)V

    return-void

    .line 85
    :cond_8
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzak(Z)V

    return-void

    .line 78
    :cond_a
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    .line 79
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzak(Z)V

    return-void

    .line 76
    :cond_b
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzak(Z)V

    return-void

    .line 53
    :cond_c
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzg; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzg;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdsr:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 88
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzj;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzvy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzvu()V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onPause()V

    .line 112
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvd:Lcom/google/android/gms/internal/ads/zzaba;

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->onPause()V

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzvy()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onResume()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Landroid/content/res/Configuration;)V

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvd:Lcom/google/android/gms/internal/ads/zzaba;

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->onResume()V

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrr:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvd:Lcom/google/android/gms/internal/ads/zzaba;

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->onResume()V

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 125
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvd:Lcom/google/android/gms/internal/ads/zzaba;

    .line 126
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->onPause()V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzvy()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzq;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcxm:Lcom/google/android/gms/internal/ads/zzaba;

    .line 177
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 178
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcxn:Lcom/google/android/gms/internal/ads/zzaba;

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcxo:Lcom/google/android/gms/internal/ads/zzaba;

    .line 184
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcxp:Lcom/google/android/gms/internal/ads/zzaba;

    .line 187
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 190
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 193
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkv()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 195
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrp:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrp:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 198
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrp:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdry:Z

    .line 201
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 202
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdro:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 6

    .line 158
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcpr:Lcom/google/android/gms/internal/ads/zzaba;

    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbpl:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabp;->zzcps:Lcom/google/android/gms/internal/ads/zzaba;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v3

    .line 165
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdtc:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzk;->zzbpm:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 167
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqq;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Lcom/google/android/gms/internal/ads/zzbeb;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 168
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzaqq;->zzds(Ljava/lang/String;)V

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrn:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 170
    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzam(Z)V

    :cond_5
    return-void
.end method

.method public final zzad(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final zzdp()V
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdry:Z

    return-void
.end method

.method public final zzvu()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdro:Z

    if-eqz v1, :cond_0

    .line 19
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrp:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdry:Z

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrp:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 25
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrp:Landroid/widget/FrameLayout;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 27
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 28
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrq:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdro:Z

    return-void
.end method

.method public final zzvv()V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdsp:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzvw()Z
    .locals 4

    .line 39
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzn;->zzdso:Lcom/google/android/gms/ads/internal/overlay/zzn;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzade()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    .line 46
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final zzvx()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrn:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzj;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaj(Z)V

    return-void
.end method

.method final zzvz()V
    .locals 5

    .line 302
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdsa:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdsa:Z

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_3

    .line 306
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzj;->removeView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 308
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->context:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzbv(Landroid/content/Context;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzay(Z)V

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzi;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 311
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzi;->index:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzi;->zzdsi:Landroid/view/ViewGroup$LayoutParams;

    .line 312
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrm:Lcom/google/android/gms/ads/internal/overlay/zzi;

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzaas:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzbv(Landroid/content/Context;)V

    .line 316
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdsv:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdru:Lcom/google/android/gms/ads/internal/overlay/zzn;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 321
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->zzadb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrl:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v1

    .line 322
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final zzwa()V
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrt:Z

    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzwb()V

    :cond_0
    return-void
.end method

.method public final zzwc()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrs:Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v1, 0x1

    .line 334
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzj;->zzdsk:Z

    return-void
.end method

.method public final zzwd()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrv:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 337
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrx:Z

    .line 338
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrw:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 339
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrw:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzeen:Lcom/google/android/gms/internal/ads/zzdvl;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdrw:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvl;->post(Ljava/lang/Runnable;)Z

    .line 341
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
