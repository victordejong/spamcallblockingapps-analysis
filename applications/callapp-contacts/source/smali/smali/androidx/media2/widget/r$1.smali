.class final Landroidx/media2/widget/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/r;->a(Landroidx/media2/widget/k;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/r;


# direct methods
.method constructor <init>(Landroidx/media2/widget/r;)V
    .locals 0

    .line 51
    iput-object p1, p0, Landroidx/media2/widget/r$1;->a:Landroidx/media2/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 54
    iget-object v0, p0, Landroidx/media2/widget/r$1;->a:Landroidx/media2/widget/r;

    iget-object v0, v0, Landroidx/media2/widget/r;->a:Landroidx/media2/widget/t$a;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Landroidx/media2/widget/r$1;->a:Landroidx/media2/widget/r;

    iget-object v0, v0, Landroidx/media2/widget/r;->a:Landroidx/media2/widget/t$a;

    iget-object v1, p0, Landroidx/media2/widget/r$1;->a:Landroidx/media2/widget/r;

    invoke-interface {v0, v1}, Landroidx/media2/widget/t$a;->a(Landroidx/media2/widget/t;)V

    :cond_0
    return-void
.end method
