.class public Lcom/mglab/scm/visual/FragmentStat_ViewBinding$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$a;->a:Lcom/mglab/scm/visual/FragmentStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentStat_ViewBinding$a;->a:Lcom/mglab/scm/visual/FragmentStat;

    invoke-virtual {p1, p2, p3}, Lcom/mglab/scm/visual/FragmentStat;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
