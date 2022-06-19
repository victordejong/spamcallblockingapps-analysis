.class Lcom/facebook/login/c$6;
.super Ljava/lang/Object;
.source "DeviceAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/c;->a(Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/internal/x$b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Date;

.field final synthetic e:Ljava/util/Date;

.field final synthetic f:Lcom/facebook/login/c;


# direct methods
.method constructor <init>(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/facebook/login/c$6;->f:Lcom/facebook/login/c;

    iput-object p2, p0, Lcom/facebook/login/c$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/c$6;->b:Lcom/facebook/internal/x$b;

    iput-object p4, p0, Lcom/facebook/login/c$6;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/login/c$6;->d:Ljava/util/Date;

    iput-object p6, p0, Lcom/facebook/login/c$6;->e:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    .line 368
    iget-object v0, p0, Lcom/facebook/login/c$6;->f:Lcom/facebook/login/c;

    iget-object v1, p0, Lcom/facebook/login/c$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/c$6;->b:Lcom/facebook/internal/x$b;

    iget-object v3, p0, Lcom/facebook/login/c$6;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/login/c$6;->d:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/login/c$6;->e:Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/c;->a(Lcom/facebook/login/c;Ljava/lang/String;Lcom/facebook/internal/x$b;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 374
    return-void
.end method
