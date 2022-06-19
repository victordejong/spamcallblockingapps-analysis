.class Landroidx/appcompat/widget/ab$b;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ab;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ab;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Landroidx/appcompat/widget/ab$b;->a:Landroidx/appcompat/widget/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Landroidx/appcompat/widget/ab$b;->a:Landroidx/appcompat/widget/ab;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ab;->d()V

    .line 335
    return-void
.end method
