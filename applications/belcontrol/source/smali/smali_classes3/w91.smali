.class public final Lw91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw91$a;
    }
.end annotation


# static fields
.field public static a:[Lx91;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lw91$a;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    const/4 v0, 0x1

    new-array v0, v0, [Lx91;

    new-instance v1, Ly91;

    invoke-direct {v1}, Ly91;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lw91;->a:[Lx91;

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lw91;->a:[Lx91;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lx91;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Object;Lw91$a;)V
    .locals 2

    sget-object v0, Ln91$a;->b:Ln91$a;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lw91;->e(Ljava/lang/Object;Lw91$a;Ln91$a;Landroid/os/Bundle;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;Lw91$a;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Ln91$a;->b:Ln91$a;

    invoke-static {p0, p1, v0, p2}, Lw91;->e(Ljava/lang/Object;Lw91$a;Ln91$a;Landroid/os/Bundle;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;Lw91$a;Ln91$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lw91;->e(Ljava/lang/Object;Lw91$a;Ln91$a;Landroid/os/Bundle;)V

    return-void
.end method

.method public static e(Ljava/lang/Object;Lw91$a;Ln91$a;Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lw91;->a:[Lx91;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Lx91;->a(Ljava/lang/Object;Lw91$a;Ln91$a;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lw91;->a:[Lx91;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0}, Lx91;->b(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/Object;)V
    .locals 4

    sget-object v0, Lw91;->a:[Lx91;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0}, Lx91;->e(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 4

    sget-object v0, Lw91;->a:[Lx91;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1}, Lx91;->c(Ljava/lang/Object;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static i()V
    .locals 4

    sget-object v0, Lw91;->a:[Lx91;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-interface {v3}, Lx91;->shutdown()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
