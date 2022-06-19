.class Landroidx/d/b/c$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/b/c;


# direct methods
.method constructor <init>(Landroidx/d/b/c;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Landroidx/d/b/c$2;->a:Landroidx/d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Landroidx/d/b/c$2;->a:Landroidx/d/b/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/d/b/c;->b(I)V

    .line 344
    return-void
.end method
