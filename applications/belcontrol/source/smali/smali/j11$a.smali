.class public Lj11$a;
.super Lve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj11;
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
.field public final synthetic k:Lj11;


# direct methods
.method public constructor <init>(Lj11;)V
    .locals 0

    iput-object p1, p0, Lj11$a;->k:Lj11;

    invoke-direct {p0}, Lve;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->h()V

    iget-object v0, p0, Lj11$a;->k:Lj11;

    invoke-static {v0}, Lj11;->m(Lj11;)V

    return-void
.end method
