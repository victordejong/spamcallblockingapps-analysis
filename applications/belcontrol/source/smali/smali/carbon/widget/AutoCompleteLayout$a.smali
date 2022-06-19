.class public Lcarbon/widget/AutoCompleteLayout$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lta0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/AutoCompleteLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lta0<",
        "Lcarbon/widget/AutoCompleteEditText$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcarbon/widget/TextView;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lm80;->carbon_autocompletelayout_row:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcarbon/widget/AutoCompleteLayout$a;->b:Landroid/view/View;

    sget v0, Ll80;->carbon_autoCompleteLayoutRowText:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcarbon/widget/TextView;

    iput-object p1, p0, Lcarbon/widget/AutoCompleteLayout$a;->a:Lcarbon/widget/TextView;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcarbon/widget/AutoCompleteEditText$c;

    invoke-virtual {p0, p1}, Lcarbon/widget/AutoCompleteLayout$a;->b(Lcarbon/widget/AutoCompleteEditText$c;)V

    return-void
.end method

.method public b(Lcarbon/widget/AutoCompleteEditText$c;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout$a;->a:Lcarbon/widget/TextView;

    invoke-virtual {p1}, Lcarbon/widget/AutoCompleteEditText$c;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteLayout$a;->b:Landroid/view/View;

    return-object v0
.end method
