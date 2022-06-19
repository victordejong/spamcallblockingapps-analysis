.class Landroidx/c/a/a$a;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a/a;


# direct methods
.method constructor <init>(Landroidx/c/a/a;)V
    .locals 1

    .prologue
    .line 476
    iput-object p1, p0, Landroidx/c/a/a$a;->a:Landroidx/c/a/a;

    .line 477
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 478
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroidx/c/a/a$a;->a:Landroidx/c/a/a;

    invoke-virtual {v0}, Landroidx/c/a/a;->b()V

    .line 488
    return-void
.end method
