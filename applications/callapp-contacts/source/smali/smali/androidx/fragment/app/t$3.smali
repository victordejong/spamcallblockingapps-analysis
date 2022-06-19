.class final Landroidx/fragment/app/t$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/t$a;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/core/os/a;


# direct methods
.method constructor <init>(Landroidx/fragment/app/t$a;Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V
    .locals 0

    .line 396
    iput-object p1, p0, Landroidx/fragment/app/t$3;->a:Landroidx/fragment/app/t$a;

    iput-object p2, p0, Landroidx/fragment/app/t$3;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/t$3;->c:Landroidx/core/os/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 399
    iget-object v0, p0, Landroidx/fragment/app/t$3;->a:Landroidx/fragment/app/t$a;

    iget-object v1, p0, Landroidx/fragment/app/t$3;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/t$3;->c:Landroidx/core/os/a;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/t$a;->b(Landroidx/fragment/app/Fragment;Landroidx/core/os/a;)V

    return-void
.end method
