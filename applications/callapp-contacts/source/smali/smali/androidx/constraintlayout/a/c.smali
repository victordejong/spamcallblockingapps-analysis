.class public final Landroidx/constraintlayout/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/constraintlayout/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/a/f$a<",
            "Landroidx/constraintlayout/a/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroidx/constraintlayout/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/a/f$a<",
            "Landroidx/constraintlayout/a/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroidx/constraintlayout/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/constraintlayout/a/f$a<",
            "Landroidx/constraintlayout/a/h;",
            ">;"
        }
    .end annotation
.end field

.field d:[Landroidx/constraintlayout/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/constraintlayout/a/f$b;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/f$b;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/a/c;->a:Landroidx/constraintlayout/a/f$a;

    .line 23
    new-instance v0, Landroidx/constraintlayout/a/f$b;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/f$b;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/a/c;->b:Landroidx/constraintlayout/a/f$a;

    .line 24
    new-instance v0, Landroidx/constraintlayout/a/f$b;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/a/f$b;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/a/c;->c:Landroidx/constraintlayout/a/f$a;

    const/16 v0, 0x20

    new-array v0, v0, [Landroidx/constraintlayout/a/h;

    .line 25
    iput-object v0, p0, Landroidx/constraintlayout/a/c;->d:[Landroidx/constraintlayout/a/h;

    return-void
.end method
