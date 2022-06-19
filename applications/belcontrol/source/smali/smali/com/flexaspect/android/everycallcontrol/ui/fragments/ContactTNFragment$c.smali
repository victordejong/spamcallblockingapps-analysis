.class public Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;


# direct methods
.method public constructor <init>(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->a(I)I

    move-result p1

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->a:I

    if-eq p2, p1, :cond_0

    iput p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->a:I

    iget-object p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->b:Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;

    invoke-static {p2, p1}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;->G(Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$c;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
