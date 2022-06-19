.class public Ln7/u;
.super Ll7/c$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk7/j;


# direct methods
.method public constructor <init>(Ln7/s;Lk7/j;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln7/u;->a:Lk7/j;

    invoke-direct {p0}, Ll7/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lk7/l;->n()V

    .line 2
    invoke-virtual {p2}, Lk7/l;->n()V

    .line 3
    iget-object p1, p0, Ln7/u;->a:Lk7/j;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lk7/o;->g(Ll7/a;)V

    .line 4
    iget-object p1, p0, Ln7/u;->a:Lk7/j;

    invoke-interface {p1}, Lk7/m;->close()V

    return-void
.end method
