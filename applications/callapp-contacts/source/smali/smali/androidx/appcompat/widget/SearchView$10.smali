.class final Landroidx/appcompat/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 1424
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$10;->a:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1432
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$10;->a:Landroidx/appcompat/widget/SearchView;

    .line 2404
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->m:Landroidx/appcompat/widget/SearchView$c;

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->m:Landroidx/appcompat/widget/SearchView$c;

    .line 2405
    invoke-interface {p2}, Landroidx/appcompat/widget/SearchView$c;->a()Z

    move-result p2

    if-nez p2, :cond_3

    .line 2449
    :cond_0
    iget-object p2, p1, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 2450
    iget-object p4, p1, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    invoke-virtual {p4}, Landroidx/d/a/a;->a()Landroid/database/Cursor;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 2454
    invoke-interface {p4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2456
    iget-object p3, p1, Landroidx/appcompat/widget/SearchView;->o:Landroidx/d/a/a;

    invoke-virtual {p3, p4}, Landroidx/d/a/a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 2460
    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    return-void

    .line 2463
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    return-void

    .line 2467
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SearchView;->b(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
