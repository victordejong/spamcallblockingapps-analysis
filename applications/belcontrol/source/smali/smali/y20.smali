.class public Ly20;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Landroid/view/View;",
            "Lx20;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le4<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    iput-object v0, p0, Ly20;->a:Lb4;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ly20;->b:Landroid/util/SparseArray;

    new-instance v0, Le4;

    invoke-direct {v0}, Le4;-><init>()V

    iput-object v0, p0, Ly20;->c:Le4;

    new-instance v0, Lb4;

    invoke-direct {v0}, Lb4;-><init>()V

    iput-object v0, p0, Ly20;->d:Lb4;

    return-void
.end method
