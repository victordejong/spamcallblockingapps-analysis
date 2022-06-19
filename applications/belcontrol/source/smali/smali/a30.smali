.class public La30;
.super Lf30;
.source ""

# interfaces
.implements Lc30;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lf30;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static c(Landroid/view/ViewGroup;)La30;
    .locals 0

    invoke-static {p0}, Lf30;->a(Landroid/view/View;)Lf30;

    move-result-object p0

    check-cast p0, La30;

    return-object p0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf30;->a:Lf30$a;

    invoke-virtual {v0, p1}, Lf30$a;->b(Landroid/view/View;)V

    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lf30;->a:Lf30$a;

    invoke-virtual {v0, p1}, Lf30$a;->g(Landroid/view/View;)V

    return-void
.end method
