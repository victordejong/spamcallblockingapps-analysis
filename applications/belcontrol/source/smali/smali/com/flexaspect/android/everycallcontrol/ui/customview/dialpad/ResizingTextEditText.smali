.class public Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source ""


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;->a:I

    sget-object v1, Ljq0;->ResizingText:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    int-to-float p2, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onSizeChanged(IIII)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;->a:I

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;->b:I

    invoke-static {p0, p1, p2}, Lsv0;->a(Landroid/widget/TextView;II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget p1, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;->a:I

    iget p2, p0, Lcom/flexaspect/android/everycallcontrol/ui/customview/dialpad/ResizingTextEditText;->b:I

    invoke-static {p0, p1, p2}, Lsv0;->a(Landroid/widget/TextView;II)V

    return-void
.end method
