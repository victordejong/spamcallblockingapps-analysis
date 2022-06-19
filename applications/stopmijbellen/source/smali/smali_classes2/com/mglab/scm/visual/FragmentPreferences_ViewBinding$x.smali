.class public Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;-><init>(Lcom/mglab/scm/visual/FragmentPreferences;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mglab/scm/visual/FragmentPreferences;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$x;->a:Lcom/mglab/scm/visual/FragmentPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$x;->a:Lcom/mglab/scm/visual/FragmentPreferences;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mglab/scm/visual/FragmentPreferences;->onBlockMethodSpinnerClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
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
