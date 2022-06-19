.class public Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;
.super Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;
.source "AnalyzeButton.java"


# instance fields
.field private final animationEndCornerRadius:F

.field public longClick:Z

.field private final originalCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    .line 17
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->originalCornerRadius:F

    .line 18
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p1, v0}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->animationEndCornerRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    .line 17
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->originalCornerRadius:F

    .line 18
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->animationEndCornerRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    .line 17
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->originalCornerRadius:F

    .line 18
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->animationEndCornerRadius:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    .line 17
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->originalCornerRadius:F

    .line 18
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42480000    # 50.0f

    invoke-static {p1, p2}, Lcom/telguarder/helpers/ui/UiHelper;->dpToPixel(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->animationEndCornerRadius:F

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->longClick:Z

    return v0

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;->performClick()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 48
    iget v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->animationEndCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setFinalCornerRadius(F)V

    .line 49
    iget v0, p0, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->originalCornerRadius:F

    invoke-virtual {p0, v0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->setInitialCornerRadius(F)V

    .line 50
    invoke-virtual {p0}, Lcom/telguarder/features/phoneNumberAnalyzer/AnalyzeButton;->revertAnimation()V

    return-void
.end method
