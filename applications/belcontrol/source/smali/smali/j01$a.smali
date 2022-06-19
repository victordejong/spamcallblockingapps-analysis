.class public Lj01$a;
.super Lve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lve<",
        "Ljava/util/List<",
        "Lkq0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic k:Lj01;


# direct methods
.method public constructor <init>(Lj01;)V
    .locals 0

    iput-object p1, p0, Lj01$a;->k:Lj01;

    invoke-direct {p0}, Lve;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->h()V

    iget-object v0, p0, Lj01$a;->k:Lj01;

    invoke-static {v0}, Lj01;->m(Lj01;)V

    return-void
.end method
