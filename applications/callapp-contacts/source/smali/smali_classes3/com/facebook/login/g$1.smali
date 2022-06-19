.class public final Lcom/facebook/login/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/f;

.field final synthetic b:Lcom/facebook/login/g;


# direct methods
.method public constructor <init>(Lcom/facebook/login/g;Lcom/facebook/f;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/facebook/login/g$1;->b:Lcom/facebook/login/g;

    iput-object p2, p0, Lcom/facebook/login/g$1;->a:Lcom/facebook/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/facebook/login/g$1;->b:Lcom/facebook/login/g;

    iget-object v1, p0, Lcom/facebook/login/g$1;->a:Lcom/facebook/f;

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/g;->a(ILandroid/content/Intent;Lcom/facebook/f;)Z

    move-result p1

    return p1
.end method
