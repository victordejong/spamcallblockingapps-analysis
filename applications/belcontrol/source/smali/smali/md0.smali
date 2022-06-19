.class public Lmd0;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$b0;"
    }
.end annotation


# instance fields
.field public a:Lta0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lta0<",
            "TType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lta0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lta0<",
            "TType;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lta0;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmd0;->a:Lta0;

    return-void
.end method


# virtual methods
.method public b()Lta0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lta0<",
            "TType;>;"
        }
    .end annotation

    iget-object v0, p0, Lmd0;->a:Lta0;

    return-object v0
.end method
