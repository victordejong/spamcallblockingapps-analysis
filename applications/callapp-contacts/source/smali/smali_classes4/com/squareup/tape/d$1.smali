.class final Lcom/squareup/tape/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/tape/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/tape/d;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/StringBuilder;

.field final synthetic c:Lcom/squareup/tape/d;


# direct methods
.method constructor <init>(Lcom/squareup/tape/d;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/squareup/tape/d$1;->c:Lcom/squareup/tape/d;

    iput-object p2, p0, Lcom/squareup/tape/d$1;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 541
    iput-boolean p1, p0, Lcom/squareup/tape/d$1;->a:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    iget-boolean v0, p0, Lcom/squareup/tape/d$1;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lcom/squareup/tape/d$1;->a:Z

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape/d$1;->b:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :goto_0
    iget-object v0, p0, Lcom/squareup/tape/d$1;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
