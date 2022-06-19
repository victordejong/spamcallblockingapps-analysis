.class public La31$a;
.super Lve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La31;
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
.field public final synthetic k:La31;


# direct methods
.method public constructor <init>(La31;)V
    .locals 0

    iput-object p1, p0, La31$a;->k:La31;

    invoke-direct {p0}, Lve;-><init>()V

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    invoke-super {p0}, Landroidx/lifecycle/LiveData;->h()V

    iget-object v0, p0, La31$a;->k:La31;

    invoke-static {v0}, La31;->m(La31;)V

    return-void
.end method
