.class final Lcom/facebook/share/internal/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/a;->a(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/facebook/share/internal/a$1;->a:I

    iput p2, p0, Lcom/facebook/share/internal/a$1;->b:I

    iput-object p3, p0, Lcom/facebook/share/internal/a$1;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/share/internal/a;Lcom/facebook/FacebookException;)V
    .locals 2

    if-nez p2, :cond_0

    .line 196
    iget p2, p0, Lcom/facebook/share/internal/a$1;->a:I

    iget v0, p0, Lcom/facebook/share/internal/a$1;->b:I

    iget-object v1, p0, Lcom/facebook/share/internal/a$1;->c:Landroid/content/Intent;

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/share/internal/a;->a(Lcom/facebook/share/internal/a;IILandroid/content/Intent;)V

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lcom/facebook/share/internal/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
