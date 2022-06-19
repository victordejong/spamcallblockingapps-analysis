.class public Lcom/google/android/gms/ads/internal/overlay/c;
.super Lcom/google/android/gms/internal/ads/nx;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/y;


# static fields
.field private static final e:I


# instance fields
.field protected final a:Landroid/app/Activity;

.field b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field c:Lcom/google/android/gms/internal/ads/act;

.field d:I

.field private f:Lcom/google/android/gms/ads/internal/overlay/i;

.field private g:Lcom/google/android/gms/ads/internal/overlay/q;

.field private h:Z

.field private i:Landroid/widget/FrameLayout;

.field private j:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/gms/ads/internal/overlay/j;

.field private n:Z

.field private final o:Ljava/lang/Object;

.field private p:Ljava/lang/Runnable;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 361
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/c;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/nx;-><init>()V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Z

    .line 3
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Z

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    .line 6
    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Ljava/lang/Object;

    .line 8
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->s:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->t:Z

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->u:Z

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    .line 12
    return-void
.end method

.method private final a(Landroid/content/res/Configuration;)V
    .locals 8

    .prologue
    const/16 v7, 0x800

    const/16 v6, 0x400

    const/16 v5, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/g;->b:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 332
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v3

    .line 335
    iget-boolean v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_7

    :cond_0
    if-nez v3, :cond_7

    .line 337
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/g;->f:Z

    if-eqz v0, :cond_6

    move v3, v1

    move v4, v1

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 340
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->aw:Lcom/google/android/gms/internal/ads/ect;

    .line 341
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 342
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_4

    .line 343
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 344
    const/16 v0, 0x100

    .line 345
    if-eqz v4, :cond_1

    .line 346
    const/16 v0, 0x1504

    .line 347
    if-eqz v3, :cond_1

    .line 348
    const/16 v0, 0x1706

    .line 349
    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 360
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 331
    goto :goto_0

    .line 351
    :cond_4
    if-eqz v4, :cond_5

    .line 352
    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    .line 353
    invoke-virtual {v1, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_2

    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 358
    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    .line 359
    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    :cond_6
    move v3, v2

    move v4, v1

    goto :goto_1

    :cond_7
    move v3, v2

    move v4, v2

    goto :goto_1
.end method

.method private static a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 313
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 314
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->r()Lcom/google/android/gms/internal/ads/nv;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/nv;->a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    .line 315
    :cond_0
    return-void
.end method

.method private final a(Z)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    .line 130
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cg:Lcom/google/android/gms/internal/ads/ect;

    .line 131
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 132
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/p;

    invoke-direct {v3}, Lcom/google/android/gms/ads/internal/overlay/p;-><init>()V

    .line 134
    const/16 v0, 0x32

    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/p;->e:I

    .line 135
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/p;->a:I

    .line 136
    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    iput v0, v3, Lcom/google/android/gms/ads/internal/overlay/p;->b:I

    .line 137
    iput v2, v3, Lcom/google/android/gms/ads/internal/overlay/p;->c:I

    .line 138
    iput v1, v3, Lcom/google/android/gms/ads/internal/overlay/p;->d:I

    .line 139
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v3, p0}, Lcom/google/android/gms/ads/internal/overlay/q;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/p;Lcom/google/android/gms/ads/internal/overlay/y;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    .line 140
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    if-eqz p1, :cond_2

    const/16 v0, 0xb

    .line 143
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->g:Z

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(ZZ)V

    .line 145
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void

    :cond_0
    move v0, v2

    .line 135
    goto :goto_0

    :cond_1
    move v0, v1

    .line 136
    goto :goto_1

    .line 142
    :cond_2
    const/16 v0, 0x9

    goto :goto_2
.end method

.method private final b(Z)V
    .locals 17

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->r:Z

    if-nez v1, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 198
    if-nez v2, :cond_1

    .line 199
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string/jumbo v2, "Invalid activity, no window available."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    .line 201
    :goto_0
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aef;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    .line 202
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    .line 203
    if-eqz v5, :cond_2

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/4 v3, 0x6

    if-ne v1, v3, :cond_c

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    .line 206
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    .line 210
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    const/16 v3, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Delay onShow to next orientation change: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V

    .line 212
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 213
    const/high16 v1, 0x1000000

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setFlags(II)V

    .line 214
    const-string/jumbo v1, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-nez v1, :cond_e

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/j;->setBackgroundColor(I)V

    .line 218
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 220
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->r:Z

    .line 221
    if-eqz p1, :cond_15

    .line 223
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->d()Lcom/google/android/gms/internal/ads/adb;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v2

    .line 225
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v3, :cond_10

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/act;->u()Ljava/lang/String;

    move-result-object v3

    .line 227
    :goto_6
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/ads/yd;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 228
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v10, :cond_11

    .line 229
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/act;->g()Lcom/google/android/gms/ads/internal/a;

    move-result-object v10

    .line 231
    :goto_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwi;->a()Lcom/google/android/gms/internal/ads/dwi;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 232
    invoke-static/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/adb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aei;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ctl;Lcom/google/android/gms/internal/ads/yd;Lcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/ads/internal/i;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/dwi;Lcom/google/android/gms/internal/ads/dvk;Z)Lcom/google/android/gms/internal/ads/act;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    .line 238
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->p:Lcom/google/android/gms/internal/ads/ei;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->e:Lcom/google/android/gms/internal/ads/ek;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v11, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->i:Lcom/google/android/gms/ads/internal/overlay/t;

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_12

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/aef;->a()Lcom/google/android/gms/ads/internal/c;

    move-result-object v14

    .line 241
    :goto_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 242
    invoke-interface/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/dxs;Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/ads/internal/overlay/o;Lcom/google/android/gms/internal/ads/ek;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/internal/ads/fd;Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/ads/ns;Lcom/google/android/gms/internal/ads/st;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    .line 244
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/f;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/overlay/f;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    .line 245
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/aef;->a(Lcom/google/android/gms/internal/ads/aee;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/act;->loadUrl(Ljava/lang/String;)V

    .line 251
    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_3

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/act;->b(Lcom/google/android/gms/ads/internal/overlay/c;)V

    .line 255
    :cond_3
    :goto_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_4

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->z()Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-static {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    .line 258
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_5

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    .line 260
    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 261
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-eqz v1, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->I()V

    .line 263
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/act;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    .line 265
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 266
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/j;->addView(Landroid/view/View;II)V

    .line 267
    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    if-nez v1, :cond_7

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/c;->s()V

    .line 269
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->x()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 271
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(ZZ)V

    .line 272
    :cond_8
    return-void

    .line 200
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 201
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 206
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 207
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    .line 209
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    goto/16 :goto_3

    :cond_d
    const/4 v1, 0x0

    goto :goto_b

    .line 217
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    sget v2, Lcom/google/android/gms/ads/internal/overlay/c;->e:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/j;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 224
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 227
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 230
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 234
    :catch_0
    move-exception v1

    .line 235
    const-string/jumbo v2, "Error obtaining webview."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string/jumbo v2, "Could not obtain webview for the overlay."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 248
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->h:Ljava/lang/String;

    const-string/jumbo v9, "text/html"

    const-string/jumbo v10, "UTF-8"

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/act;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 250
    :cond_14
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string/jumbo v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/act;->a(Landroid/content/Context;)V

    goto/16 :goto_a
.end method

.method private final r()V
    .locals 6

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->s:Z

    if-eqz v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->s:Z

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_3

    .line 277
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 278
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/act;->a(I)V

    .line 279
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/overlay/e;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Ljava/lang/Runnable;

    .line 282
    sget-object v2, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Ljava/lang/Runnable;

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->at:Lcom/google/android/gms/internal/ads/ect;

    .line 284
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 286
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/cnz;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    monitor-exit v1

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->n()V

    goto :goto_0
.end method

.method private final s()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->o()V

    .line 321
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 15
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cP:Lcom/google/android/gms/internal/ads/ect;

    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    .line 170
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cQ:Lcom/google/android/gms/internal/ads/ect;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cR:Lcom/google/android/gms/internal/ads/ect;

    .line 175
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cS:Lcom/google/android/gms/internal/ads/ect;

    .line 178
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 179
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v1, v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "AdOverlay.setRequestedOrientation"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 44
    if-eqz p1, :cond_0

    const-string/jumbo v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    .line 45
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Z

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string/jumbo v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/android/gms/ads/internal/overlay/g; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/g;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 78
    iput v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/ads/yd;

    iget v0, v0, Lcom/google/android/gms/internal/ads/yd;->c:I

    const v2, 0x7270e0

    if-le v0, v2, :cond_2

    .line 50
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "shouldCallOnOverlayOpened"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->u:Z

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    if-eqz v0, :cond_7

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/g;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    .line 57
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    iget v0, v0, Lcom/google/android/gms/ads/internal/g;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 58
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/l;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/ads/internal/overlay/l;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;Lcom/google/android/gms/ads/internal/overlay/h;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uq;->b()Lcom/google/android/gms/internal/ads/crt;

    .line 59
    :cond_4
    if-nez p1, :cond_6

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_5

    .line 61
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->u:Z

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->d()V

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/ads/dxs;

    if-eqz v0, :cond_6

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/internal/ads/dxs;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dxs;->e()V

    .line 65
    :cond_6
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Lcom/google/android/gms/internal/ads/yd;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/yd;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/j;->setId(I)V

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vj;->a(Landroid/app/Activity;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->k:I

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/g;

    const-string/jumbo v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/g;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->l:Z

    goto :goto_1

    .line 69
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b(Z)V

    goto/16 :goto_0

    .line 71
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/i;-><init>(Lcom/google/android/gms/internal/ads/act;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b(Z)V

    goto/16 :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->b(Z)V
    :try_end_1
    .catch Lcom/google/android/gms/ads/internal/overlay/g; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 186
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 191
    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->r:Z

    .line 192
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 193
    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Z

    .line 194
    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/a;)V
    .locals 1

    .prologue
    .line 111
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 112
    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Landroid/content/res/Configuration;)V

    .line 113
    return-void
.end method

.method public final a(ZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->au:Lcom/google/android/gms/internal/ads/ect;

    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/g;->g:Z

    if-eqz v0, :cond_4

    move v1, v2

    .line 153
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->av:Lcom/google/android/gms/internal/ads/ect;

    .line 155
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->o:Lcom/google/android/gms/ads/internal/g;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/g;->h:Z

    if-eqz v0, :cond_5

    move v0, v2

    .line 157
    :goto_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 158
    new-instance v4, Lcom/google/android/gms/internal/ads/nt;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    const-string/jumbo v6, "useCustomClose"

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/nt;-><init>(Lcom/google/android/gms/internal/ads/act;Ljava/lang/String;)V

    const-string/jumbo v5, "Custom close has been disabled for interstitial ads in this ad slot."

    .line 159
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/nt;->a(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    if-eqz v4, :cond_3

    .line 161
    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    invoke-virtual {v4, v3}, Lcom/google/android/gms/ads/internal/overlay/q;->a(Z)V

    .line 162
    :cond_3
    return-void

    :cond_4
    move v1, v3

    .line 152
    goto :goto_0

    :cond_5
    move v0, v3

    .line 156
    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Z

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->j:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(I)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->r:Z

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 23
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->i:Landroid/widget/FrameLayout;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 26
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->j:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 27
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->h:Z

    .line 28
    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 33
    return-void
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->D()Z

    move-result v0

    .line 38
    if-nez v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    const-string/jumbo v2, "onbackblocked"

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 41
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/act;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ce:Lcom/google/android/gms/internal/ads/ect;

    .line 83
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vj;->b(Lcom/google/android/gms/internal/ads/act;)Z

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string/jumbo v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->c()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Landroid/content/res/Configuration;)V

    .line 93
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ce:Lcom/google/android/gms/internal/ads/ect;

    .line 94
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->B()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vj;->b(Lcom/google/android/gms/internal/ads/act;)Z

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    const-string/jumbo v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->b()V

    .line 101
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->f_()V

    .line 103
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ce:Lcom/google/android/gms/internal/ads/ect;

    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    if-nez v0, :cond_2

    .line 107
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/act;)Z

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->r()V

    .line 109
    return-void
.end method

.method public final j()V
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ce:Lcom/google/android/gms/internal/ads/ect;

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    if-nez v0, :cond_1

    .line 121
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vj;->a(Lcom/google/android/gms/internal/ads/act;)Z

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->r()V

    .line 123
    return-void
.end method

.method public final j_()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->d:I

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 31
    return-void
.end method

.method public final k()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/j;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->r()V

    .line 129
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->r:Z

    .line 148
    return-void
.end method

.method public final m()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->g:Lcom/google/android/gms/ads/internal/overlay/q;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/j;->removeView(Landroid/view/View;)V

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Z)V

    .line 165
    return-void
.end method

.method final n()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->t:Z

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->t:Z

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/j;->removeView(Landroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/i;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Landroid/content/Context;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->b(Z)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/i;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    .line 300
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/i;->a:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/i;->b:Landroid/view/ViewGroup$LayoutParams;

    .line 301
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->f:Lcom/google/android/gms/ads/internal/overlay/i;

    .line 305
    :cond_2
    :goto_1
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->c:Lcom/google/android/gms/ads/internal/overlay/o;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/o;->h_()V

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    .line 310
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->z()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->b:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/act;->getView()Landroid/view/View;

    move-result-object v1

    .line 311
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/c;->a(Lcom/google/android/gms/dynamic/a;Landroid/view/View;)V

    goto :goto_0

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/act;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->n:Z

    .line 318
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/c;->s()V

    .line 319
    :cond_0
    return-void
.end method

.method public final p()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->m:Lcom/google/android/gms/ads/internal/overlay/j;

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/j;->a:Z

    .line 324
    return-void
.end method

.method public final q()V
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/c;->o:Ljava/lang/Object;

    monitor-enter v1

    .line 326
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->q:Z

    .line 327
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnz;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    sget-object v0, Lcom/google/android/gms/internal/ads/ve;->a:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/c;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/cnz;->post(Ljava/lang/Runnable;)Z

    .line 330
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
