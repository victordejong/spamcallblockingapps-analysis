.class public Lep0$f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lem0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lep0$f;->e(Lcom/facebook/share/model/ShareContent;)Lyl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyl0;

.field public final synthetic b:Lcom/facebook/share/model/ShareContent;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lep0$f;Lyl0;Lcom/facebook/share/model/ShareContent;Z)V
    .locals 0

    iput-object p2, p0, Lep0$f$a;->a:Lyl0;

    iput-object p3, p0, Lep0$f$a;->b:Lcom/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lep0$f$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lep0$f$a;->a:Lyl0;

    invoke-virtual {v0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lep0$f$a;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lep0$f$a;->c:Z

    invoke-static {v0, v1, v2}, Lmo0;->e(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lep0$f$a;->a:Lyl0;

    invoke-virtual {v0}, Lyl0;->b()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lep0$f$a;->b:Lcom/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lep0$f$a;->c:Z

    invoke-static {v0, v1, v2}, Luo0;->k(Ljava/util/UUID;Lcom/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
