.class public Lcw0$a;
.super Lii1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcw0;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcw0;


# direct methods
.method public constructor <init>(Lcw0;)V
    .locals 0

    iput-object p1, p0, Lcw0$a;->a:Lcw0;

    invoke-direct {p0}, Lii1;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lhi1;)V
    .locals 1

    iget-object p1, p0, Lcw0$a;->a:Lcw0;

    const/4 v0, 0x0

    iput v0, p1, Lcw0;->y:F

    iget-object p1, p1, Lcw0;->I:Lcom/flexaspect/android/everycallcontrol/ui/customview/rangeseekbar/RangeSeekBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
