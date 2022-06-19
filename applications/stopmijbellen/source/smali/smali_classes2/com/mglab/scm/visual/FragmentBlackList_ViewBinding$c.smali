.class public Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$c;
.super Lc2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;-><init>(Lcom/mglab/scm/visual/FragmentBlackList;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mglab/scm/visual/FragmentBlackList;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding;Lcom/mglab/scm/visual/FragmentBlackList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$c;->c:Lcom/mglab/scm/visual/FragmentBlackList;

    invoke-direct {p0}, Lc2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentBlackList_ViewBinding$c;->c:Lcom/mglab/scm/visual/FragmentBlackList;

    invoke-virtual {p1}, Lcom/mglab/scm/visual/FragmentBlackList;->onFabClearSelectedClick()V

    return-void
.end method
