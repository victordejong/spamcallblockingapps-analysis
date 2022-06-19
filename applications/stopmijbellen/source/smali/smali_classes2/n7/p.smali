.class public final synthetic Ln7/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm7/d;


# instance fields
.field public final synthetic a:Ln7/s;

.field public final synthetic b:Ln7/g$a;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ln7/s;Ln7/g$a;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/p;->a:Ln7/s;

    iput-object p2, p0, Ln7/p;->b:Ln7/g$a;

    iput-object p3, p0, Ln7/p;->c:Landroid/net/Uri;

    iput p4, p0, Ln7/p;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Ln7/p;->a:Ln7/s;

    iget-object v1, p0, Ln7/p;->b:Ln7/g$a;

    iget-object v2, p0, Ln7/p;->c:Landroid/net/Uri;

    iget v3, p0, Ln7/p;->d:I

    check-cast p2, Lk7/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    if-nez p1, :cond_1

    const/4 v4, 0x0

    .line 1
    iget-object v5, v1, Ln7/g$a;->c:Ll7/b;

    invoke-virtual/range {v0 .. v5}, Ln7/s;->o(Ln7/g$a;Landroid/net/Uri;IZLl7/b;)Ll7/b;

    move-result-object p1

    invoke-interface {p1, v6, p2}, Ll7/b;->a(Ljava/lang/Exception;Lk7/j;)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, v1, Ln7/g$e;->b:Ln7/h;

    const-string v2, "Recycling extra socket leftover from cancelled operation"

    invoke-virtual {p1, v2}, Ln7/h;->b(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ln7/t;

    invoke-direct {p1, v0, p2}, Ln7/t;-><init>(Ln7/s;Lk7/j;)V

    invoke-interface {p2, p1}, Lk7/m;->h(Ll7/a;)V

    .line 4
    invoke-interface {p2, v6}, Lk7/o;->m(Ll7/f;)V

    .line 5
    new-instance p1, Ln7/u;

    invoke-direct {p1, v0, p2}, Ln7/u;-><init>(Ln7/s;Lk7/j;)V

    invoke-interface {p2, p1}, Lk7/m;->b(Ll7/c;)V

    .line 6
    iget-object p1, v1, Ln7/g$e;->b:Ln7/h;

    invoke-virtual {v0, p2, p1}, Ln7/s;->n(Lk7/j;Ln7/h;)V

    :goto_0
    return-void
.end method
