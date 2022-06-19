.class Landroidx/appcompat/widget/av$1;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/av;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/av;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/appcompat/widget/av$1;->a:Landroidx/appcompat/widget/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Landroidx/appcompat/widget/av$1;->a:Landroidx/appcompat/widget/av;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/av;->a(Z)V

    return-void
.end method
