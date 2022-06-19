.class public Ld2/u1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/u1;->a(Ld2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:F

.field public final synthetic d:Ld2/u1;


# direct methods
.method public constructor <init>(Ld2/u1;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/u1$a;->d:Ld2/u1;

    iput-object p2, p0, Ld2/u1$a;->a:Ljava/lang/String;

    iput-object p3, p0, Ld2/u1$a;->b:Ljava/lang/String;

    iput p4, p0, Ld2/u1$a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/u1$a;->a:Ljava/lang/String;

    iget-object v1, p0, Ld2/u1$a;->d:Ld2/u1;

    iget-object v1, v1, Ld2/u1;->a:Ld2/t1;

    .line 2
    iget-object v1, v1, Ld2/t1;->o:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ld2/u1$a;->d:Ld2/u1;

    iget-object v0, v0, Ld2/u1;->a:Ld2/t1;

    iget-object v1, p0, Ld2/u1$a;->b:Ljava/lang/String;

    iget v2, p0, Ld2/u1$a;->c:F

    invoke-virtual {v0, v1, v2}, Ld2/t1;->c(Ljava/lang/String;F)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->l()Ld2/k0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Ld2/k0;->f:Ljava/util/Map;

    .line 7
    iget-object v1, p0, Ld2/u1$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/j;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ld2/j;->getOmidManager()Ld2/t1;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Ld2/u1$a;->b:Ljava/lang/String;

    iget v2, p0, Ld2/u1$a;->c:F

    invoke-virtual {v0, v1, v2}, Ld2/t1;->c(Ljava/lang/String;F)V

    :cond_2
    :goto_1
    return-void
.end method
