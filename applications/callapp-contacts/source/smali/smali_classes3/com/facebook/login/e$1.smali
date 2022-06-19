.class final Lcom/facebook/login/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/login/LoginClient$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/e;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/login/e;


# direct methods
.method constructor <init>(Lcom/facebook/login/e;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/facebook/login/e$1;->a:Lcom/facebook/login/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/login/LoginClient$Result;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/facebook/login/e$1;->a:Lcom/facebook/login/e;

    invoke-static {v0, p1}, Lcom/facebook/login/e;->a(Lcom/facebook/login/e;Lcom/facebook/login/LoginClient$Result;)V

    return-void
.end method
