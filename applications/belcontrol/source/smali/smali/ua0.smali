.class public Lua0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lta0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lta0<",
        "TDataType;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/databinding/ViewDataBinding;

.field public final b:Landroid/view/View;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1}, Lvc;->d(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lua0;->a:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->d()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lua0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    iput-object p1, p0, Lua0;->c:Ljava/lang/Object;

    iget-object v0, p0, Lua0;->a:Landroidx/databinding/ViewDataBinding;

    sget v1, Lcarbon/BR;->data:I

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->g(ILjava/lang/Object;)Z

    iget-object p1, p0, Lua0;->a:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->c()V

    return-void
.end method

.method public b()Landroidx/databinding/ViewDataBinding;
    .locals 1

    iget-object v0, p0, Lua0;->a:Landroidx/databinding/ViewDataBinding;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lua0;->b:Landroid/view/View;

    return-object v0
.end method
