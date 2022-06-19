.class Landroidx/browser/customtabs/b$a$b;
.super Ljava/lang/Object;
.source "CustomTabsClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/b$a;->o4(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/os/Bundle;

.field final synthetic f:Landroidx/browser/customtabs/b$a;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/b$a;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/browser/customtabs/b$a$b;->f:Landroidx/browser/customtabs/b$a;

    iput-object p2, p0, Landroidx/browser/customtabs/b$a$b;->d:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/b$a$b;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/b$a$b;->f:Landroidx/browser/customtabs/b$a;

    iget-object v0, v0, Landroidx/browser/customtabs/b$a;->e:Landroidx/browser/customtabs/a;

    iget-object v1, p0, Landroidx/browser/customtabs/b$a$b;->d:Ljava/lang/String;

    iget-object v2, p0, Landroidx/browser/customtabs/b$a$b;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
