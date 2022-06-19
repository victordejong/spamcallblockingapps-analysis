.class public abstract Landroidx/core/app/h$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field protected a:Landroidx/core/app/h$c;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/h$d;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1731
    return-void
.end method

.method public a(Landroidx/core/app/g;)V
    .locals 0

    .prologue
    .line 1699
    return-void
.end method

.method public a(Landroidx/core/app/h$c;)V
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Landroidx/core/app/h$d;->a:Landroidx/core/app/h$c;

    if-eq v0, p1, :cond_0

    .line 1675
    iput-object p1, p0, Landroidx/core/app/h$d;->a:Landroidx/core/app/h$c;

    .line 1676
    iget-object v0, p0, Landroidx/core/app/h$d;->a:Landroidx/core/app/h$c;

    if-eqz v0, :cond_0

    .line 1677
    iget-object v0, p0, Landroidx/core/app/h$d;->a:Landroidx/core/app/h$c;

    invoke-virtual {v0, p0}, Landroidx/core/app/h$c;->a(Landroidx/core/app/h$d;)Landroidx/core/app/h$c;

    .line 1680
    :cond_0
    return-void
.end method

.method public b(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1706
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1714
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 1722
    const/4 v0, 0x0

    return-object v0
.end method
