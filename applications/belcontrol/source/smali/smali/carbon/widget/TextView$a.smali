.class public Lcarbon/widget/TextView$a;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/TextView;->q(Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcarbon/widget/TextView;


# direct methods
.method public constructor <init>(Lcarbon/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/TextView$a;->a:Lcarbon/widget/TextView;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/TextView$a;->a:Lcarbon/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcarbon/widget/TextView$a;->a:Lcarbon/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcarbon/widget/TextView$a;->a:Lcarbon/widget/TextView;

    iget p1, p1, Lcarbon/widget/TextView;->b:I

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
