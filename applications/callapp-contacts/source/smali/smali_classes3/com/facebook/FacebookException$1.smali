.class final Lcom/facebook/FacebookException$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/FacebookException;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/facebook/FacebookException$1;->b:Lcom/facebook/FacebookException;

    iput-object p2, p0, Lcom/facebook/FacebookException$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    :try_start_0
    iget-object p1, p0, Lcom/facebook/FacebookException$1;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/b/c/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
