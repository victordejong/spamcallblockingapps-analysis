.class public abstract La5;
.super Lt4;
.source ""


# instance fields
.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt4;-><init>()V

    sget v0, Lt4;->e:I

    iput v0, p0, La5;->f:I

    return-void
.end method


# virtual methods
.method public b(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
