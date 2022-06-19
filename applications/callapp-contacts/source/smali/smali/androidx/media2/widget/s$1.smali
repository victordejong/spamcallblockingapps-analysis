.class final Landroidx/media2/widget/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/widget/s;->a(Landroidx/media2/widget/k;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/s;


# direct methods
.method constructor <init>(Landroidx/media2/widget/s;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroidx/media2/widget/s$1;->a:Landroidx/media2/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 55
    iget-object v0, p0, Landroidx/media2/widget/s$1;->a:Landroidx/media2/widget/s;

    iget-object v0, v0, Landroidx/media2/widget/s;->a:Landroidx/media2/widget/t$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroidx/media2/widget/s$1;->a:Landroidx/media2/widget/s;

    iget-object v0, v0, Landroidx/media2/widget/s;->a:Landroidx/media2/widget/t$a;

    iget-object v1, p0, Landroidx/media2/widget/s$1;->a:Landroidx/media2/widget/s;

    invoke-interface {v0, v1}, Landroidx/media2/widget/t$a;->a(Landroidx/media2/widget/t;)V

    :cond_0
    return-void
.end method
