.class Lb/h/l/e0$l;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/l/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final a:Lb/h/l/e0;


# instance fields
.field final b:Lb/h/l/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/h/l/e0$b;

    invoke-direct {v0}, Lb/h/l/e0$b;-><init>()V

    .line 2
    invoke-virtual {v0}, Lb/h/l/e0$b;->a()Lb/h/l/e0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lb/h/l/e0;->a()Lb/h/l/e0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lb/h/l/e0;->b()Lb/h/l/e0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lb/h/l/e0;->c()Lb/h/l/e0;

    move-result-object v0

    sput-object v0, Lb/h/l/e0$l;->a:Lb/h/l/e0;

    return-void
.end method

.method constructor <init>(Lb/h/l/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/h/l/e0$l;->b:Lb/h/l/e0;

    return-void
.end method


# virtual methods
.method a()Lb/h/l/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$l;->b:Lb/h/l/e0;

    return-object v0
.end method

.method b()Lb/h/l/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$l;->b:Lb/h/l/e0;

    return-object v0
.end method

.method c()Lb/h/l/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0$l;->b:Lb/h/l/e0;

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method e(Lb/h/l/e0;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lb/h/l/e0$l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lb/h/l/e0$l;

    .line 3
    invoke-virtual {p0}, Lb/h/l/e0$l;->o()Z

    move-result v1

    invoke-virtual {p1}, Lb/h/l/e0$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lb/h/l/e0$l;->n()Z

    move-result v1

    invoke-virtual {p1}, Lb/h/l/e0$l;->n()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v1

    invoke-virtual {p1}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v3

    invoke-static {v1, v3}, Lb/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lb/h/l/e0$l;->i()Lb/h/e/b;

    move-result-object v1

    invoke-virtual {p1}, Lb/h/l/e0$l;->i()Lb/h/e/b;

    move-result-object v3

    invoke-static {v1, v3}, Lb/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lb/h/l/e0$l;->f()Lb/h/l/d;

    move-result-object v1

    invoke-virtual {p1}, Lb/h/l/e0$l;->f()Lb/h/l/d;

    move-result-object p1

    invoke-static {v1, p1}, Lb/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method f()Lb/h/l/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method g(I)Lb/h/e/b;
    .locals 0

    .line 1
    sget-object p1, Lb/h/e/b;->a:Lb/h/e/b;

    return-object p1
.end method

.method h()Lb/h/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Lb/h/l/e0$l;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/l/e0$l;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-virtual {p0}, Lb/h/l/e0$l;->i()Lb/h/e/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lb/h/l/e0$l;->f()Lb/h/l/d;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Lb/h/k/c;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method i()Lb/h/e/b;
    .locals 1

    .line 1
    sget-object v0, Lb/h/e/b;->a:Lb/h/e/b;

    return-object v0
.end method

.method j()Lb/h/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method k()Lb/h/e/b;
    .locals 1

    .line 1
    sget-object v0, Lb/h/e/b;->a:Lb/h/e/b;

    return-object v0
.end method

.method l()Lb/h/e/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method m(IIII)Lb/h/l/e0;
    .locals 0

    .line 1
    sget-object p1, Lb/h/l/e0$l;->a:Lb/h/l/e0;

    return-object p1
.end method

.method n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p([Lb/h/e/b;)V
    .locals 0

    return-void
.end method

.method q(Lb/h/e/b;)V
    .locals 0

    return-void
.end method

.method r(Lb/h/l/e0;)V
    .locals 0

    return-void
.end method

.method public s(Lb/h/e/b;)V
    .locals 0

    return-void
.end method
