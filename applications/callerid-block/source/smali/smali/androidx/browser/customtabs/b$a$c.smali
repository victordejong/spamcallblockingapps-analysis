.class Landroidx/browser/customtabs/b$a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/b$a;->l5(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroidx/browser/customtabs/b$a;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/b$a;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/browser/customtabs/b$a$c;->c:Landroidx/browser/customtabs/b$a;

    iput-object p2, p0, Landroidx/browser/customtabs/b$a$c;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/browser/customtabs/b$a$c;->c:Landroidx/browser/customtabs/b$a;

    iget-object v0, v0, Landroidx/browser/customtabs/b$a;->c:Landroidx/browser/customtabs/a;

    iget-object v1, p0, Landroidx/browser/customtabs/b$a$c;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/a;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    throw v0
.end method
