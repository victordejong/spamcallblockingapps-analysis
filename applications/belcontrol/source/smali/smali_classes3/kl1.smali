.class public final Lkl1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lbl1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbl1<",
        "Lwk1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public final d:Lkk1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkk1<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkj1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkk1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lkk1<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkj1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lqk1;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl1;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lkl1;->b:I

    iput p3, p0, Lkl1;->c:I

    iput-object p4, p0, Lkl1;->d:Lkk1;

    return-void
.end method

.method public static final synthetic a(Lkl1;)Lkk1;
    .locals 0

    iget-object p0, p0, Lkl1;->d:Lkk1;

    return-object p0
.end method

.method public static final synthetic b(Lkl1;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lkl1;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lkl1;)I
    .locals 0

    iget p0, p0, Lkl1;->c:I

    return p0
.end method

.method public static final synthetic d(Lkl1;)I
    .locals 0

    iget p0, p0, Lkl1;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lwk1;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkl1$a;

    invoke-direct {v0, p0}, Lkl1$a;-><init>(Lkl1;)V

    return-object v0
.end method
