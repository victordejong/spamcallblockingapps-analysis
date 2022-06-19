.class public Lik0$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lik0$a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lik0$a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lik0$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lik0$a$a;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lrj0;->h(Landroid/content/Context;)Lrj0;

    move-result-object v0

    iget-object v1, p0, Lik0$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lik0$a$a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lrj0;->g(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
