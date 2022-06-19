.class public Lv/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lv/d;

.field public b:Lv/d;

.field public c:Lv/d;

.field public d:Lv/d;

.field public e:Lv/d;

.field public f:Lv/d;

.field public g:Lv/d;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lv/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lv/d;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lv/b;->k:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lv/b;->p:Z

    .line 4
    iput-object p1, p0, Lv/b;->a:Lv/d;

    .line 5
    iput p2, p0, Lv/b;->o:I

    .line 6
    iput-boolean p3, p0, Lv/b;->p:Z

    return-void
.end method
