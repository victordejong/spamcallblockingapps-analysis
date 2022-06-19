.class public Ln7/k;
.super Ll7/c$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln7/j;


# direct methods
.method public constructor <init>(Ln7/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/k;->a:Ln7/j;

    invoke-direct {p0}, Ll7/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lk7/m;Lk7/l;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lk7/l;->n()V

    .line 2
    iget-object p1, p0, Ln7/k;->a:Ln7/j;

    .line 3
    iget-object p1, p1, Ln7/j;->j:Lk7/j;

    .line 4
    invoke-interface {p1}, Lk7/m;->close()V

    return-void
.end method
