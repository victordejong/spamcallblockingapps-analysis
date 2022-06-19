.class public abstract Landroidx/appcompat/app/a;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/a$a;,
        Landroidx/appcompat/app/a$c;,
        Landroidx/appcompat/app/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 1021
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1104
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1086
    const/4 v0, 0x0

    return v0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 966
    if-eqz p1, :cond_0

    .line 967
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 1042
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1098
    const/4 v0, 0x0

    return v0
.end method

.method g()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method
