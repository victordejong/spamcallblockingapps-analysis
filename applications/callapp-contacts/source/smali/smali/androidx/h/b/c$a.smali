.class public final Landroidx/h/b/c$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/h/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/h/b/c;


# direct methods
.method public constructor <init>(Landroidx/h/b/c;)V
    .locals 0

    .line 57
    iput-object p1, p0, Landroidx/h/b/c$a;->a:Landroidx/h/b/c;

    .line 58
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 0

    .line 68
    iget-object p1, p0, Landroidx/h/b/c$a;->a:Landroidx/h/b/c;

    invoke-virtual {p1}, Landroidx/h/b/c;->t()V

    return-void
.end method
