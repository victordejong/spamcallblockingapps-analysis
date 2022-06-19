.class final Lcom/facebook/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/s;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/GraphRequest$d;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/facebook/s;


# direct methods
.method constructor <init>(Lcom/facebook/s;Lcom/facebook/GraphRequest$d;JJ)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/facebook/s$1;->d:Lcom/facebook/s;

    iput-object p2, p0, Lcom/facebook/s$1;->a:Lcom/facebook/GraphRequest$d;

    iput-wide p3, p0, Lcom/facebook/s$1;->b:J

    iput-wide p5, p0, Lcom/facebook/s$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
