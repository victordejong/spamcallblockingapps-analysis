.class public Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$p;->a:Lcom/mglab/scm/visual/FragmentPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$p;->a:Lcom/mglab/scm/visual/FragmentPreferences;

    invoke-virtual {p1}, Lcom/mglab/scm/visual/FragmentPreferences;->onSim2LongClick()Z

    move-result p1

    return p1
.end method
