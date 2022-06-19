.class Landroidx/appcompat/widget/as$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/as;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/as;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Landroidx/appcompat/widget/as$1;->a:Landroidx/appcompat/widget/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Landroidx/appcompat/widget/as$1;->a:Landroidx/appcompat/widget/as;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/as;->a(Z)V

    .line 58
    return-void
.end method
