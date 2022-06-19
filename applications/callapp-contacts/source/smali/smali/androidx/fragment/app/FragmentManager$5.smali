.class final Landroidx/fragment/app/FragmentManager$5;
.super Landroidx/fragment/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 478
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$5;->a:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Landroidx/fragment/app/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 483
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$5;->a:Landroidx/fragment/app/FragmentManager;

    .line 4805
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->l:Landroidx/fragment/app/h;

    .line 5247
    iget-object p1, p1, Landroidx/fragment/app/h;->c:Landroid/content/Context;

    const/4 v0, 0x0

    .line 6057
    invoke-static {p1, p2, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
