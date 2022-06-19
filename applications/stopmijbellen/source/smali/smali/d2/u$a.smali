.class public Ld2/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(Ld2/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/u$a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->p()Ld2/h0;

    move-result-object v1

    iget v2, p1, Ld2/u;->a:I

    iget-boolean p1, p1, Ld2/u;->b:Z

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v1, v3, v2, v0, p1}, Ld2/h0;->e(IILjava/lang/String;Z)V

    return-void
.end method
