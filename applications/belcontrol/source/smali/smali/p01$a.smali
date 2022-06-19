.class public Lp01$a;
.super Lve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp01;
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
.field public final synthetic k:Lp01;


# direct methods
.method public constructor <init>(Lp01;)V
    .locals 0

    iput-object p1, p0, Lp01$a;->k:Lp01;

    invoke-direct {p0}, Lve;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->h()V

    iget-object v0, p0, Lp01$a;->k:Lp01;

    invoke-static {v0}, Lp01;->m(Lp01;)V

    return-void
.end method
