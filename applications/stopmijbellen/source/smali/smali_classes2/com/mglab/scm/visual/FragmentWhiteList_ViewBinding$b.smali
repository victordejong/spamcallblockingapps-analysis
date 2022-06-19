.class public Lcom/mglab/scm/visual/FragmentWhiteList_ViewBinding$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/visual/FragmentWhiteList_ViewBinding;-><init>(Lcom/mglab/scm/visual/FragmentWhiteList;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentWhiteList;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentWhiteList_ViewBinding;Lcom/mglab/scm/visual/FragmentWhiteList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentWhiteList_ViewBinding$b;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentWhiteList_ViewBinding$b;->a:Lcom/mglab/scm/visual/FragmentWhiteList;

    invoke-virtual {p1, p3}, Lcom/mglab/scm/visual/FragmentWhiteList;->onListItemLongClick(I)V

    const/4 p1, 0x1

    return p1
.end method
