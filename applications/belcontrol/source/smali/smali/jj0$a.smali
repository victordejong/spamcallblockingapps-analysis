.class public Ljj0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljj0;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/GraphRequest$g;

.field public final synthetic b:J

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Ljj0;Lcom/facebook/GraphRequest$g;JJ)V
    .locals 0

    iput-object p2, p0, Ljj0$a;->a:Lcom/facebook/GraphRequest$g;

    iput-wide p3, p0, Ljj0$a;->b:J

    iput-wide p5, p0, Ljj0$a;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ljj0$a;->a:Lcom/facebook/GraphRequest$g;

    iget-wide v1, p0, Ljj0$a;->b:J

    iget-wide v3, p0, Ljj0$a;->c:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/GraphRequest$g;->a(JJ)V

    return-void
.end method
