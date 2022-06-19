.class public Lcom/allinone/callerid/g/b;
.super Landroidx/fragment/app/Fragment;
.source "EZBlockFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allinone/callerid/g/b$e;
    }
.end annotation


# instance fields
.field private final e0:Ljava/lang/String;

.field private f0:Landroid/graphics/Typeface;

.field private g0:Landroid/view/View;

.field private h0:Landroid/widget/ImageView;

.field private i0:Landroid/widget/TextView;

.field private j0:Landroid/widget/FrameLayout;

.field private k0:Landroid/widget/FrameLayout;

.field private l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

.field private m0:Landroid/content/Context;

.field private n0:Landroidx/appcompat/app/a;

.field private o0:Landroid/widget/FrameLayout;

.field private p0:Z

.field private q0:Lcom/allinone/callerid/customview/CirclePercentView;

.field private r0:I

.field private s0:I

.field private t0:Lcom/allinone/callerid/g/b$e;

.field private u0:Lcom/google/android/gms/ads/nativead/a;

.field private v0:Lcom/google/android/gms/ads/d;

.field private w0:Z

.field private x0:I

.field private y0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "EZBlockFragment"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/g/b;->e0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/allinone/callerid/g/b;->p0:Z

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Lcom/allinone/callerid/g/b;->r0:I

    return-void
.end method

.method static synthetic a2(Lcom/allinone/callerid/g/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/b;->s0:I

    return p0
.end method

.method static synthetic b2(Lcom/allinone/callerid/g/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/allinone/callerid/g/b;->s0:I

    return p1
.end method

.method static synthetic c2(Lcom/allinone/callerid/g/b;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/allinone/callerid/g/b;->s0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/allinone/callerid/g/b;->s0:I

    return v0
.end method

.method static synthetic d2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/customview/CirclePercentView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->q0:Lcom/allinone/callerid/customview/CirclePercentView;

    return-object p0
.end method

.method static synthetic e2(Lcom/allinone/callerid/g/b;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/allinone/callerid/g/b;->w0:Z

    return p1
.end method

.method static synthetic f2(Lcom/allinone/callerid/g/b;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b;->u0:Lcom/google/android/gms/ads/nativead/a;

    return-object p1
.end method

.method static synthetic g2(Lcom/allinone/callerid/g/b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic h2(Lcom/allinone/callerid/g/b;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic i2(Lcom/allinone/callerid/g/b;)Lcom/google/android/gms/ads/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->v0:Lcom/google/android/gms/ads/d;

    return-object p0
.end method

.method static synthetic j2(Lcom/allinone/callerid/g/b;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b;->v0:Lcom/google/android/gms/ads/d;

    return-object p1
.end method

.method static synthetic k2(Lcom/allinone/callerid/g/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/g/b;->r0:I

    return p0
.end method

.method static synthetic l2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/g/b$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->t0:Lcom/allinone/callerid/g/b$e;

    return-object p0
.end method

.method static synthetic m2(Lcom/allinone/callerid/g/b;)Lcom/allinone/callerid/mvc/controller/MainActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    return-object p0
.end method

.method static synthetic n2(Lcom/allinone/callerid/g/b;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->h0:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic o2(Lcom/allinone/callerid/g/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic p2(Lcom/allinone/callerid/g/b;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->i0:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q2(Lcom/allinone/callerid/g/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/b;->v2(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic r2(Lcom/allinone/callerid/g/b;)Landroidx/appcompat/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/g/b;->n0:Landroidx/appcompat/app/a;

    return-object p0
.end method

.method private s2(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    const v1, 0x7f040074

    const v2, 0x7f08009f

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/g/b;->x0:I

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    const v1, 0x7f040075

    const v2, 0x7f0800a1

    invoke-static {v0, v1, v2}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/g/b;->y0:I

    const v0, 0x7f09033c

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/allinone/callerid/g/b;->h0:Landroid/widget/ImageView;

    const v0, 0x7f0906f7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/g/b;->i0:Landroid/widget/TextView;

    const v0, 0x7f0907ab

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090223

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/g/b;->j0:Landroid/widget/FrameLayout;

    const v1, 0x7f0900de

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/customview/CirclePercentView;

    iput-object v1, p0, Lcom/allinone/callerid/g/b;->q0:Lcom/allinone/callerid/customview/CirclePercentView;

    const v1, 0x7f090224

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/allinone/callerid/g/b;->k0:Landroid/widget/FrameLayout;

    .line 9
    iget-object v1, p0, Lcom/allinone/callerid/g/b;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0904ec

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0904cd

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const v3, 0x7f0904cb

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    invoke-static {v1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0902f9

    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/high16 v2, 0x43340000    # 180.0f

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const v1, 0x7f0902be

    .line 19
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const v1, 0x7f0902bd

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_0
    const v1, 0x7f0907ac

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0907ad

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0906c9

    .line 25
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0906ca

    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090626

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090627

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f09061f

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f090620

    .line 30
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 31
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->i0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 32
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    invoke-static {}, Lcom/allinone/callerid/util/a1;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-string p1, ": "

    const v4, 0x7f1001bb

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    .line 34
    iget-object v2, p0, Lcom/allinone/callerid/g/b;->i0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/allinone/callerid/g/b;->i0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->X()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/i;->f(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/g/b;->t2(J)V

    .line 37
    new-instance p1, Lcom/allinone/callerid/g/b$e;

    invoke-direct {p1, p0}, Lcom/allinone/callerid/g/b$e;-><init>(Lcom/allinone/callerid/g/b;)V

    iput-object p1, p0, Lcom/allinone/callerid/g/b;->t0:Lcom/allinone/callerid/g/b$e;

    return-void
.end method

.method private t2(J)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x1d4c0

    const/4 v2, 0x0

    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->k0:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/allinone/callerid/g/b;->y0:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->j0:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->h0:Landroid/widget/ImageView;

    const p2, 0x7f0800c4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iput v2, p0, Lcom/allinone/callerid/g/b;->s0:I

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->q0:Lcom/allinone/callerid/customview/CirclePercentView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->h0:Landroid/widget/ImageView;

    const p2, 0x7f0800c5

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->k0:Landroid/widget/FrameLayout;

    iget p2, p0, Lcom/allinone/callerid/g/b;->x0:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private u2()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/g/b$d;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/g/b$d;-><init>(Lcom/allinone/callerid/g/b;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    return-void
.end method

.method private v2(Landroid/app/Activity;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09079a

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090650

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    .line 4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100301

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090364

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0901f1

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    .line 8
    iget-object v4, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    new-instance v1, Lcom/allinone/callerid/g/b$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/b$c;-><init>(Lcom/allinone/callerid/g/b;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Landroidx/appcompat/app/a$a;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/a$a;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a$a;->r(Landroid/view/View;)Landroidx/appcompat/app/a$a;

    move-result-object p1

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a$a;->d(Z)Landroidx/appcompat/app/a$a;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/appcompat/app/a$a;->s()Landroidx/appcompat/app/a;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/b;->n0:Landroidx/appcompat/app/a;

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/allinone/callerid/g/b;->w0:Z

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->u0:Lcom/google/android/gms/ads/nativead/a;

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->L()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0003

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->u0:Lcom/google/android/gms/ads/nativead/a;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/gg/d;->a(Lcom/google/android/gms/ads/nativead/a;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 20
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "tony"

    const-string v1, "ad has,show ad"

    .line 21
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 23
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 24
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 25
    iput-object v2, p0, Lcom/allinone/callerid/g/b;->o0:Landroid/widget/FrameLayout;

    .line 26
    :cond_2
    iput-object v2, p0, Lcom/allinone/callerid/g/b;->u0:Lcom/google/android/gms/ads/nativead/a;

    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->v0:Lcom/google/android/gms/ads/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/ads/d;->a()Z

    move-result p1

    if-nez p1, :cond_4

    .line 28
    invoke-direct {p0}, Lcom/allinone/callerid/g/b;->u2()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public G0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/allinone/callerid/g/b;->g0:Landroid/view/View;

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 2
    :try_start_0
    iput-boolean p3, p0, Lcom/allinone/callerid/g/b;->p0:Z

    .line 3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/h1;->I0(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x7f0c00af

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/b;->g0:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    .line 7
    :try_start_1
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutDirection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/g/b;->f0:Landroid/graphics/Typeface;

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->g0:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/allinone/callerid/g/b;->s2(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->g0:Landroid/view/View;

    return-object p1
.end method

.method public H0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->H0()V

    return-void
.end method

.method public K0()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->K0()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/g/b;->g0:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/allinone/callerid/g/b;->g0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public T0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->T0()V

    return-void
.end method

.method public V1(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->V1(Z)V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-boolean p1, p0, Lcom/allinone/callerid/g/b;->p0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->m()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/allinone/callerid/g/b;->t2(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Y0()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->Y0()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f010001

    const/high16 v1, 0x7f010000

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/mvc/controller/block/MyBlockListActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 5
    :sswitch_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/mvc/controller/block/BlockManagerActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 8
    :sswitch_2
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    const-class v3, Lcom/allinone/callerid/mvc/controller/block/BlockSettingActivity;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->W1(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 11
    :sswitch_3
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    const v1, 0x7f1002c3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->d0(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->q0:Lcom/allinone/callerid/customview/CirclePercentView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->k0:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/allinone/callerid/g/b;->x0:I

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 15
    iget-object p1, p0, Lcom/allinone/callerid/g/b;->j0:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 16
    invoke-direct {p0}, Lcom/allinone/callerid/g/b;->u2()V

    .line 17
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object p1

    iget-object p1, p1, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/g/b$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/b$a;-><init>(Lcom/allinone/callerid/g/b;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    new-instance v1, Lcom/allinone/callerid/g/b$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/b$b;-><init>(Lcom/allinone/callerid/g/b;)V

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/l/a/f;->h(Landroid/content/Context;ZLcom/allinone/callerid/l/a/d;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090223 -> :sswitch_3
        0x7f0904cb -> :sswitch_2
        0x7f0904cd -> :sswitch_1
        0x7f0904ec -> :sswitch_0
    .end sparse-switch
.end method

.method public y0(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->y0(Landroid/content/Context;)V

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/allinone/callerid/mvc/controller/MainActivity;

    iput-object v0, p0, Lcom/allinone/callerid/g/b;->l0:Lcom/allinone/callerid/mvc/controller/MainActivity;

    .line 3
    iput-object p1, p0, Lcom/allinone/callerid/g/b;->m0:Landroid/content/Context;

    return-void
.end method
