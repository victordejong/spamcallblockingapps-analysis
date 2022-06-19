.class public abstract Landroidx/core/app/g$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# instance fields
.field protected d:Landroidx/core/app/g$e;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1768
    iput-boolean v0, p0, Landroidx/core/app/g$i;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/core/app/f;)V
    .locals 0

    return-void
.end method

.method public final a(Landroidx/core/app/g$e;)V
    .locals 1

    .line 1771
    iget-object v0, p0, Landroidx/core/app/g$i;->d:Landroidx/core/app/g$e;

    if-eq v0, p1, :cond_0

    .line 1772
    iput-object p1, p0, Landroidx/core/app/g$i;->d:Landroidx/core/app/g$e;

    if-eqz p1, :cond_0

    .line 1774
    invoke-virtual {p1, p0}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;

    :cond_0
    return-void
.end method
