.class public Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$q;->a:Lcom/mglab/scm/visual/FragmentPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$q;->a:Lcom/mglab/scm/visual/FragmentPreferences;

    invoke-virtual {p1, p2}, Lcom/mglab/scm/visual/FragmentPreferences;->onClickShowSim(Z)V

    return-void
.end method
