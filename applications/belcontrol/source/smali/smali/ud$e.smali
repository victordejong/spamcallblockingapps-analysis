.class public final Lud$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lud;->m(Lwd;Landroid/view/ViewGroup;Landroid/view/View;Lb4;Lud$h;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Z

.field public final synthetic d:Lb4;

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lwd;

.field public final synthetic h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb4;Landroid/view/View;Lwd;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lud$e;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lud$e;->b:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lud$e;->c:Z

    iput-object p4, p0, Lud$e;->d:Lb4;

    iput-object p5, p0, Lud$e;->f:Landroid/view/View;

    iput-object p6, p0, Lud$e;->g:Lwd;

    iput-object p7, p0, Lud$e;->h:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lud$e;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lud$e;->b:Landroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lud$e;->c:Z

    iget-object v3, p0, Lud$e;->d:Lb4;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lud;->f(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLb4;Z)V

    iget-object v0, p0, Lud$e;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lud$e;->g:Lwd;

    iget-object v2, p0, Lud$e;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lwd;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
