.class final Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/futuremind/recyclerviewfastscroll/FastScroller$1;->a:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    invoke-static {p1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->a(Lcom/futuremind/recyclerviewfastscroll/FastScroller;)V

    return-void
.end method
