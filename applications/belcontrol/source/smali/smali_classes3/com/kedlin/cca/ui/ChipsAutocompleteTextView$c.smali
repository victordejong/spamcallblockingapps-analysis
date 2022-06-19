.class public Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;
.super Landroid/text/style/ImageSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/ChipsAutocompleteTextView;Landroid/graphics/drawable/Drawable;Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, p0, Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$c;->a:Lcom/kedlin/cca/ui/ChipsAutocompleteTextView$d;

    return-void
.end method
