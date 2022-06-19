.class public Lrj0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrj0$a;
    }
.end annotation


# instance fields
.field public a:Lsj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsj0;

    invoke-direct {v0, p1, p2, p3}, Lsj0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    iput-object v0, p0, Lrj0;->a:Lsj0;

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lsj0;->a(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lsj0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lrj0$a;
    .locals 1

    invoke-static {}, Lsj0;->f()Lrj0$a;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmj0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lsj0;->i(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Landroid/content/Context;)Lrj0;
    .locals 2

    new-instance v0, Lrj0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lrj0;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    return-object v0
.end method

.method public static i()V
    .locals 0

    invoke-static {}, Lsj0;->u()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lrj0;->a:Lsj0;

    invoke-virtual {v0}, Lsj0;->c()V

    return-void
.end method

.method public g(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lrj0;->a:Lsj0;

    invoke-virtual {v0, p1, p2}, Lsj0;->m(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
