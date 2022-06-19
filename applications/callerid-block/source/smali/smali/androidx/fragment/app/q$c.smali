.class final Landroidx/fragment/app/q$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/q;->n(Landroidx/fragment/app/j;ILandroidx/fragment/app/q$h;Landroid/view/View;Ld/e/a;Landroidx/fragment/app/q$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/fragment/app/q$g;

.field final synthetic c:Landroidx/fragment/app/Fragment;

.field final synthetic d:Ld/h/i/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/q$g;Landroidx/fragment/app/Fragment;Ld/h/i/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/q$c;->b:Landroidx/fragment/app/q$g;

    iput-object p2, p0, Landroidx/fragment/app/q$c;->c:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/q$c;->d:Ld/h/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/q$c;->b:Landroidx/fragment/app/q$g;

    iget-object v1, p0, Landroidx/fragment/app/q$c;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/q$c;->d:Ld/h/i/a;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/q$g;->a(Landroidx/fragment/app/Fragment;Ld/h/i/a;)V

    return-void
.end method
