.class public final Lk7/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/f;


# instance fields
.field public final synthetic a:Lk7/o;

.field public final synthetic b:Lk7/l;

.field public final synthetic c:Ll7/a;


# direct methods
.method public constructor <init>(Lk7/o;Lk7/l;Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/z;->a:Lk7/o;

    iput-object p2, p0, Lk7/z;->b:Lk7/l;

    iput-object p3, p0, Lk7/z;->c:Ll7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/z;->a:Lk7/o;

    iget-object v1, p0, Lk7/z;->b:Lk7/l;

    invoke-interface {v0, v1}, Lk7/o;->k(Lk7/l;)V

    .line 2
    iget-object v0, p0, Lk7/z;->b:Lk7/l;

    .line 3
    iget v0, v0, Lk7/l;->c:I

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk7/z;->c:Ll7/a;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lk7/z;->a:Lk7/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lk7/o;->m(Ll7/f;)V

    .line 6
    iget-object v0, p0, Lk7/z;->c:Ll7/a;

    invoke-interface {v0, v1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
