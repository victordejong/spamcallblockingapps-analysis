.class public Leb0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lta0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ldb0;",
        ">",
        "Ljava/lang/Object;",
        "Lta0<",
        "TType;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lm80;->carbon_row_padding:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(pare\u2026w_padding, parent, false)"

    invoke-static {p1, v0}, Lqk1;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Leb0;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldb0;

    invoke-virtual {p0, p1}, Leb0;->b(Ldb0;)V

    return-void
.end method

.method public b(Ldb0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Leb0;->a:Landroid/view/View;

    invoke-virtual {p1}, Ldb0;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Leb0;->a:Landroid/view/View;

    return-object v0
.end method
