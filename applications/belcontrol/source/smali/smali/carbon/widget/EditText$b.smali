.class public Lcarbon/widget/EditText$b;
.super Landroid/graphics/Paint;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcarbon/widget/EditText;->setCursorColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcarbon/widget/EditText;


# direct methods
.method public constructor <init>(Lcarbon/widget/EditText;I)V
    .locals 0

    iput-object p1, p0, Lcarbon/widget/EditText$b;->b:Lcarbon/widget/EditText;

    iput p2, p0, Lcarbon/widget/EditText$b;->a:I

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 2

    iget-object v0, p0, Lcarbon/widget/EditText$b;->b:Lcarbon/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcarbon/widget/EditText$b;->b:Lcarbon/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p1, p0, Lcarbon/widget/EditText$b;->a:I

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
