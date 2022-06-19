.class public Lcom/callapp/contacts/widget/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Landroid/widget/SeekBar;

.field private b:I

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/callapp/contacts/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->d:I

    const-string p4, "http://schemas.android.com/apk/res/android"

    const-string v0, "max"

    const/16 v1, 0x64

    .line 24
    invoke-interface {p2, p4, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->b:I

    const-string v0, "defaultValue"

    .line 25
    invoke-interface {p2, p4, v0, p3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->c:I

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/SeekBarPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 28
    new-instance p2, Landroid/widget/SeekBar;

    invoke-direct {p2, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    .line 29
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .line 57
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 64
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 69
    iget-object v2, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 70
    iget-object v1, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 71
    iget-object v1, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 77
    iget-object p1, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->a:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 82
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/SeekBarPreference;->persistInt(I)Z

    .line 83
    iput p2, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->d:I

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    .line 46
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 47
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/SeekBarPreference;->shouldPersist()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/SeekBarPreference;->getPersistedInt(I)I

    move-result p2

    :cond_1
    iput p2, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->d:I

    return-void

    .line 51
    :cond_2
    iput p2, p0, Lcom/callapp/contacts/widget/SeekBarPreference;->d:I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
