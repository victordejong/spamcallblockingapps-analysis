.class public Lcarbon/widget/AutoCompleteEditText$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcarbon/widget/AutoCompleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcarbon/widget/AutoCompleteEditText$c;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Landroid/text/Spannable;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcarbon/widget/AutoCompleteEditText$c;->a:I

    iput-object p2, p0, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    iput-object p3, p0, Lcarbon/widget/AutoCompleteEditText$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcarbon/widget/AutoCompleteEditText$c;)I
    .locals 2

    iget v0, p0, Lcarbon/widget/AutoCompleteEditText$c;->a:I

    iget v1, p1, Lcarbon/widget/AutoCompleteEditText$c;->a:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    iget-object v1, p1, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v0

    iget-object p1, p1, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_1
    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcarbon/widget/AutoCompleteEditText$c;

    invoke-virtual {p0, p1}, Lcarbon/widget/AutoCompleteEditText$c;->a(Lcarbon/widget/AutoCompleteEditText$c;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    check-cast p1, Lcarbon/widget/AutoCompleteEditText$c;

    iget-object p1, p1, Lcarbon/widget/AutoCompleteEditText$c;->b:Landroid/text/Spannable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
