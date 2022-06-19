.class public Ls71;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ls71;

.field public static b:Lt71;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt71;

    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lt71;-><init>(Landroid/content/Context;)V

    sput-object v0, Ls71;->b:Lt71;

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ls71;->b(Z)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    sget-object v0, Ls71;->b:Lt71;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lt71;->a(Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Ls71;->b:Lt71;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lt71;->h(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static d()Ls71;
    .locals 1

    sget-object v0, Ls71;->a:Ls71;

    if-nez v0, :cond_0

    new-instance v0, Ls71;

    invoke-direct {v0}, Ls71;-><init>()V

    sput-object v0, Ls71;->a:Ls71;

    :cond_0
    sget-object v0, Ls71;->a:Ls71;

    return-object v0
.end method

.method public static e()V
    .locals 0

    invoke-static {}, Ls71;->d()Ls71;

    return-void
.end method
