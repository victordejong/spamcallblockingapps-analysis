.class public Lyk0$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyk0$b;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lyk0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lyk0;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzk0;->i(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lyk0;->c(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-static {}, Lyk0;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lzk0;->j(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lyk0;->c(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method
