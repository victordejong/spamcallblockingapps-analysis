.class public Lcom/mglab/scm/visual/FragmentStat_ViewBinding$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/visual/FragmentStat_ViewBinding;-><init>(Lcom/mglab/scm/visual/FragmentStat;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentStat;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentStat_ViewBinding;Lcom/mglab/scm/visual/FragmentStat;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$b;->a:Lcom/mglab/scm/visual/FragmentStat;

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
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$b;->a:Lcom/mglab/scm/visual/FragmentStat;

    invoke-virtual {p1, p3}, Lcom/mglab/scm/visual/FragmentStat;->onItemLongClick(I)Z

    move-result p1

    return p1
.end method
