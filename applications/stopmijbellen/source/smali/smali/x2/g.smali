.class public final Lx2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll9/a;"
    }
.end annotation


# instance fields
.field public final a:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Lz2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Ly2/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ll9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll9/a<",
            "Lb3/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll9/a;Ll9/a;Ll9/a;Ll9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll9/a<",
            "Landroid/content/Context;",
            ">;",
            "Ll9/a<",
            "Lz2/c;",
            ">;",
            "Ll9/a<",
            "Ly2/e;",
            ">;",
            "Ll9/a<",
            "Lb3/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx2/g;->a:Ll9/a;

    .line 3
    iput-object p2, p0, Lx2/g;->b:Ll9/a;

    .line 4
    iput-object p3, p0, Lx2/g;->c:Ll9/a;

    .line 5
    iput-object p4, p0, Lx2/g;->d:Ll9/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lx2/g;->a:Ll9/a;

    invoke-interface {v0}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lx2/g;->b:Ll9/a;

    invoke-interface {v1}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/c;

    iget-object v2, p0, Lx2/g;->c:Ll9/a;

    invoke-interface {v2}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly2/e;

    iget-object v3, p0, Lx2/g;->d:Ll9/a;

    invoke-interface {v3}, Ll9/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/a;

    .line 2
    new-instance v3, Ly2/c;

    invoke-direct {v3, v0, v1, v2}, Ly2/c;-><init>(Landroid/content/Context;Lz2/c;Ly2/e;)V

    return-object v3
.end method
