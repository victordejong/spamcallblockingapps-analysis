.class final Lkotlin/i/e;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Lkotlin/h/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/h/b<",
        "Lkotlin/f/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lkotlin/e/a/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/m<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lkotlin/i<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILkotlin/e/a/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lkotlin/e/a/m<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/i<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/i/e;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lkotlin/i/e;->b:I

    iput p3, p0, Lkotlin/i/e;->c:I

    iput-object p4, p0, Lkotlin/i/e;->d:Lkotlin/e/a/m;

    return-void
.end method

.method public static final synthetic a(Lkotlin/i/e;)I
    .locals 0

    .line 1072
    iget p0, p0, Lkotlin/i/e;->c:I

    return p0
.end method

.method public static final synthetic b(Lkotlin/i/e;)Ljava/lang/CharSequence;
    .locals 0

    .line 1072
    iget-object p0, p0, Lkotlin/i/e;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lkotlin/i/e;)Lkotlin/e/a/m;
    .locals 0

    .line 1072
    iget-object p0, p0, Lkotlin/i/e;->d:Lkotlin/e/a/m;

    return-object p0
.end method

.method public static final synthetic d(Lkotlin/i/e;)I
    .locals 0

    .line 1072
    iget p0, p0, Lkotlin/i/e;->b:I

    return p0
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/f/c;",
            ">;"
        }
    .end annotation

    .line 1079
    new-instance v0, Lkotlin/i/e$a;

    invoke-direct {v0, p0}, Lkotlin/i/e$a;-><init>(Lkotlin/i/e;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
