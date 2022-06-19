.class public Lcom/google/android/gms/ads/internal/overlay/zze;
.super Lcom/google/android/gms/internal/ads/qy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzab;


# static fields
.field private static final zzdta:I


# instance fields
.field protected final zzaax:Landroid/app/Activity;

.field private zzbpo:Z

.field zzdkm:Lcom/google/android/gms/internal/ads/adt;

.field zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

.field private zzdtd:Lcom/google/android/gms/ads/internal/overlay/zzr;

.field private zzdte:Z

.field private zzdtf:Landroid/widget/FrameLayout;

.field private zzdtg:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private zzdth:Z

.field private zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field private zzdtj:Z

.field zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private final zzdtl:Ljava/lang/Object;

.field private zzdtm:Ljava/lang/Runnable;

.field private zzdtn:Z

.field private zzdto:Z

.field private zzdtp:Z

.field private zzdtq:Z

.field private zzdtr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 376
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdta:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qy;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdte:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdth:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    .line 6
    sget-object v1, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtw:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 7
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtl:Ljava/lang/Object;

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtp:Z

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtq:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtr:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    return-void
.end method

.method private final zza(Landroid/content/res/Configuration;)V
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbpp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 347
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/ads/internal/util/zzr;->zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    .line 350
    iget-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    const/16 v4, 0x13

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_2

    .line 352
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/zzk;->zzbpu:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 354
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 355
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aJ:Lcom/google/android/gms/internal/ads/af;

    .line 356
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    .line 358
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x100

    if-eqz v1, :cond_4

    const/16 v0, 0x1504

    if-eqz v2, :cond_4

    const/16 v0, 0x1706

    .line 364
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :cond_5
    const/16 v0, 0x400

    const/16 v3, 0x800

    if-eqz v1, :cond_6

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 368
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 369
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    if-eqz v2, :cond_7

    .line 371
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1002

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    .line 373
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_7
    return-void
.end method

.method private final zzan(Z)V
    .locals 4

    .line 139
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cM:Lcom/google/android/gms/internal/ads/af;

    .line 140
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {v1}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>()V

    const/16 v2, 0x32

    .line 143
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->size:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 144
    :goto_0
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingLeft:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    .line 145
    :goto_1
    iput v3, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingRight:I

    .line 146
    iput v2, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingTop:I

    .line 147
    iput v0, v1, Lcom/google/android/gms/ads/internal/overlay/zzq;->paddingBottom:I

    .line 148
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzr;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzab;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtd:Lcom/google/android/gms/ads/internal/overlay/zzr;

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
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduh:Z

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    .line 154
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtd:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final zzao(Z)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzi;
        }
    .end annotation

    move-object/from16 v9, p0

    .line 208
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdto:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 209
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 210
    :cond_0
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 213
    iget-object v2, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 214
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/afe;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 215
    :goto_1
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    if-eqz v2, :cond_6

    .line 217
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 218
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    .line 219
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v1, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    goto :goto_2

    .line 220
    :cond_4
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    .line 221
    iget-object v5, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    .line 222
    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    .line 223
    :cond_6
    :goto_2
    iget-boolean v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    const/16 v5, 0x2e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Delay onShow to next orientation change: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 224
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {v9, v4}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    const/high16 v4, 0x1000000

    .line 225
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    .line 226
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 227
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    if-nez v0, :cond_7

    .line 228
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    goto :goto_3

    .line 229
    :cond_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    sget v4, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdta:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    .line 230
    :goto_3
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 232
    iput-boolean v1, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdto:Z

    if-eqz p1, :cond_e

    .line 235
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkw()Lcom/google/android/gms/internal/ads/aeb;

    iget-object v10, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    .line 236
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->z()Lcom/google/android/gms/internal/ads/afh;

    move-result-object v0

    move-object v11, v0

    goto :goto_4

    :cond_8
    move-object v11, v3

    .line 237
    :goto_4
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_9

    .line 238
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->A()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_5

    :cond_9
    move-object v12, v3

    :goto_5
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 239
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    const/16 v18, 0x0

    .line 240
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v4, :cond_a

    .line 241
    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/adt;->e()Lcom/google/android/gms/ads/internal/zzb;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_6

    :cond_a
    move-object/from16 v19, v3

    .line 1001
    :goto_6
    new-instance v20, Lcom/google/android/gms/internal/ads/ehk;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/ehk;-><init>()V

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v14, v2

    move-object/from16 v17, v0

    .line 244
    invoke-static/range {v10 .. v22}, Lcom/google/android/gms/internal/ads/aeb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/afh;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/die;Lcom/google/android/gms/internal/ads/bw;Lcom/google/android/gms/internal/ads/zzbar;Lcom/google/android/gms/ads/internal/zzm;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/ehk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/coz;)Lcom/google/android/gms/internal/ads/adt;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lcom/google/android/gms/internal/ads/go;

    const/4 v13, 0x0

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdie:Lcom/google/android/gms/internal/ads/gq;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduj:Lcom/google/android/gms/ads/internal/overlay/zzx;

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 251
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/afe;->a()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v3

    :cond_b
    move-object/from16 v18, v3

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 254
    invoke-interface/range {v10 .. v24}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/eir;Lcom/google/android/gms/internal/ads/go;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/internal/ads/gq;Lcom/google/android/gms/ads/internal/overlay/zzx;ZLcom/google/android/gms/internal/ads/hk;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/pz;Lcom/google/android/gms/internal/ads/vy;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/cus;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;)V

    .line 255
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 256
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->B()Lcom/google/android/gms/internal/ads/afe;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {v3, v9}, Lcom/google/android/gms/ads/internal/overlay/zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 257
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/afe;->a(Lcom/google/android/gms/internal/ads/afd;)V

    .line 258
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 259
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/adt;->loadUrl(Ljava/lang/String;)V

    goto :goto_7

    .line 260
    :cond_c
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 261
    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdug:Ljava/lang/String;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdui:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/adt;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_7
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_f

    .line 264
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/adt;->b(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    goto :goto_8

    .line 262
    :cond_d
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Error obtaining webview."

    .line 247
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v1, "Could not obtain webview for the overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_e
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    iput-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 266
    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Landroid/content/Context;)V

    .line 267
    :cond_f
    :goto_8
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0, v9}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    .line 268
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_10

    .line 269
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->F()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v3, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-static {v0, v3}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzc(Lcom/google/android/gms/dynamic/b;Landroid/view/View;)V

    .line 270
    :cond_10
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_13

    .line 271
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 272
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_11

    .line 273
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    :cond_11
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    if-eqz v0, :cond_12

    .line 275
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->O()V

    .line 276
    :cond_12
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v4, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 277
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    .line 278
    invoke-virtual {v0, v4, v5, v5}, Lcom/google/android/gms/ads/internal/overlay/zzh;->addView(Landroid/view/View;II)V

    :cond_13
    if-nez p1, :cond_14

    .line 279
    iget-boolean v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    if-nez v0, :cond_14

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwm()V

    .line 281
    :cond_14
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq v0, v3, :cond_16

    .line 282
    invoke-direct {v9, v2}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzan(Z)V

    .line 283
    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->D()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 284
    invoke-virtual {v9, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(ZZ)V

    :cond_15
    return-void

    .line 286
    :cond_16
    iget-object v1, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduo:Lcom/google/android/gms/ads/internal/util/zzbg;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdun:Lcom/google/android/gms/internal/ads/brs;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdje:Lcom/google/android/gms/internal/ads/bli;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdjf:Lcom/google/android/gms/internal/ads/cty;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbwe:Ljava/lang/String;

    iget-object v0, v9, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdup:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/bsc;->a(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/util/zzbg;Lcom/google/android/gms/internal/ads/brs;Lcom/google/android/gms/internal/ads/bli;Lcom/google/android/gms/internal/ads/cty;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_17
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v1, "Invalid activity, no window available."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzc(Lcom/google/android/gms/dynamic/b;Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 329
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlk()Lcom/google/android/gms/internal/ads/qt;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/qt;->a(Lcom/google/android/gms/dynamic/b;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final zzwj()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtp:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtp:Z

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzwq()I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/adt;->d(I)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtl:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtn:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->K()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtm:Ljava/lang/Runnable;

    .line 297
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtm:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->aG:Lcom/google/android/gms/internal/ads/af;

    .line 299
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 300
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 301
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cxg;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    monitor-exit v0

    return-void

    .line 303
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 304
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwk()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final zzwm()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->u()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 13
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdty:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

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
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtw:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

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
    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdth:Z

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzd(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_c

    .line 54
    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbar;->zzekb:I

    const v3, 0x7270e0

    if-le v2, v3, :cond_1

    .line 55
    sget-object v2, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    .line 58
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shouldCallOnOverlayOpened"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtr:Z

    .line 59
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    const/4 v3, 0x5

    if-eqz v2, :cond_3

    .line 60
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzk;->zzbpo:Z

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    goto :goto_1

    .line 61
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-ne v2, v3, :cond_4

    .line 62
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    goto :goto_1

    .line 63
    :cond_4
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    .line 64
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzbpo:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    iget v2, v2, Lcom/google/android/gms/ads/internal/zzk;->zzbpt:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    .line 65
    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzj;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/android/gms/ads/internal/overlay/zzj;-><init>(Lcom/google/android/gms/ads/internal/overlay/zze;Lcom/google/android/gms/ads/internal/overlay/zzf;)V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/util/zza;->zzyx()Lcom/google/android/gms/internal/ads/dbt;

    :cond_5
    if-nez p1, :cond_7

    .line 67
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz p1, :cond_6

    .line 68
    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtr:Z

    if-eqz p1, :cond_6

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zzvz()V

    .line 70
    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq p1, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Lcom/google/android/gms/internal/ads/eir;

    if-eqz p1, :cond_7

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzchr:Lcom/google/android/gms/internal/ads/eir;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eir;->onAdClicked()V

    .line 72
    :cond_7
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdul:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbpx:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbar;->zzbrz:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbvf:Ljava/lang/String;

    invoke-direct {p1, v2, v4, v5, v6}, Lcom/google/android/gms/ads/internal/overlay/zzh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/16 v2, 0x3e8

    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setId(I)V

    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkx()Lcom/google/android/gms/ads/internal/util/zzr;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzr;->zzi(Landroid/app/Activity;)V

    .line 75
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduk:I

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_9

    if-ne p1, v3, :cond_8

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzao(Z)V

    return-void

    .line 85
    :cond_8
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_9
    invoke-direct {p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzao(Z)V

    return-void

    .line 78
    :cond_a
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-direct {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzk;-><init>(Lcom/google/android/gms/internal/ads/adt;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    .line 79
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzao(Z)V

    return-void

    .line 76
    :cond_b
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzao(Z)V

    return-void

    .line 53
    :cond_c
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzi;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzi;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/zzi; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzi;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtz:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 88
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwj()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwf()V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onPause()V

    .line 112
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cK:Lcom/google/android/gms/internal/ads/af;

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_2

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->onPause()V

    .line 117
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwj()V

    return-void
.end method

.method public final onRestart()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onResume()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/res/Configuration;)V

    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cK:Lcom/google/android/gms/internal/ads/af;

    .line 103
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->H()Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->onResume()V

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    .line 107
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdth:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 91
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cK:Lcom/google/android/gms/internal/ads/af;

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->onResume()V

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 125
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cK:Lcom/google/android/gms/internal/ads/af;

    .line 126
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->onPause()V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwj()V

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzp;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public final setRequestedOrientation(I)V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dB:Lcom/google/android/gms/internal/ads/af;

    .line 181
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    .line 183
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dC:Lcom/google/android/gms/internal/ads/af;

    .line 185
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 186
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dD:Lcom/google/android/gms/internal/ads/af;

    .line 188
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lcom/google/android/gms/internal/ads/aq;->dE:Lcom/google/android/gms/internal/ads/af;

    .line 191
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    .line 194
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 197
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v0

    const-string v1, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/yd;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 199
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtf:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    .line 200
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtf:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 202
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtf:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 204
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdto:Z

    .line 205
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 206
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdte:Z

    return-void
.end method

.method public final zza(ZZ)V
    .locals 6

    .line 158
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->aH:Lcom/google/android/gms/internal/ads/af;

    .line 160
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/zzk;->zzbpv:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->aI:Lcom/google/android/gms/internal/ads/af;

    .line 164
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 165
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdum:Lcom/google/android/gms/ads/internal/zzk;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/zzk;->zzbpw:Z

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
    new-instance p1, Lcom/google/android/gms/internal/ads/qa;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lcom/google/android/gms/internal/ads/qa;-><init>(Lcom/google/android/gms/internal/ads/adt;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 168
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/qa;->a(Ljava/lang/String;)V

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtd:Lcom/google/android/gms/ads/internal/overlay/zzr;

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
    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/internal/overlay/zzr;->zzap(Z)V

    :cond_5
    return-void
.end method

.method public final zzac(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    return-void

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzae(Lcom/google/android/gms/dynamic/b;)V
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zza(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final zzdq()V
    .locals 1

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdto:Z

    return-void
.end method

.method public final zzwf()V
    .locals 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdte:Z

    if-eqz v1, :cond_0

    .line 19
    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->setRequestedOrientation(I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtf:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdto:Z

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtf:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 25
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtf:Landroid/widget/FrameLayout;

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 27
    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 28
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtg:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdte:Z

    return-void
.end method

.method public final zzwg()V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtx:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final zzwh()Z
    .locals 4

    .line 39
    sget-object v0, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzdtw:Lcom/google/android/gms/ads/internal/overlay/zzl;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->J()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    .line 46
    invoke-interface {v1, v3, v2}, Lcom/google/android/gms/internal/ads/adt;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final zzwi()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtd:Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 177
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzan(Z)V

    return-void
.end method

.method final zzwk()V
    .locals 5

    .line 306
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtq:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtq:Z

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_3

    .line 310
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzh;->removeView(Landroid/view/View;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 312
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->context:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/adt;->a(Landroid/content/Context;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/adt;->b(Z)V

    .line 314
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzk;->parent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 315
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzk;->index:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzdtv:Landroid/view/ViewGroup$LayoutParams;

    .line 316
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtc:Lcom/google/android/gms/ads/internal/overlay/zzk;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzaax:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/adt;->a(Landroid/content/Context;)V

    .line 320
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    if-eqz v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzduf:Lcom/google/android/gms/ads/internal/overlay/zzp;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtk:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzp;->zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    if-eqz v0, :cond_5

    .line 324
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    .line 325
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/adt;->F()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtb:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdkm:Lcom/google/android/gms/internal/ads/adt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/adt;->s()Landroid/view/View;

    move-result-object v1

    .line 326
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzc(Lcom/google/android/gms/dynamic/b;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final zzwl()V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 332
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtj:Z

    .line 333
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zze;->zzwm()V

    :cond_0
    return-void
.end method

.method public final zzwn()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdti:Lcom/google/android/gms/ads/internal/overlay/zzh;

    const/4 v1, 0x1

    .line 338
    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzh;->zzdtt:Z

    return-void
.end method

.method public final zzwo()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtl:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 341
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtn:Z

    .line 342
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtm:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 343
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    sget-object v1, Lcom/google/android/gms/ads/internal/util/zzj;->zzegq:Lcom/google/android/gms/internal/ads/cxg;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zze;->zzdtm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/cxg;->post(Ljava/lang/Runnable;)Z

    .line 345
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
