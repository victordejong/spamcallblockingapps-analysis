.class final Landroidx/browser/customtabs/c$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/browser/customtabs/c$2;->a(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroidx/browser/customtabs/c$2;


# direct methods
.method constructor <init>(Landroidx/browser/customtabs/c$2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 343
    iput-object p1, p0, Landroidx/browser/customtabs/c$2$2;->c:Landroidx/browser/customtabs/c$2;

    iput-object p2, p0, Landroidx/browser/customtabs/c$2$2;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/browser/customtabs/c$2$2;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 346
    iget-object v0, p0, Landroidx/browser/customtabs/c$2$2;->c:Landroidx/browser/customtabs/c$2;

    iget-object v0, v0, Landroidx/browser/customtabs/c$2;->a:Landroidx/browser/customtabs/b;

    iget-object v1, p0, Landroidx/browser/customtabs/c$2$2;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/browser/customtabs/c$2$2;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/b;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
