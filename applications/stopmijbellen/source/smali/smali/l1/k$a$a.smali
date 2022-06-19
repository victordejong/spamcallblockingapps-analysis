.class public Ll1/k$a$a;
.super Ll1/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll1/k$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls/a;

.field public final synthetic b:Ll1/k$a;


# direct methods
.method public constructor <init>(Ll1/k$a;Ls/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/k$a$a;->b:Ll1/k$a;

    iput-object p2, p0, Ll1/k$a$a;->a:Ls/a;

    invoke-direct {p0}, Ll1/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ll1/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll1/k$a$a;->a:Ls/a;

    iget-object v1, p0, Ll1/k$a$a;->b:Ll1/k$a;

    iget-object v1, v1, Ll1/k$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ls/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Ll1/g;->v(Ll1/g$d;)Ll1/g;

    return-void
.end method
