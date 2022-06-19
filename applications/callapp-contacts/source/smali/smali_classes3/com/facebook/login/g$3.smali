.class public final Lcom/facebook/login/g$3;
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
.field final synthetic a:Lcom/facebook/login/g;


# direct methods
.method public constructor <init>(Lcom/facebook/login/g;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/facebook/login/g$3;->a:Lcom/facebook/login/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/facebook/login/g$3;->a:Lcom/facebook/login/g;

    const/4 v1, 0x0

    .line 1201
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/g;->a(ILandroid/content/Intent;Lcom/facebook/f;)Z

    move-result p1

    return p1
.end method
