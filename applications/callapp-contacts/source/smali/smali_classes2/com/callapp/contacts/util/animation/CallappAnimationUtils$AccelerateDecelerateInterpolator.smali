.class Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccelerateDecelerateInterpolator"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;->a:I

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_0

    mul-float p1, p1, v2

    float-to-double v2, p1

    .line 103
    iget p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;->a:I

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v0

    :goto_0
    double-to-float p1, v2

    return p1

    :cond_0
    sub-float/2addr p1, v3

    mul-float p1, p1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    float-to-double v2, p1

    .line 106
    iget p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$AccelerateDecelerateInterpolator;->a:I

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v0

    goto :goto_0
.end method
