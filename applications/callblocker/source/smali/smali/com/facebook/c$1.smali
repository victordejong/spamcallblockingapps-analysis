.class Lcom/facebook/c$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/c;->a(Lcom/facebook/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a$a;

.field final synthetic b:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;Lcom/facebook/a$a;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/facebook/c$1;->b:Lcom/facebook/c;

    iput-object p2, p0, Lcom/facebook/c$1;->a:Lcom/facebook/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/c$1;->b:Lcom/facebook/c;

    iget-object v1, p0, Lcom/facebook/c$1;->a:Lcom/facebook/a$a;

    invoke-static {v0, v1}, Lcom/facebook/c;->a(Lcom/facebook/c;Lcom/facebook/a$a;)V

    .line 245
    return-void
.end method
