.class Lcom/facebook/login/m$a;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    const-string/jumbo v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iput-object p1, p0, Lcom/facebook/login/m$a;->a:Landroid/app/Activity;

    .line 910
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/facebook/login/m$a;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/facebook/login/m$a;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 915
    return-void
.end method
